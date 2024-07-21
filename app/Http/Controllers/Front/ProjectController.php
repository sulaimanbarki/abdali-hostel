<?php

namespace App\Http\Controllers\Front;


use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\Page;
use App\Models\Category;

class ProjectController extends Controller
{

    public function index()
    {
        $pageData = Page::where('loadwithlink', 'projects')->first();
        $projects = Project::where('status', 1)->paginate(6);
        return View('front.pages.project.index', compact('pageData', 'projects'));
    }

    public function details($slug)
    {
        $pageData = Page::where('loadwithlink', 'ProjectDetails')->first();
        $project = Project::where('slug', $slug)->firstorfail();
        return View('front.pages.project.details', compact('pageData', 'project'));
    }
}
