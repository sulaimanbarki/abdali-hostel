<?php

namespace App\Http\Controllers\Front;


use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\Page;
use App\Models\Category;

class NewsController extends Controller
{

    public function index()
    {
        $newslist = News::where('status', 1)->paginate(6);
        return View('front.pages.news.index', compact('newslist'));
    }

    public function details($slug)
    {
        $pageData = Page::where('loadwithlink', 'newsDetails')->first();
        $news = News::where('slug', $slug)->firstorfail();
        $categories = Category::where('type', 'news')->where('status', 1)->get();
        $popularNews = News::all()->random(3);

        return View('front.pages.news.details', compact('pageData', 'news', 'categories', 'popularNews'));
    }
}
