<?php

namespace App\Http\Controllers\Admin;

use DataTables;
use App\Models\Fee;
use App\Models\Transaction;
use App\Models\Registration;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;


class FeeController extends Controller
{
    public function index(Request $request)
    {
        $query = Fee::with('registration', 'room', 'floor')->orderBy('id', 'DESC');

        if ($request->has('fee_month')) {
            $fee_month = $request->input('fee_month');
            $query->whereYear('fee_date', '=', date('Y', strtotime($fee_month)))
                ->whereMonth('fee_date', '=', date('m', strtotime($fee_month)));
        }

        if ($request->has('ajax')) {
            return Datatables::of($query)->make(true);
        }

        $fees = $query->get();
        return view('content.apps.fees.index', compact('fees'));
    }



    public function store(Request $request)
    {
        $request->validate([
            'fee_month' => 'required|date_format:Y-m',
        ]);

        $feeMonth = Carbon::createFromFormat('Y-m', $request->fee_month)->startOfMonth();

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

        return redirect()->route('fees.index')->with('success', 'Fees generated successfully.');
    }

    public function show($id)
    {
        $fee = Fee::with('registration', 'room', 'floor')->findOrFail($id);
        return response()->json($fee);
    }

    public function pay_fees(Request $request)
    {
        $request->validate([
            'fee_id' => 'required|exists:fees,id',
            'paid_amount' => 'required|numeric|min:0'
        ]);

        $fee = Fee::findOrFail($request->input('fee_id'));

        if ($request->input('paid_amount') > $fee->amount) {
            return redirect()->route('fees.index')->with('error', 'Paid amount cannot be greater than the total amount.');
        }

        $fee->paid_amount = $request->input('paid_amount');

        if ($fee->paid_amount < $fee->amount) {
            $fee->status = 'partial-payment';
        } else {
            $fee->status = 'paid'; // Assuming you have a 'paid' status for fully paid fees
        }

        $fee->save();

        Transaction::updateOrCreate(
            [
                'transection_type' => 1, // Type of transaction, assuming 1 for fee payments
                'transection_type_id' => $fee->id
            ],
            [
                'amount' => $request->input('paid_amount'),
                'transection_date' => now(),
                'description' => 'Fee payment for fee ID ' . $fee->id . '. Paid amount: ' . $request->input('paid_amount'),
                'type' => 'credit', // Type of transaction, assuming 'credit' for payments
                'status' => 'completed' // Adjust if needed
            ]
        );

        return redirect()->route('fees.index')->with('success', 'Fee paid and transaction recorded successfully!');
    }



    public function edit($id)
    {
        $fee = Fee::with('registration')->findOrFail($id);
        $fee->fee_date = \Carbon\Carbon::parse($fee->fee_date); // Ensure fee_date is a Carbon instance
        return view('content.apps.fees.edit', compact('fee'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'amount' => 'required|numeric|min:0',
            'status' => 'required|string'
        ]);

        $fee = Fee::findOrFail($id);
        $fee->amount = $request->input('amount');
        $fee->status = $request->input('status');
        $fee->save();

        return redirect()->route('fees.index')->with('success', 'Fee updated successfully!');
    }
}
