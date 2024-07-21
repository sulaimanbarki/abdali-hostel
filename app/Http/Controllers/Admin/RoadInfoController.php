<?php

namespace App\Http\Controllers\Admin;

use App\Models\District;
use App\Models\RoadInfo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class RoadInfoController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:road_info-list|road_info-create|road_info-edit|road_info-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:road_info-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:road_info-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:road_info-delete', ['only' => ['destroy']]);
    }
    public function index()
    {
        $roads = RoadInfo::get();
        return view('content.apps.road-info.index',compact('roads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $districts = District::all()->pluck('district_name','district_id')->toArray();
        return view('content.apps.road-info.create', compact('districts'));
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
            'district_id' => 'required',
            'dated' => 'required',
        ]);

        if ($validator->fails()) {
            Alert::toast('Fail to create new record.', 'error');
            return redirect()->back();
        }

        $data = $request->except(['_token']);

        $roadInfo = RoadInfo::create($data);
        $roadInfo->addAllMediaFromTokens();

        Alert::toast("Record Created Successfully", 'success');
        return to_route('road-info.index');
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
        $roadInfo = RoadInfo::findOrFail($id);
        $districts = District::all()->pluck('district_name','district_id')->toArray();
        return view('content.apps.road-info.edit', compact('roadInfo', 'districts'));
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
        $road = RoadInfo::findOrFail($id);
        $validator = Validator::make($request->all(),[
            'district_id' => 'required',
            'dated' => 'required',
        ]);

        if($validator->fails()) {
            Alert::toast('Fail to create new record.', 'error');
            return redirect()->back();
        }

        $data = $request->all();

        $road->update($data);
        $road->addAllMediaFromTokens();


        Alert::toast("Record has been updated.", 'success');
        return to_route('road-info.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $road = RoadInfo::findOrFail($id);
        $road->delete();

        Alert::toast("Record Deleted Successfully.", 'success');
        return to_route('road-info.index');
    }
}
