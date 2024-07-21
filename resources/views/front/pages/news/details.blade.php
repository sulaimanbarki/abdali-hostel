@extends('front/layouts/layout')

@section('title', 'News')
@section('content')


<section class="d-block page-title-banner" style="background-image: url('{{ $pageData? $pageData->getFirstMediaUrl('banner'): '#'}}');">
    <div class="banner-overlay">
        <div class="custom-container">
            <div class="d-flex flex-column align-items-center justify-content-center title-con">
                <div>
                    <h1 class="page-title fw-bold">{{ $news->has('category')? $news->category->title: 'News'}}</h1>
                </div>
                <h1 class="page-title fw-bold d-block">{{$news->title?? 'News Title'}}</h1>
            </div>
            <div class="breadcrumbs-con">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="{{url('/')}}" class="text-decoration-none">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{url('news')}}" class="text-decoration-none">Events</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$news->title?? 'Page'}}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<section class="news-page-details">
    <div class="custom-container">
        <div class="d-flex flex-column flex-lg-row align-items-center align-items-lg-start justify-content-between gap-5 gap-lg-4">
            <div class="news-description">
                <div class="news-image d-block w-100">
                    <figure>
                        <img src="{{$news->getFirstMediaUrl('news')}}" class="w-100 h-auto" alt="" />
                    </figure>
                </div>
                <div class="text-con">
                    {!!$news->description!!}
                </div>
            </div>
            <div class="news-cat-popular-news text-start">
                <h2 class="title text-capitalize">Categories</h2>
                <div class="categories">
                    @foreach($categories as $key=> $category)
                    <a href="{{url('news')}}" class="d-flex flex-row align-items-center justify-content-between gap-2 cat-item">
                        <div class="c-label">
                            <div class="d-flex flex-row align-items-center gap-2">
                                <div class="circle">
                                    <span></span>
                                </div>
                                <div>{{$category->title}}</div>
                            </div>
                        </div>
                        <div class="c-value">({{$category->countNews()}})</div>
                    </a>
                    @endforeach

                </div>
                <h2 class="title text-capitalize mt-5">Popular posts</h2>
                <div class="popular-posts">

                    @foreach($popularNews as $news)
                    <a href="{{url('news',$news->slug)}}" class="d-flex flex-row gap-3 news-item">
                        <div>
                            <img src="{{$news->getFirstMediaUrl('news')}}" alt="" class="news-thumb" />
                        </div>
                        <span class="n-title">{{$news->title}}
                            <span class="date d-block w-100 mt-1">
                                <img src="{{asset('front/assets/images/calendar-icon-new-grey.svg')}}" alt="" class="cal-icon d-inline-block me-2" />
                                {{$news->created_at->format('d/m/y')}}</span>
                        </span>
                    </a>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
@endsection