<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Staff;
use App\Models\Transaction;
use DataTables;
use RealRashid\SweetAlert\Facades\Alert;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $staff = Staff::orderBy('id', 'DESC')->get();

        if ($request->has('ajax')) {
            return Datatables::of($staff)->make(true);
        }
        return view('content.apps.staff.index', compact('staff'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.staff.create');
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
            'name' => 'required|string|max:255',
            'father_name' => 'required|string|max:255',
            'cnic' => 'nullable|string|max:20',
            'address' => 'required|string|max:255',
            'phone_no' => 'required|string|max:15',
            'email' => 'required|email|unique:staff,email',
            'status' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        $staff = new Staff($request->except('image'));

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('staff_images', 'public');
            $staff->image = $path;
        }

        $staff->save();

        Alert::toast('Staff created successfully', 'success');
        return redirect()->route('staff.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $staff = Staff::find($id);
        return view('content.apps.staff.show', compact('staff'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $staff = Staff::find($id);
        return view('content.apps.staff.edit', compact('staff'));
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
            'name' => 'required|string|max:255',
            'father_name' => 'required|string|max:255',
            'cnic' => 'nullable|string|max:20',
            'address' => 'required|string|max:255',
            'phone_no' => 'required|string|max:15',
            'email' => 'required|email|unique:staff,email,' . $id,
            'status' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        $staff = Staff::find($id);
        $staff->fill($request->except('image'));

        if ($request->hasFile('image')) {
            if ($staff->image) {
                Storage::disk('public')->delete($staff->image);
            }
            $path = $request->file('image')->store('staff_images', 'public');
            $staff->image = $path;
        }

        $staff->save();

        Alert::toast('Staff updated successfully', 'success');
        return redirect()->route('staff.index');
    }

    public function destroy($id)
    {
        $staff = Staff::find($id);
        if ($staff->image) {
            Storage::disk('public')->delete($staff->image);
        }
        $staff->delete();
        Alert::toast('Staff deleted successfully', 'success');
        return redirect()->route('staff.index');
    }

    public function staff_payment_list($staff_id)
    {
        $staff = Staff::find($staff_id);

        $payments = Transaction::where('transection_type', 3)->where('transection_type_id', $staff_id)->get();

        return view('content.apps.staff.payment', compact('staff', 'payments'));
    }

    public function staff_pay(Request $request, $staff_id)
    {
        $request->validate([
            'amount' => 'required|numeric',
            'transection_date' => 'required|date',
            'description' => 'nullable|string',
        ]);

        $data = $request->except('_token');
        
        $data['transection_type'] = 3;
        $data['transection_type_id'] = $staff_id;
        $data['type'] = 'debit';
        $data['status'] = 'completed';

        $transaction = new Transaction($data);
        $transaction->transection_type = 3;
        $transaction->transection_type_id = $staff_id;
        $transaction->save();

        Alert::toast('Payment added successfully', 'success');
        return redirect()->route('staff.payment', $staff_id);
    }
}
