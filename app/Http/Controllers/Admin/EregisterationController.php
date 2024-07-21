<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ERegisteration;
use Yajra\DataTables\DataTables;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Carbon;

class EregisterationController extends Controller
{


    function __construct()
    {
        $this->middleware('permission:e_registeration-list|e_registeration-create|e_registeration-edit|e_registeration-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:e_registeration-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:e_registeration-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:e_registeration-delete', ['only' => ['destroy']]);
    }



    public function changeStatus(Request $request, $id)
    {


        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        unset($data['_token']);
        unset($data['_method']);
        unset($data['media']);

        ERegisteration::where('id', $id)->update($data);
        $e_registeration = ERegisteration::findorfail($id);
        if ($request->progress == 'approved' || $request->progress == 'reject') {
            \Mail::to($e_registeration->email)->send(new \App\Mail\Registration($e_registeration));
            Alert::toast("Application Status change", 'success');
            return redirect()->back();
        }

        return redirect()->back();
    }


    public function list(Request $request)
    {

        $model = ERegisteration::query();
        return DataTables::of($model)->toJson();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {



        $where = [];
        $progress = null;
        $form_date = Carbon::now()->startOfMonth()->format('Y-m-d');
        $to_date = Carbon::now()->endOfMonth()->format('Y-m-d');
        //if user select
        if (isset($request->progress)) {
            $progress = $request->progress;
            array_push($where,   ['progress', $progress]);
        }
        if (isset($request->form_date)) {
            $form_date = $request->form_date;
            array_push($where,   ['created_at', '>=', $form_date]);
        }
        if (isset($request->to_date)) {
            $to_date = $request->to_date;
            array_push($where,   ['created_at', '<=', $to_date]);
        }

        // $e_registerations = ERegisteration::where($where)->paginate(40);
          $e_registerations = ERegisteration::where($where)->get();


        return view('content.apps.eregistration.index', compact('e_registerations', 'progress', 'form_date', 'to_date'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.eregistration.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'title' => 'required',
        ]);

        if ($validator->fails()) {

            Alert::toast('fail to create e-registration', 'error');
        }

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        $cnicimage = $fbrimage = $pecimage = $formhimage = $PreEnlistmentimage = '';
        $data['CNICUpload'] = '';
        $data['fbrUpload'] = '';
        $data['PEC2020'] = '';
        $data['FormHUpload'] = '';
        $data['PreEnlistmentUpload'] = '';

        unset($data['_token']);


        $e_registeration = ERegisteration::Create($data);
        $e_registeration->addAllMediaFromTokens();
        if ($e_registeration) {
            Alert::toast("Download Created Successfully", 'success');
            return redirect()->route('e_registerations.index');
        } else {
            Alert::toast('Fail to create new Download', 'error');
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $e_registration = ERegisteration::findorfail($id);
        return view('content.apps.eregistration.show', compact('e_registration'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $e_registration = ERegisteration::findorfail($id);
        return view('content.apps.eregistration.edit', compact('e_registration'));
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
        $validator = Validator::make($request->all(), [
            'NameOfOwner' => 'required',
        ]);

        if ($validator->fails()) {
            Alert::toast('fail to update e-registration', 'error');
            return redirect()->back();
        }

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        unset($data['_token']);
        unset($data['_method']);
        unset($data['media']);

        ERegisteration::where('id', $id)->update($data);
        $e_registeration = ERegisteration::find($id);

        $e_registeration->addAllMediaFromTokens();
        Alert::toast("E-registration Upated Successfully", 'success');
        return redirect()->route('e_registerations.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ERegisteration::where('id', $id)->delete();
        Alert::toast("E-registration Deleted Successfully", 'success');
        return redirect()->route('e_registerations.index');
    }
}
