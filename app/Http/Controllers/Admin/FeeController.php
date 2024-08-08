<?php

namespace App\Http\Controllers\Admin;

use DataTables;
use App\Models\Fee;
use App\Models\Transaction;
use App\Models\Registration;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Actions\FeeAction;
use App\Http\Controllers\Controller;

class FeeController extends Controller
{
    protected $feeAction;

    public function __construct(FeeAction $feeAction)
    {
        $this->feeAction = $feeAction;
    }

    public function index(Request $request)
    {
        $query = Fee::with('registration.room', 'floor')  // Include room in the registration relation
            ->whereHas('registration')
            ->orderBy('id', 'DESC');

        if ($request->has('fee_month')) {
            $fee_month = $request->input('fee_month');
            $query->whereYear('fee_date', '=', date('Y', strtotime($fee_month)))
                ->whereMonth('fee_date', '=', date('m', strtotime($fee_month)));
        }

        if ($request->has('ajax')) {
            return Datatables::of($query)
                ->addColumn('room', function ($fee) {
                    return $fee->registration->room->room_name ?? 'N/A';  // Adjust to match your room field
                })
                ->make(true);
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

        $this->feeAction->generateFeesForMonth($feeMonth);

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

        try {
            $this->feeAction->updateFeeStatusAndTransaction($fee, $request->input('paid_amount'));

            if ($request->hasFile('attachment')) {
                $fee->addMediaFromRequest('attachment')->toMediaCollection('attachment');
            }
        } catch (\Exception $e) {
            return redirect()->route('fees.index')->with('error', $e->getMessage());
        }

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
            'paid_amount' => 'required|numeric|min:0',
            'status' => 'required|string'
        ]);

        $fee = Fee::findOrFail($id);

        $fee->amount = $request->input('amount');
        $fee->paid_amount = $request->input('paid_amount');

        try {
            $this->feeAction->updateFeeStatusAndTransaction($fee, $request->input('paid_amount'));
        } catch (\Exception $e) {
            return redirect()->route('fees.index')->with('error', $e->getMessage());
        }

        return redirect()->route('fees.index')->with('success', 'Fee updated and transaction recorded successfully!');
    }
}
