@extends('front.layouts.layout')
@section('title', 'PSDP Projects')

@section('content')
<section class="inner-banner">
	<div class="auto-container clearfix">
		<div class="title pull-left">
			<h3>PSDP Projects</h3>
		</div><!-- /.title pull-left -->
		<div class="breadcumb pull-right">
			<ul class="list-inline">
				<li><a href="{{ url('/') }}">Home</a></li>
				<li><span>PSDP Projects</span></li>
			</ul><!-- /.list-inline -->
		</div><!-- /.breadcumb pull-right -->
	</div><!-- /.auto-container -->
</section><!-- /.inner-banner -->


@endsection
