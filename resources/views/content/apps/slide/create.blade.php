@extends('layouts/contentLayoutMaster')

@section('title', 'Create Slide')

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

            <form action="{{ route('slides.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="name">Title</label>
                    <input type="text" class="form-control" id="title" name="en_title" placeholder="title"  required>
                </div>
                <div class="form-group">
                    <label for="ur_title">عنوان</label>
                    <input type="text" class="form-control" id="ur_title" name="ur_title" placeholder="عنوان">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <div id="snow-wrapper">
                        <div id="en-container">
                            <div class="en_editor pb-5">
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="en_description" id="en_description" />
                </div>
                <div class="form-group">
                    <label>تفصیل</label>
                    <div id="snow-wrapper">
                        <div id="ur-container">
                            <div class="ur_editor pb-5">
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="ur_description" id="ur_description" />
                </div>
                <div class="form-group" id="app">
                    <label for="Logo">Slide Image</label>
                    {{ BsForm::image('slide')->collection('slide')->files() }}

                </div>

                <div class="custom-control custom-switch custom-switch-primary">
                    <p class="mb-50">Status</p>
                    <input type="checkbox" name="status" class="custom-control-input" id="customSwitch10" />
                    <label class="custom-control-label" for="customSwitch10">
                        <span class="switch-icon-left"><i data-feather="check"></i></span>
                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                    </label>
                </div>












                <button type="submit" class="btn btn-primary float-right">Create</button>
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