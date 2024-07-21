@extends('front.layouts.layout')
@section('title', 'About Us')

@section('content')

<section class="inner-banner gray-bg">
	<div class="auto-container clearfix">
		<div class="title pull-left">
			<h3>Organogram for C&W Department, AJ&K </h3>
		</div><!-- /.title pull-left -->
		<div class="breadcumb pull-right">
			<ul class="list-inline">
				<li><a href="index.php">Home</a></li>
				<li><span>Organogram</span></li>
			</ul><!-- /.list-inline -->
		</div><!-- /.breadcumb pull-right -->
	</div><!-- /.auto-container -->
</section><!-- /.inner-banner -->

<section class="pricing-style-two">
	<div class="auto-container">
		<div class="sec-title text-center">
            <img src="{{ asset('front/img/organogram/org-1.jpg') }}">
		</div>
		<!-- /.table-responsive -->
	</div><!-- /.auto-container -->
</section><!-- /.pricing-style-two -->

@endsection
