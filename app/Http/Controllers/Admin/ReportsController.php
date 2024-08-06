<?php

namespace App\Http\Controllers\Admin;

use App\Models\Fee;
use App\Models\Transaction;
use Illuminate\Http\Request;
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
            'start_date' => 'required|date',
            
        ]);


        $unpaidFees = Fee::whereBetween('fee_date', [$request->start_date, $request->end_date])
            ->where('status', 'unpaid')
            ->get(['amount']);

        $totalFeeAmount = $unpaidFees->sum('amount');


        $partialPaymentFees = Fee::whereBetween('fee_date', [$request->start_date, $request->end_date])
            ->where('status', 'partial-payment')
            ->get(['amount', 'paid_amount']);

        $partialPaymentTotal = $partialPaymentFees->sum(function ($fee) {
            return $fee->amount - $fee->paid_amount;
        });


        $totalFeeAmount += $partialPaymentTotal;


        $transactions = Transaction::where('transection_type', 1)
            ->where('type', 'credit')
            ->whereBetween('transection_date', [$request->start_date, $request->end_date])
            ->get(['amount']);
        $totalTransactionAmount = $transactions->sum('amount');


        $totalAmount = $totalFeeAmount + $totalTransactionAmount;

        return response()->json([
            'total_amount' => $totalAmount,
            'total_fee_amount' => $totalFeeAmount,
            'total_transaction_amount' => $totalTransactionAmount,
        ]);
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
            'end_date' => 'required|date',
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