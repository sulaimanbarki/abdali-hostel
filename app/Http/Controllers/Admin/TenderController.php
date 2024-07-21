<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Tender;
use Yajra\DataTables\DataTables;
use App\Helpers\Helper;
use Illuminate\Support\Facades\Validator;
use RealRashid\SweetAlert\Facades\Alert;

class TenderController extends Controller
{


    function __construct()
    {
        $this->middleware('permission:team-list|team-create|team-edit|team-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:team-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:team-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:team-delete', ['only' => ['destroy']]);
    }


    public function list(Request $request)
    {

        $model = Tender::query();
        return DataTables::of($model)->toJson();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $tenders = Tender::paginate(20);
        return view('content.apps.tender.index', compact('tenders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.tender.create');
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
            $errors = $validator->errors();
            $errorDisplay = "";
            foreach ($errors->messages() as $key => $error) {
                $errorDisplay = $errorDisplay . '<br>' . $error[0];
            }
            Alert::toast($errorDisplay, 'error')->timerProgressBar();
            return redirect()->back();
        }

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        unset($data['_token']);


        $tender = Tender::Create($data);
        $tender->addAllMediaFromTokens();
        if ($tender) {
            Alert::toast("Tender Created Successfully", 'success');
            return redirect()->route('tenders.index');
        } else {
            Alert::toast('Fail to create new Tender', 'error');
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
        $tender = Tender::findorfail($id);
        return view('content.apps.tender.edit', compact('tender'));
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
            'title' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            $errorDisplay = "";
            foreach ($errors->messages() as $key => $error) {
                $errorDisplay = $errorDisplay . '<br>' . $error[0];
            }
            Alert::toast($errorDisplay, 'error')->timerProgressBar();
            return redirect()->back();
        }

        $data = $request->all();
        $data['status'] = Helper::switchToDb($request->status);
        unset($data['_token']);
        unset($data['_method']);
        unset($data['media']);

        Tender::where('id', $id)->update($data);

        $tender = Tender::find($id);
        $tender->addAllMediaFromTokens();

        Alert::toast("Tender Upated Successfully", 'success');
        return redirect()->route('tenders.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Tender::where('id', $id)->delete();
        Alert::toast("Tender Deleted Successfully", 'success');
        return redirect()->route('tenders.index');
    }
}
