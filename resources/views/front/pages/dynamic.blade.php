@extends('front/layouts/layout')

@section('title', $pageData->title?? '')
@section('content')
<x-inner-page-header page='{{$pageData->loadwithlink}}' slug='{{$pageData->slug}}' />

<section class="news-page-details">
    <div class="custom-container">

        {!!$pageData->description!!}
    </div>
</section>

@endsection