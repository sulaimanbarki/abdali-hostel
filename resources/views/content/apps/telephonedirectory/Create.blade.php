@extends('layouts/contentLayoutMaster')

@section('title', 'Create Contact Info')

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

            <form action="{{ route('telephones.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="officename">OFFICE NAME</label>
                    <input type="text" class="form-control" id="officename" name="officename" placeholder=" Enter Office Name">
                </div>

                <div class="form-group">
                    <label for="phoneNO">PHONE Nunber</label>
                    <input type="text" class="form-control" name="phoneNO" id="phoneNO" placeholder=" Enter Phone Number" required />
                </div>
                <div class="form-group">
                    <label for="faxNO">FAX Number</label>
                    <input type="text" class="form-control" name="faxNO" id="faxNO" placeholder=" Enter Fax Number" required/>
                </div>
                <div class="form-group">
                    <label for="moblieNO">MOBILE Number</label>
                    <input type="text" class="form-control" name="moblieNO" id="moblieNO" placeholder=" Enter Mobile Number" required/>
                </div>
                <div class="form-group">
                    <label for="district">District</label>
                    <input type="text" class="form-control" name="district" id="district" placeholder=" Enter District" required />
                </div>
                <div class="form-group">
                    <label for="basicSelect">Type</label>
                    {!! Form::select('division', \Helper::telePhoneType(),null, array('class' => 'form-control')) !!}
                </div>
                <button type="submit" class="btn btn-primary float-right">Submit</button>
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