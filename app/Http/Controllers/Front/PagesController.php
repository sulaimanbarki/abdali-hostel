<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Gallary;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\ERegisteration;
use App\Models\Telephone;
use Illuminate\Support\Facades\Validator;



class PagesController extends Controller
{




  public function index()
  {
    return View('front.pages.index');
  }

  // public function contact_us()
  // {
  //   return View('front.pages.contact');
  // }


  public function dynamic($slug)
  {
    $pageData = Page::where('slug', $slug)->firstorfail();
    return View('front.pages.dynamic', compact('pageData'));
  }


  public function gallery(Request $request, $slug)
  {
    $category = Category::where('slug', $slug)->firstorfail();
    $pageData = Page::where('slug', 'gallery')->first();
    $galleries = Gallary::where([['status', 1], ['category_id', $category->id]])->paginate(10);
    return View('front.pages.gallery', compact('galleries', 'pageData', 'category'));
  }



  public function contact_us()
  {
    $north_numbers = Telephone::where('division', 'north')->get();
    $south_numbers = Telephone::where('division', 'south')->get();
    $other_numbers = Telephone::where('division', 'other')->get();
    return View('front.pages.contact', compact('north_numbers', 'south_numbers', 'other_numbers'));
  }
  public function about_us()
  {
    return View('front.pages.aboutus');
  }
  public function organogram()
  {
    return View('front.pages.organogram');
  }
  public function phone()
  {
    $north_numbers = Telephone::where('division', 'north_division')->get();
    $south_numbers = Telephone::where('division', 'south_division')->get();
    return View('front.pages.phone', compact('north_numbers', 'south_numbers'));
  }

