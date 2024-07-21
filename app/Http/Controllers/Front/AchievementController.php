<?php

namespace App\Http\Controllers\Front;


use App\Http\Controllers\Controller;
use App\Models\Achievement;
use App\Models\Page;
use App\Models\Category;

class AchievementController extends Controller
{

    public function index()
    {
        $achievements = Achievement::where('status', 1)->paginate(6);
        return View('front.pages.achievement.index', compact('achievements'));
    }

    public function details($slug)
    {
        $pageData = Page::where('loadwithlink', 'newsDetails')->first();
        $achievement = Achievement::where('slug', $slug)->firstorfail();
        return View('front.pages.achievement.details', compact('pageData', 'achievement'));
    }
}
