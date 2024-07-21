@extends('layouts/contentLayoutMaster')

@section('title', 'Create Page')

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

            <form action="{{ route('pages.store') }}" method="POST" enctype="multipart/form-data">
                @csrf


                <div class="form-group">
                    <label for="banner_title">Banner Title</label>
                    <input type="text" class="form-control" id="banner_title" name="banner_title" placeholder="Banner Title" required>
                </div>




                <div class="form-group">
                    <label for="name">Title </label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="title" required>
                </div>

                <div class="form-group">
                    <label for="slogan">Slogan (Optional)</label>
                    <input type="text" class="form-control" id="slogan" name="slogan" placeholder="slogan">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <div id="snow-wrapper">
                        <div id="full-container">
                            <div class="editor pb-5">
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="description" id="description" />
                </div>
                <div class="form-group">
                    <label for="image_caption">Image Caption (if any)</label>
                    <textarea class="form-control" id="image_caption" name="image_caption">
                </textarea>
                </div>
                <div class="form-group row" id="app">

                    {{ BsForm::image('banner')->label('Banner Image')->collection('banner')->files() }}
                    {{ BsForm::image('page')->label('Other Image IF Any')->collection('page')->files() }}
                </div>



                <div class="custom-control custom-switch custom-switch-primary">
                    <p class="mb-50">Deletable</p>
                    <input type="checkbox" name="deletable" class="custom-control-input" id="customSwitch10" />
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