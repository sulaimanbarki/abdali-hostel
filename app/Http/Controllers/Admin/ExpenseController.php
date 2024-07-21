<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Expense;
use App\Models\ExpenseHead;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use RealRashid\SweetAlert\Facades\Alert;

class ExpenseController extends Controller
{
    public function index(Request $request)
    {
        $expenses = Expense::with('expenseHead')->orderBy('id', 'DESC')->get();

        if ($request->has('ajax')) {
            return response()->json($expenses);
        }

        return view('content.apps.expenses.index', compact('expenses'));
    }

    public function create()
    {
        $expenseHeads = ExpenseHead::pluck('name', 'id');
        return view('content.apps.expenses.create', compact('expenseHeads'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'expense_head_id' => 'required|exists:expense_heads,id',
            'amount' => 'required|numeric',
            'paying_date' => 'required|date',
            'description' => 'nullable|string',
        ]);

        Expense::create($request->all());

        Alert::toast('Expense created successfully', 'success');
        return redirect()->route('expenses.index');
    }

    public function show($id)
    {
        $expense = Expense::with('expenseHead')->findOrFail($id);
        return view('content.apps.expenses.show', compact('expense'));
    }

    public function edit($id)
    {
        $expense = Expense::findOrFail($id);
        $expenseHeads = ExpenseHead::pluck('name', 'id');
        return view('content.apps.expenses.edit', compact('expense', 'expenseHeads'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'expense_head_id' => 'required|exists:expense_heads,id',
            'amount' => 'required|numeric',
            'paying_date' => 'required|date',
            'description' => 'nullable|string',
        ]);

        $expense = Expense::findOrFail($id);
        $expense->update($request->all());

        Alert::toast('Expense updated successfully', 'success');
        return redirect()->route('expenses.index');
    }

    public function destroy($id)
    {
        Expense::destroy($id);
        Alert::toast('Expense deleted successfully', 'success');
        return redirect()->route('expenses.index');
    }
}