  public function c_wnorthsecter()
  {
    return View('front.pages.project.c&wnorthsecter');
  }
  public function targets()
  {
    return View('front.pages.project.targets');
  }
  public function development_expenditures()
  {
    return View('front.pages.project.development-expenditures');
  }
  public function gallery_north()
  {
    $galleries = Gallary::where('place', 'north')->get();
    return View('front.pages.Gallery.gallery-north', compact('galleries'));
  }
  public function gallery_south()
  {
    $galleries = Gallary::where('place', 'south')->get();
    return View('front.pages.Gallery.gallery-south', compact('galleries'));
  }
  public function applyOnline()
  {
    return View('front.pages.ETenders.applyonline');
  }
  public function roadMap()
  {
    return View('front.pages.Downloads.roadmap');
  }
  public function officer_profile()
  {
    return View('front.pages.officersprofile');
  }
  public function nit()
  {
    return View('front.pages.ETenders.nit');
  }
  public function e_regis(Request $request)
  {



    $validator = Validator::make($request->all(), [
      'g-recaptcha-response' => 'required|captcha',
      'CNICNumber' => 'required|unique:e_registerations',
      'PECNo' => 'required|unique:e_registerations',
      'mobNo' => 'required|unique:e_registerations',

    ]);


    if ($validator->fails()) {
      $errors = $validator->errors();
      $errorDisplay = "";
      foreach ($errors->messages() as $key => $error) {
        $errorDisplay = $errorDisplay . '<br>' . $error[0];
      }

      Alert::toast($errorDisplay, 'error')->timerProgressBar();
      return redirect()->back()->withErrors($validator)->withInput();
    }
    // dd($request->all());
    $cnicimage = $fbrimage = $pecimage = $formhimage = $PreEnlistmentimage = '';

    $NameOfOwner = $request->input('NameOfOwner');
    $district = $request->input('district');
    $PECNo = $request->input('PECNo');
    $categoryAppliedFor = $request->input('categoryAppliedFor');
    $NameOfContractor = $request->input('NameOfContractor');
    $address = $request->input('address');
    $categoryPEC = $request->input('categoryPEC');
    $CNICNumber = $request->input('CNICNumber');
    $speCODE = $request->input('speCODE');
    $fbrNONTN = $request->input('fbrNONTN');
    $Email = $request->input('Email');
    $mobNo = $request->input('mobNo');
    $RegLimted = $request->input('RegLimted');
    $decleration = $request->input('decleration');

    $e_regist = array(
      'CNICUpload'      => $cnicimage,
      'fbrUpload'      => $fbrimage,
      'PEC2020'      => $pecimage,
      'FormHUpload'      => $formhimage,
      'PreEnlistmentUpload'      => $PreEnlistmentimage,
      'decleration'      => $decleration,
      'NameOfOwner'      => $NameOfOwner,
      'district'      => $district,
      'PECNo'      => $PECNo,
      'categoryAppliedFor'      => $categoryAppliedFor,
      'NameOfContractor'      => $NameOfContractor,
      'address'      => $address,
      'categoryPEC'      => $categoryPEC,
      'CNICNumber'      => $CNICNumber,
      'speCODE'      => $speCODE,
      'fbrNONTN'      => $fbrNONTN,
      'Email'      => $Email,
      'mobNo'      => $mobNo,
      'RegLimted'      => $RegLimted,
    );
    $enlist_depart_ID = ERegisteration::create($e_regist);

    if ($enlist_depart_ID) {


      foreach ($request->enlist as $value) {
        $datasave = array(
          'eregisterID'   => $enlist_depart_ID->id,
          'departName' => $value,
        );
        DB::table('enlisted_departments')->insert($datasave);
      }

      if ($request->has('Others')) {
        $datasave = array(
          'eregisterID'   => $enlist_depart_ID->id,
          'departName' => $request->Others,
        );
        DB::table('enlisted_departments')->insert($datasave);
      }

      if ($request->hasFile('CNICUpload')) {
        $enlist_depart_ID->addMediaFromRequest('CNICUpload')->toMediaCollection('CNICUpload');
      }
      if ($request->hasFile('fbrUpload')) {
        $enlist_depart_ID->addMediaFromRequest('fbrUpload')->toMediaCollection('fbrUpload');
      }
      if ($request->hasFile('PEC2020')) {
        $enlist_depart_ID->addMediaFromRequest('PEC2020')->toMediaCollection('PEC2020');
      }
      if ($request->hasFile('FormHUpload')) {
        $enlist_depart_ID->addMediaFromRequest('FormHUpload')->toMediaCollection('FormHUpload');
      }
      if ($request->hasFile('PreEnlistmentUpload')) {
        $enlist_depart_ID->addMediaFromRequest('PreEnlistmentUpload')->toMediaCollection('PreEnlistmentUpload');
      }
      Alert::toast('Congratulations! You Have Successfully submitted yours documents.', 'success');
      return redirect('/');
    } else {
      Alert::toast('Fail to submit application please try again', 'error');
    }




    return redirect()->back();
  }

  public function c_wsouthsector()
  {
    return View('front.pages.project.c&wsouthsector');
  }
  public function salient_features()
  {
    return View('front.pages.project.salient-features');
  }
  public function psdp_projects()
  {
    return View('front.pages.project.psdp-projects');
  }

  public function videos()
  {
    return View('front.pages.Gallery.videos');
  }
  public function office_circulars()
  {
    return View('front.pages.Downloads.office-circulars');
  }
  public function notification()
  {
    return View('front.pages.Downloads.notification');
  }

  public function notice_inviting_tender()
  {
    return View('front.pages.ETenders.nit');
  }
  public function contractor_login()
  {
    return View('front.pages.ETenders.contractor-login');
  }
  public function official_login()
  {
    return View('front.pages.ETenders.official-login');
  }
  public function approved_contractors_list()
  {
    return View('front.pages.ETenders.approved-contractors-list');
  }
  public function debared_contractors_list()
  {
    return View('front.pages.ETenders.debared-contractors-list');
  }

  public function tenderList()
  {
  }

  public function adpnorth()
  {
    return View('front.pages.project.adpnorth');
  }
}
