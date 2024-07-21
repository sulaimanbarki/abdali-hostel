@extends('layouts/contentLayoutMaster')

@section('title', 'Edit Contact Info')

@section('vendor-style')
{{-- Vendor Css files --}}

<link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
@endsection

@section('page-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/editors/quill/katex.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/editors/quill/monokai-sublime.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/editors/quill/quill.snow.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/editors/quill/quill.bubble.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-quill-editor.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-user.css')) }}">
@endsection

@section('content')
<!-- users edit start -->
<section class="app-user-edit">
    <div class="card">
        <div class="card-body">

            <form action="{{ route('roads.update',$road->id) }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="name">ROAD NAME : </label>
                    <input type="text" value="{{$road->name}}" class="form-control" id="name" name="name" placeholder=" Enter Road Name">
                </div>

                <div class="form-group">
                    <label for="roadLength">ROAD LENGTH " </label>
                    <input type="text" value="{{$road->road_length}}" class="form-control" name="road_length" id="roadLength" placeholder=" Enter Road Length" />
                </div>
                <div class="form-group">
                    <label for="threats">THREAT/ACTIVITIES : </label>
                    <input type="text" value="{{$road->note}}" class="form-control" name="note" id="threats" placeholder=" Enter Activities" />
                </div>
                <div class="form-group">
                    <label for="currentStatus">CURRENT STATUS : </label>
                    <input type="text" value="{{$road->current_status}}" class="form-control" name="current_status" id="currentStatus" placeholder=" Enter Current Status" />
                </div>
                <div class="form-group">
                    <label for="basicSelect">OFFICE : </label>
                    {!! Form::select('telephone_id', \Helper::getOffice('office'),null, array('class' => 'form-control')) !!}
                </div>
                <div class="custom-control custom-switch custom-switch-primary">
                    <p class="mb-50">Status</p>
                    <input type="checkbox" name="status" class="custom-control-input" id="customSwitch10" {{$road->status==true? 'checked': ''}} />
                    <label class="custom-control-label" for="customSwitch10">
                        <span class="switch-icon-left"><i data-feather="check"></i></span>
                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                    </label>
                </div>
                <button type="submit" class="btn btn-primary float-right">Update</button>
            </form>
        </div>
    </div>
</section>
<!-- users edit ends -->
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/editors/quill/katex.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/editors/quill/highlight.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/editors/quill/quill.min.js')) }}"></script>
@endsection

@section('page-script')
{{-- Page js files --}}

<script src="{{ asset(mix('js/scripts/components/components-navs.js')) }}"></script>
<script src="{{ asset(mix('js/scripts/pages/app-slide-create.js')) }}"></script>

@endsection