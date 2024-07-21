@extends('layouts/contentLayoutMaster')

@section('title', 'Dashboard')

@section('vendor-style')
<!-- vendor css files -->
<link rel="stylesheet" href="{{ asset(mix('vendors/css/charts/apexcharts.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/toastr.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap4.min.css')) }}">
@endsection
@section('page-style')
<!-- Page css files -->
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/charts/chart-apex.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/extensions/ext-component-toastr.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-invoice-list.css')) }}">
@endsection

@section('content')
<!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
  <div class="row match-height">
    <!-- Greetings Card starts -->
    <div class="col-lg-12 col-md-12 col-sm-12">
      <div class="card card-congratulations">
        <div class="card-body text-center">
          <img src="{{asset('images/elements/decore-left.png')}}" class="congratulations-img-left" alt="card-img-left" />
          <img src="{{asset('images/elements/decore-right.png')}}" class="congratulations-img-right" alt="card-img-right" />
          <div class="avatar avatar-xl bg-primary shadow">
            <div class="avatar-content">
              <i data-feather="award" class="font-large-1"></i>
            </div>
          </div>
          <div class="text-center">
            <h1 class="mb-1 text-white">Welcome {{Auth::User()->name}},</h1>
            <p class="card-text m-auto w-75">
              {{$themeSetting->websiteName}}
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- Greetings Card ends -->




  </div>





  <!-- List DataTable -->

  <!--/ List DataTable -->
</section>
<!-- Dashboard Analytics end -->
@endsection

@section('vendor-script')
<!-- vendor files -->
<script src="{{ asset(mix('vendors/js/charts/apexcharts.min.js')) }}"></script>
<!-- <script src="{{ asset(mix('vendors/js/extensions/toastr.min.js')) }}"></script> -->
<script src="{{ asset(mix('vendors/js/extensions/moment.min.js')) }}"></script>

@endsection
@section('page-script')
<!-- Page js files -->
<script src="{{ asset(mix('js/scripts/pages/dashboard-analytics.js')) }}"></script>
<!-- <script src="{{ asset(mix('js/scripts/pages/app-invoice-list.js')) }}"></script> -->
@endsection