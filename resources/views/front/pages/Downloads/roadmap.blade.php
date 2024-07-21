@extends('front.layouts.layout')
@section('title', 'Road Map')

@section('content')
<x-inner-page-header page='road-map' slug='road-map' />



<section class="gallery">
	<div class="custom-container">
		<div class="sec-title">
			<h3>Map of Azad Jammu & Kashmir</h3>
		</div>
		<div class="table-responsive">
			<p><img src="{{ asset('front/img/map/map.jpg') }}"></p>
		</div><!-- /.table-responsive -->
	</div><!-- /.auto-container -->
</section>



@endsection