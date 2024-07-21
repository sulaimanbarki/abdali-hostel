<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\Helper;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\Telephone;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TelephoneController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:telephone-list|telephone-create|telephone-edit|telephone-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:telephone-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:telephone-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:telephone-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $telephones = Telephone::get();
        return view('content.apps.telephonedirectory.index',compact('telephones'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('content.apps.telephonedirectory.Create');
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
            'officename' => 'required',
            'moblieNO' => 'required',
            'faxNO' => 'required',
            'phoneNO' => 'required',
            'division' => 'required',
        ]);
        if ($validator->fails()) {
            Alert::toast($validator, 'error');
        }
        $data= $request->all();
        unset($data['token']);
        $data['status']= Helper::switchToDB($request->status);
        $telephone = Telephone::Create($data);
        $telephone->addAllMediaFromTokens();
        if ($telephone) {
            Alert::toast("Project Created Successfully", 'success');
            return redirect()->route('telephones.index');
        } else {
            Alert::toast('Fail to crate new Telephone Directoey', 'error');
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
        //
        $telephone = Telephone::findorfail($id);
        return view('content.apps.telephonedirectory.edit',compact('telephone'));
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
            'officename' => 'required',
            'phoneNO' => 'required',
            'faxNO' => 'required',
            'moblieNO' => 'required',
        ]);

        if ($validator->fails()) {
            Alert::toast($validator, 'error');
        }

        $data = $request->all();
        // $data['status'] = Helper::switchToDb($request->status);
        unset($data['_token']);
        unset($data['_method']);
        unset($data['media']);

        Telephone::where('id', $id)->update($data);

        $tele = Telephone::find($id);
        $tele->addAllMediaFromTokens();

        if ($tele) {
            Alert::toast("Telephone Directory Upated Successfully", 'success');
            return redirect()->route('telephones.index');
        } else {
            Alert::toast('Fail to update Telephone Directory ', 'error');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Telephone::where('id', $id)->delete();
        Alert::toast("Telephone directory Deleted Successfully", 'success');
        return redirect()->route('telephones.index');
    }
}
