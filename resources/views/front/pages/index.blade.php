@extends('front/layouts/layout')

@section('title', 'Home')
@section('content')

<x-HealthWelcome />
<x-AdminHead />

<x-Projects />
<!-- <x-counter /> -->
<x-News />
<!-- <x-Acievement /> -->
<!-- <x-Twitter /> -->

@endsection