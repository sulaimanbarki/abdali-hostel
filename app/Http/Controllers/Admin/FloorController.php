<?php

namespace App\Http\Controllers\Admin;

use DB;
use DataTables;
use App\Models\Room;
use App\Models\Floor;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class FloorController extends Controller
{
    public function index(Request $request)
    {
        $floors = Floor::orderBy('id', 'DESC')->get();

        if ($request->has('ajax')) {
            return Datatables::of($floors)->make(true);
        }
        return view('content.apps.floors.index', compact('floors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.floors.create');
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
            'floor_name' => 'required|unique:floors,floor_name',
            'description' => 'required',
            'total_rooms' => 'required|integer',
        ]);

        Floor::create([
            'floor_name' => $request->input('floor_name'),
            'description' => $request->input('description'),
            'total_rooms' => $request->input('total_rooms'),
        ]);

        Alert::toast('Floor created successfully', 'success');
        return redirect()->route('floors.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $floor = Floor::find($id);
        return view('content.apps.floors.show', compact('floor'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $floor = Floor::find($id);
        return view('content.apps.floors.edit', compact('floor'));
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
            'floor_name' => 'required',
            'description' => 'required',
            'total_rooms' => 'required|integer',
        ]);

        $floor = Floor::find($id);
        $floor->floor_name = $request->input('floor_name');
        $floor->description = $request->input('description');
        $floor->total_rooms = $request->input('total_rooms');
        $floor->save();

        Alert::toast('Floor updated successfully', 'success');
        return redirect()->route('floors.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table("floors")->where('id', $id)->delete();
        Alert::toast('Floor deleted successfully', 'success');
        return redirect()->route('floors.index');
    }

    public function getRooms($floor_id)
    {
        $rooms = Room::where('floor_id', $floor_id)->where('status', 'UnBooked')->pluck('room_name', 'id');
        return response()->json($rooms);
    }
}