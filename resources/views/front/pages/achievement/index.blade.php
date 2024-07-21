@extends('front/layouts/layout')

@section('title', 'Achievements')
@section('content')


<x-inner-page-header page='Achievement' />
<section class="news-page">
    <div class="custom-container latest-news-section">
        <div class="latest-news-slider-box">
            <div class="latest-news-slider row justify-content-between">

                @foreach($achievements as $key => $achievement)
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="news-item position-relative">
                        <div class="news-image" style="background-image: url('{{$achievement->getFirstMediaUrl('achievement')}}');"></div>
                        <div class="news-details-box">
                            <div class="news-details">
                                <div class="d-flex justify-content-end align-items-start">
                                    <div class="date text-center">
                                        <span class="day d-block">{{$achievement->created_at->format('d')}}</span>
                                        <span class="month d-block">{{$achievement->created_at->format('M, y')}}</span>
                                    </div>
                                </div>
                                <div class="d-flex flex-column description align-items-start">
                                    <div>
                                        <span class="text-uppercase title-sm">Achievement</span>
                                    </div>
                                    <div class="m-title">
                                        <a href="{{url('achievements',$achievement->slug)}}">{{$achievement->title}}</a>
                                    </div>
                                    <div class="short-description">
                                        {{$achievement->short_description}}
                                    </div>
                                    <div class="read-more-link">
                                        <a href="{{url('achievements',$achievement->slug)}}" class="d-flex flex-row align-items-center justify-content-center gap-2"><span>Read More</span><img src="{{asset('front/assets/images/angle-small-right.svg')}}" alt="" /></a>

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



            {!! $achievements->links('pagination::custom') !!}

        </div>
    </div>
</section>
@endsection