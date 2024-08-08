<?php

namespace App\Http\Controllers\Admin;

use App\Models\Fee;
use App\Models\Expense;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class ReportsController extends Controller
{
    public function fee_reports()
    {
        return view('content.apps.reports.fee_report');
    }

    public function fee_reports_bydate(Request $request)
    {
        $request->validate([
            'fee_month' => 'required|date_format:Y-m',
        ]);

        $feeMonth = $request->input('fee_month');

        if ($feeMonth) {
            $startDate = Carbon::createFromFormat('Y-m', $feeMonth)->startOfMonth();
            $endDate = Carbon::createFromFormat('Y-m', $feeMonth)->endOfMonth();

            $year = $startDate->year;
            $month = $startDate->month;


            $dailyFees = Fee::whereYear('fee_date', $year)
                ->whereMonth('fee_date', $month)
                ->with(['registration.room', 'registration.floor'])
                ->orderBy('fee_date')
                ->get(['fee_date', 'amount', 'registration_id', 'paid_amount', 'status'])
                ->map(function ($fee) {
                    return [
                        'fee_date' => $fee->fee_date,
                        'floor_name' => $fee->registration->floor->floor_name ?? 'N/A',
                        'room_name' => $fee->registration->room->room_name ?? 'N/A',
                        'registration_name' => $fee->registration->name ?? 'N/A',
                        'amount' => $fee->amount,
                        'paid_amount' => $fee->paid_amount,
                        'status' => $fee->status,
                    ];
                });


            $dailyExpenses = Expense::whereYear('paying_date', $year)
                ->whereMonth('paying_date', $month)
                ->orderBy('paying_date')
                ->get(['paying_date', 'amount', 'description'])
                ->map(function ($expense) {
                    return [
                        'expense_date' => $expense->paying_date,
                        'amount' => $expense->amount,
                        'description' => $expense->description,
                    ];
                });


            $unpaidFees = Fee::whereYear('fee_date', $year)
                ->whereMonth('fee_date', $month)
                ->where('status', 'unpaid')
                ->get(['amount']);
            $totalUnpaidAmount = $unpaidFees->sum('amount');

            $partialPaymentFees = Fee::whereYear('fee_date', $year)
                ->whereMonth('fee_date', $month)
                ->where('status', 'partial-payment')
                ->get(['amount', 'paid_amount']);
            $adjustedPartialPayments = $partialPaymentFees->sum(function ($fee) {
                return $fee->amount - $fee->paid_amount;
            });
            $duesPayment = $totalUnpaidAmount + $adjustedPartialPayments;


            $creditTransactions = Transaction::whereYear('transection_date', $year)
                ->whereMonth('transection_date', $month)
                ->where('transection_type', 1)
                ->where('type', 'credit')
                ->get(['amount']);
            $totalTransactionAmount = $creditTransactions->sum('amount');


            $staffTransactions = Transaction::whereYear('transection_date', $year)
                ->whereMonth('transection_date', $month)
                ->where('transection_type', 3)
                ->where('type', 'debit')
                ->get(['transection_date', 'amount', 'description'])
                ->map(function ($transaction) {
                    return [
                        'transection_date' => $transaction->transection_date,
                        'amount' => $transaction->amount,
                        'description' => $transaction->description,
                    ];
                });

            $totalTransactionAmount = $creditTransactions->sum('amount');


            $debitTransactions = Transaction::whereYear('transection_date', $year)
                ->whereMonth('transection_date', $month)

                ->where('type', 'debit')
                ->get(['amount']);
            $totalDebitAmount = $debitTransactions->sum('amount');


            $totalAmount = $duesPayment + $totalTransactionAmount;

            return response()->json([
                'daily_fees' => $dailyFees,
                'daily_expenses' => $dailyExpenses,
                'dues_payment' => $duesPayment,
                'staff_transactions' => $staffTransactions,
                'total_transaction_amount' => $totalTransactionAmount,
                'total_debit_amount' => $totalDebitAmount,
                'total_amount' => $totalAmount,
            ]);
        }

        return response()->json(['error' => 'Invalid request'], 400);
    }




    public function expense_reports()
    {
        return view('content.apps.reports.expense_report');
    }

    public function expense_reports_bydate(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
        ]);

        $expenses = Transaction::where('transection_type', 2)
            ->whereBetween('transection_date', [$request->start_date, $request->end_date])
            ->get(['amount']);

        $totalExpenseAmount = $expenses->sum('amount');

        return response()->json([
            'total_expense_amount' => $totalExpenseAmount,
        ]);
    }

    public function profit_loss_reports()
    {
        return view('content.apps.reports.profit_loss_report');
    }

    public function profit_loss_reports_bydate(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
        ]);

        $totalCredits = DB::table('transactions')
            ->where('type', 'credit')
            ->whereBetween('transection_date', [$request->start_date, $request->end_date])
            ->sum('amount');

        $totalDebits = DB::table('transactions')
            ->where('type', 'debit')
            ->whereBetween('transection_date', [$request->start_date, $request->end_date])
            ->sum('amount');

        $result = $totalCredits - $totalDebits;
        $status = $result > 0 ? 'Profit' : ($result < 0 ? 'Loss' : 'No Profit No Loss');

        return response()->json([
            'total_credits' => $totalCredits,
            'total_debits' => $totalDebits,

            'result' => $result,
            'status' => $status
        ]);
    }
}