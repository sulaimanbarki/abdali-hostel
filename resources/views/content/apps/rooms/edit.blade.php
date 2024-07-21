@extends('layouts/contentLayoutMaster')

@section('title', 'Edit Room')

@section('vendor-style')
{{-- Vendor Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
@endsection

@section('page-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-user.css')) }}">
@endsection

@section('content')
<section class="app-user-edit">
    <div class="card p-3">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('rooms.index') }}"> Back</a>
                </div>
            </div>
        </div>

        @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        {!! Form::model($room, ['method' => 'PATCH','route' => ['rooms.update', $room->id]]) !!}
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="form-group">
                    <strong>Room Name:</strong>
                    {!! Form::text('room_name', null, array('placeholder' => 'Room Name','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="form-group">
                    <strong>Floor:</strong>
                    {!! Form::select('floor_id', $floors->pluck('floor_name', 'id'), null, array('class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
              <div class="form-group">
                  <strong>Room Type:</strong>
                  {!! Form::select('room_type', ['Single' => 'Single', 'Multiple' => 'Multiple'], null, array('class' => 'form-control')) !!}
              </div>
          </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="form-group">
                    <strong>No of Seats:</strong>
                    {!! Form::text('no_of_seats', null, array('placeholder' => 'No of Seats','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="form-group">
                    <strong>Price:</strong>
                    {!! Form::text('price', null, array('placeholder' => 'Price','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="form-group">
                    <strong>Status:</strong>
                    {!! Form::select('status', ['active' => 'Active', 'inactive' => 'Inactive'], null, array('class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-12 mt-1">
                <button type="submit" class="btn btn-primary float-right">Update</button>
            </div>
        </div>
        {!! Form::close() !!}
    </div>
</section>
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
@endsection

@section('page-script')
{{-- Page js files --}}
<script src="{{ asset(mix('js/scripts/pages/app-user-edit.js')) }}"></script>
<script src="{{ asset(mix('js/scripts/components/components-navs.js')) }}"></script>
@endsection
