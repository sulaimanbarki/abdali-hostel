<?php

namespace App\Http\Controllers\Front;


use App\Http\Controllers\Controller;
use App\Models\Tender;
use App\Models\Page;


class TenderController extends Controller
{

    public function index()
    {

     
        $tenders = Tender::where('status', 1)->paginate(6);
        return View('front.pages.tender.index', compact('tenders'));
    }

    public function details($slug)
    {
        $pageData = Page::where('loadwithlink', 'newsDetails')->first();
        $tenders = Tender::where('slug', $slug)->get();
        return View('front.pages.tender.details', compact('pageData', 'tenders'));
    }
}
