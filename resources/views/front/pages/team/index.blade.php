@extends('front/layouts/layout')

@section('title', 'Team')
@section('content')
<x-inner-page-header page='team' slug='team' />

<section class="page-details">
    <div class="custom-container mb-4">
        <div class="row justify-content-between">
            @foreach($teams as $key=> $team)
            <div class="col-12 col-lg-6 mb-4">
                <div class="card team-details">
                    <div class="d-flex flex-column flex-md-row align-items-center">
                        <div class="image-thumb align-self-stretch">
                            <img src="{{$team->getFirstMediaUrl('team')}}" class="img-fluid h-80" alt="">
                        </div>
                        <div class="card-body align-self-stretch">
                            <div class="d-flex flex-row flex-wrap">
                                <h2 class="card-title fw-bold w-100">{{$team->name}}</h2>
                                <p class="designation w-100"><em>{{$team->designation}}</em></p>
                                <p class="card-text w-100">{!!Helper::TitleTextLimit($team->description,120)!!}</p>
                                <p class="card-text contact align-self-baseline w-100">
                                    <img src="{{asset('front/assets/images/phone-call.svg')}}" alt="" class="d-inline-block me-1" /> {{$team->phone}}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
        <div class="d-block w-100 text-center mb-5">
            {!! $teams->links('pagination::custom') !!}
        </div>
    </div>
</section>
@endsection