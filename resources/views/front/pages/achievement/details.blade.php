@extends('front/layouts/layout')

@section('title', 'Achievement Details')
@section('content')


<section class="d-block page-title-banner" style="background-image: url('{{ $pageData? $pageData->getFirstMediaUrl('banner'): '#'}}');">
    <div class="banner-overlay">
        <div class="custom-container">
            <div class="d-flex flex-column align-items-center justify-content-center title-con">
                <div>
                    <h1 class="page-title fw-bold d-block">{{$achievement->title?? 'Achievement Title'}}</h1>
                </div>

            </div>
            <div class="breadcrumbs-con">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="{{url('/')}}" class="text-decoration-none">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{url('achievements')}}" class="text-decoration-none">Achievements</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$achievement->title?? 'Page'}}</li>
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
                        <img src="{{$achievement->getFirstMediaUrl('achievement')}}" class="w-100 h-auto" alt="" />
                    </figure>
                </div>
                <div class="text-con">
                    {!!$achievement->description!!}
                </div>
            </div>

        </div>
    </div>
</section>
@endsection