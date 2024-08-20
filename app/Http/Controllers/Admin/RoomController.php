<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Room;
use App\Models\Floor;
use DB;
use DataTables;
use RealRashid\SweetAlert\Facades\Alert;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $rooms = Room::with('floor')->orderBy('id', 'DESC')->get();

        if ($request->has('ajax')) {
            return Datatables::of($rooms)->make(true);
        }
        return view('content.apps.rooms.index', compact('rooms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $floors = Floor::all();
        return view('content.apps.rooms.create', compact('floors'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
{
    //
    $this->validate($request, [
        'room_name' => 'required',
        'floor_id' => 'required|exists:floors,id',
        'room_type' => 'required',
        'no_of_seats' => 'required|integer',
        'price' => 'nullable|numeric',
    ]);


    $data = $request->all();
    $data['no_of_seats_available'] = $request->no_of_seats;


    $room = Room::create($data);

    Alert::toast('Room created successfully', 'success');
    return redirect()->route('rooms.index');
}


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $room = Room::with('floor')->find($id);
        return view('content.apps.rooms.show', compact('room'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $room = Room::find($id);
        $floors = Floor::all();
        return view('content.apps.rooms.edit', compact('room', 'floors'));
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
            'room_name' => 'required',
            'floor_id' => 'required|exists:floors,id',
            'room_type' => 'required',
            'no_of_seats' => 'required|integer',
            'price' => 'nullable|numeric',
        ]);

        $room = Room::find($id);
        $room->update($request->all());
        Alert::toast('Room updated successfully', 'success');
        return redirect()->route('rooms.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Room::find($id)->delete();
        Alert::toast('Room deleted successfully', 'success');
        return redirect()->route('rooms.index');
    }
}