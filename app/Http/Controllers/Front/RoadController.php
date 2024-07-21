<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\RoadInfo;
use Illuminate\Http\Request;
use App\Models\Telephone;


class RoadController extends Controller
{
    public function index()
    {
        $data = RoadInfo::paginate(10);
        return view('front.pages.road.index', compact('data'));
    }
}
