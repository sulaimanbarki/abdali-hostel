<?php

namespace App\Http\Controllers;

use App\Models\StaffRole;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

class StaffRoleController extends Controller
{
    public function index()
    {
        $staffRoles = StaffRole::all();
        return view('content.apps.staff_roles.index', compact('staffRoles'));
    }

    public function create()
    {
        return view('content.apps.staff_roles.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'staff_name' => 'required',
        ]);

        StaffRole::create($request->all());
        Alert::toast('Staff created successfully', 'success');
        return redirect()->route('staff_roles.index');
    }

    // public function show(StaffRole $staffRole)
    // {
    //     return view('content.apps.staff_roles.show', compact('staffRole'));
    // }

    public function edit(StaffRole $staffRole)
    {
        return view('content.apps.staff_roles.edit', compact('staffRole'));
    }

    public function update(Request $request, StaffRole $staffRole)
    {
        $request->validate([
            'staff_name' => 'required',
        ]);

        $staffRole->update($request->all());
        Alert::toast('Staff updated successfully', 'success');
        return redirect()->route('staff_roles.index');
    }

    public function destroy(StaffRole $staffRole)
    {
        $staffRole->delete();
        Alert::toast('Staff deleted successfully', 'success');
        return redirect()->route('staff_roles.index');
    }
}
