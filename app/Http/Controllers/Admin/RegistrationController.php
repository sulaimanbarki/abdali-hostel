<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\Helper;
use App\Models\Registration;
use App\Models\Floor;
use App\Models\Room;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class RegistrationController extends Controller
{
    public function index()
    {
        $registrations = Registration::with('floor', 'room')->paginate(10);
        return view('content.apps.registrations.index', compact('registrations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $floors = Floor::pluck('floor_name', 'id');
        $rooms = Room::pluck('room_name', 'id');
        return view('content.apps.registrations.create', compact('floors', 'rooms'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'father_name' => 'required',
            'floor_id' => 'required',
            'room_id' => 'required',
            'cnic' => 'nullable',
            'address' => 'nullable',
            'registration_date' => 'required|date',
            'phone_no' => 'required',
            'whatsapp_no' => 'nullable',
            'dob' => 'nullable|date',
            'email' => 'nullable|email',
            'amount' => 'required|gt:0',
        ]);

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status ?? 'on');

        $registration = Registration::create($data);
        $registration->addAllMediaFromTokens();

        if ($registration) {
            Alert::toast("Registration Created Successfully", 'success');
            return redirect()->route('registrations.index');
        } else {
            Alert::toast('Failed to create registration', 'error');
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function show(Registration $registration)
    {
        return view('content.apps.registrations.show', compact('registration'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $registration = Registration::findOrFail($id);
        $floors = Floor::pluck('floor_name', 'id');
        $rooms = Room::pluck('room_name', 'id');
        return view('content.apps.registrations.edit', compact('registration', 'floors', 'rooms'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'father_name' => 'required',
            'floor_id' => 'required',
            'room_id' => 'required',
            'cnic' => 'nullable',
            'address' => 'nullable',
            'registration_date' => 'required|date',
            'phone_no' => 'required',
            'whatsapp_no' => 'nullable',
            'dob' => 'nullable|date',
            'email' => 'nullable|email',
            'amount' => 'required|gt:0',
        ]);

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);

        $registration = Registration::findOrFail($id);
        $registration->update($data);
        $registration->addAllMediaFromTokens();

        if ($registration) {
            Alert::toast("Registration Updated Successfully", 'success');
            return redirect()->route('registrations.index');
        } else {
            Alert::toast('Failed to update registration', 'error');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $registration = Registration::findOrFail($id);
        $registration->delete();

        if ($registration) {
            Alert::toast("Registration Deleted Successfully", 'success');
            return redirect()->route('registrations.index');
        } else {
            Alert::toast('Failed to delete registration', 'error');
            return redirect()->back();
        }
    }
}
