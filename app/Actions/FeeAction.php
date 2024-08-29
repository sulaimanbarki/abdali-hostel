<?php

namespace App\Actions;

use App\Models\Fee;
use App\Models\Transaction;
use App\Models\Registration;
use Illuminate\Support\Carbon;

class FeeAction
{
    public function generateFeesForMonth($feeMonth)
    {
        $activeRegistrations = Registration::where('status', 1)->get();

        foreach ($activeRegistrations as $registration) {
            $feeExists = Fee::where('registration_id', $registration->id)
                ->where('fee_date', $feeMonth)
                ->exists();

            if (!$feeExists) {
                Fee::create([
                    'registration_id' => $registration->id,
                    'fee_date' => $feeMonth,
                    'amount' => $registration->amount,
                    'paid_amount' => 0, // default unpaid
                    'status' => 'unpaid',
                ]);
            }
        }
    }

    public function updateFeeStatusAndTransaction($fee, $paidAmount)
    {
        if ($paidAmount < 0) {
            throw new \Exception('Paid amount cannot be negative.');
        }

        $remainingAmount = $paidAmount;

        // Pay the current fee first
        if ($remainingAmount >= $fee->amount) {
            $remainingAmount -= ($fee->amount - $fee->paid_amount);
            $fee->paid_amount = $fee->amount;
            $fee->status = 'paid';
        } else {
            $fee->paid_amount += $remainingAmount;
            $remainingAmount = 0;
            $fee->status = $fee->paid_amount == $fee->amount ? 'paid' : 'partial-payment';
        }


        $fee->save();
        $feeMonth = $fee->fee_date->format('Y-m');
        $currentMonth = now()->format('Y-m');

        $transactionDate = $feeMonth === $currentMonth ? now() : $fee->fee_date;


        Transaction::updateOrCreate(
            [
                'transection_type' => 1, // Type of transaction, assuming 1 for fee payments
                'transection_type_id' => $fee->id
            ],
            [
                'amount' => $paidAmount,
                'transection_date' => $transactionDate,
                'description' => 'Fee payment for fee ID ' . $fee->id . '. Paid amount: ' . $paidAmount,
                'type' => 'credit', // Type of transaction, assuming 'credit' for payments
                'status' => 'completed' // Adjust if needed
            ]
        );

        // Apply remaining amount to other unpaid or partially paid fees
        if ($remainingAmount > 0) {
            $this->applyRemainingAmountToOtherFees($fee->registration_id, $remainingAmount);
        }

        return $fee;
    }

    protected function applyRemainingAmountToOtherFees($registrationId, $remainingAmount)
    {
        $fees = Fee::where('registration_id', $registrationId)
            ->whereIn('status', ['unpaid', 'partial-payment'])
            ->orderBy('fee_date', 'asc')
            ->get();

        foreach ($fees as $fee) {
            if ($remainingAmount <= 0) {
                break;
            }

            $amountNeeded = $fee->amount - $fee->paid_amount;

            if ($remainingAmount >= $amountNeeded) {
                $fee->paid_amount = $fee->amount;
                $fee->status = 'paid';
                $remainingAmount -= $amountNeeded;
            } else {
                $fee->paid_amount += $remainingAmount;
                $fee->status = 'partial-payment';
                $remainingAmount = 0;
            }

            $fee->save();

            Transaction::updateOrCreate(
                [
                    'transection_type' => 1, // Type of transaction, assuming 1 for fee payments
                    'transection_type_id' => $fee->id
                ],
                [
                    'amount' => $fee->paid_amount,
                    'transection_date' => now(),
                    'description' => 'Fee payment for fee ID ' . $fee->id . '. Paid amount: ' . $fee->paid_amount,
                    'type' => 'credit', // Type of transaction, assuming 'credit' for payments
                    'status' => 'completed' // Adjust if needed
                ]
            );
        }
    }
}
