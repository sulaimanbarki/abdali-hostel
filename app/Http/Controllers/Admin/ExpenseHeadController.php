<?php

namespace App\Http\Controllers\Admin;

use DB;
use DataTables;
use App\Models\ExpenseHead;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class ExpenseHeadController extends Controller
{
    public function index(Request $request)
    {
        $expenseHeads = ExpenseHead::orderBy('id', 'DESC')->get();

        if ($request->has('ajax')) {
            return Datatables::of($expenseHeads)->make(true);
        }
        return view('content.apps.expense_heads.index', compact('expenseHeads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.expense_heads.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // validate the data
        $this->validate($request, [
            'name' => 'required|unique:expense_heads,name',
            'description' => 'required',
        ]);

        ExpenseHead::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
        ]);

        Alert::toast('Expense Head created successfully', 'success');
        return redirect()->route('expense_heads.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $expenseHead = ExpenseHead::find($id);
        return view('content.apps.expense_heads.show', compact('expenseHead'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $expenseHead = ExpenseHead::find($id);
        return view('content.apps.expense_heads.edit', compact('expenseHead'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'description' => 'required',
        ]);

        $expenseHead = ExpenseHead::find($id);
        $expenseHead->name = $request->input('name');
        $expenseHead->description = $request->input('description');
        $expenseHead->save();

        Alert::toast('Expense Head updated successfully', 'success');
        return redirect()->route('expense_heads.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table("expense_heads")->where('id', $id)->delete();
        Alert::toast('Expense Head deleted successfully', 'success');
        return redirect()->route('expense_heads.index');
    }
}
