@extends('front.layouts.layout')
@section('title', 'Contact Us')

@section('content')
<section class="inner-banner blue-bg">
    <div class="auto-container clearfix">
        <div class="title pull-left">
            <h3>News Details</h3>
        </div><!-- /.title pull-left -->
        <div class="breadcumb pull-right">
            <ul class="list-inline">
                <li><a href="{{url('/')}}">Home</a></li>
                <li><span>News Details</span></li>
            </ul><!-- /.list-inline -->
        </div><!-- /.breadcumb pull-right -->
    </div><!-- /.auto-container -->
</section><!-- /.inner-banner -->



<section class="contact-info gray-bg">
    <div class="auto-container">
        <div class="row">
            <h3>{{$news->title}}</h3>
            {!!$news->description!!}
        </div><!-- /.row -->
    </div><!-- /.auto-container -->
</section><!-- /.contact-info -->

@endsection