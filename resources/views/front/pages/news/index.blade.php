@extends('front/layouts/layout')

@section('title', 'News')
@section('content')


<x-inner-page-header page='news' />
<section class="news-page">
    <div class="custom-container latest-news-section">
        <div class="latest-news-slider-box">
            <div class="latest-news-slider row justify-content-between">

                @foreach($newslist as $key => $news)
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="news-item position-relative">
                        <div class="news-image" style="background-image: url('{{$news->getFirstMediaUrl('news')}}');"></div>
                        <div class="news-details-box">
                            <div class="news-details">
                                <div class="d-flex justify-content-end align-items-start">
                                    <div class="date text-center">
                                        <span class="day d-block">{{$news->created_at->format('d')}}</span>
                                        <span class="month d-block">{{$news->created_at->format('M, y')}}</span>
                                    </div>
                                </div>
                                <div class="d-flex flex-column description align-items-start">
                                    <div>
                                        <span class="text-uppercase title-sm">{{ $news->has('category')? $news->category->title: 'News'}}</span>
                                    </div>
                                    <div class="m-title">
                                        <a href="{{url('news',$news->slug)}}">{{$news->title}}</a>
                                    </div>
                                    <div class="short-description">
                                        {{$news->short_description}}
                                    </div>
                                    <div class="read-more-link">
                                        <a href="{{url('news',$news->slug)}}" class="d-flex flex-row align-items-center justify-content-center gap-2"><span>Read More</span><img src="{{asset('front/assets/images/angle-small-right.svg')}}" alt="" /></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach




            </div>
        </div>
        <div class="d-block w-100 text-center mb-5">



            {!! $newslist->links('pagination::custom') !!}

        </div>
    </div>
</section>
@endsection