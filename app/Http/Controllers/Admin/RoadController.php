<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\Road;
use App\Models\Telephone;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;

class RoadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
        $this->middleware('permission:road-list|road-create|road-edit|road-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:road-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:road-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:road-delete', ['only' => ['destroy']]);
    }
    public function index()
    {
        $roads = Road::get();
        return view('content.apps.road.index',compact('roads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $telephones = Telephone::orderBy('officename')->pluck('officename','id');
        return view('content.apps.road.create',compact('telephones'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'road_length' => 'required',
            'note' => 'required',
            'current_status' => 'required',
        ]);
        if ($validator->fails()) {
            Alert::toast('Fail to create new record.', 'error');
            return redirect()->back();
        }
        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        Road::create($data);
        Alert::toast("Record Created Successfully", 'success');
        return to_route('roads.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $road = Road::findOrFail($id);
        return view('content.apps.road.edit',compact('road'));
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
        $road = Road::findOrFail($id);
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'road_length' => 'required',
            'note' => 'required',
            'current_status' => 'required',
        ]);
        if($validator->fails()) {
            Alert::toast('Fail to create new record.', 'error');
            return redirect()->back();
        }
        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        $road->update($data);
        Alert::toast("Record has been updated.", 'success');
        return to_route('roads.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $road = Road::findOrFail($id);
        $road->delete();
        Alert::toast("Record Deleted Successfully.", 'success');
        return to_route('roads.index');
    }
}
