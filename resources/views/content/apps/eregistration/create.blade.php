@extends('layouts/contentLayoutMaster')

@section('title', 'Create E-Registration')

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

            <form action="{{ route('e_registerations.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="NameOfOwner">Name Of Owner</label>
                    <input type="text" class="form-control" id="NameOfOwner" name="NameOfOwner" placeholder="Name of owner" required>
                </div>
                <div class="form-group">
                    <label for="district">District</label>
                    <input type="text" class="form-control" id="district" name="district" placeholder="Enter District" required>
                </div>

                <div class="form-group">
                    <label for="PECNo">PEC No</label>
                    <input type="text" class="form-control" id="PECNo" name="PECNo" placeholder="Enter PEC No" required>
                </div>


                <div class="form-group">
                    <label for="categoryAppliedFor">Category Applying For</label>
                    {!! Form::select('categoryAppliedFor', \Helper::getData('categoryAppliedFor'),null, array('class' => 'form-control','required')) !!}
                </div>


                <div class="form-group">
                    <label for="NameOfContractor">Name Of contractor</label>
                    <input type="text" class="form-control" id="NameOfContractor" name="NameOfContractor" placeholder="Name Of contractor" required>
                </div>


                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" name="address" required></textarea>
                </div>

                <div class="form-group">
                    <label for="categoryPEC">Category PEC</label>
                    {!! Form::select('categoryPEC', \Helper::getData('categoryAppliedFor'),null, array('class' => 'form-control','required')) !!}
                </div>


                <div class="form-group">
                    <label for="CNICNumber">CNICNumber</label>
                    <input type="text" class="form-control" id="CNICNumber" name="CNICNumber" placeholder="CNIC Number" required>
                </div>

                <div class="form-group">
                    <label for="speCODE">Specification Code</label>
                    <input type="text" class="form-control" id="speCODE" name="speCODE" placeholder=" Specification Code" required>
                </div>

                <div class="form-group">
                    <label for="fbrNONTN">FBR Registration No *</label>
                    <input type="text" class="form-control" id="fbrNONTN" name="fbrNONTN" placeholder="FBR Registration No" required>
                </div>

                <div class="form-group">
                    <label for="Email">Email Address *</label>
                    <input type="text" class="form-control" id="Email" name="Email" placeholder="Email Address *" required>
                </div>

                <div class="form-group">
                    <label for="mobNo">Mobile No. *</label>
                    <input type="text" class="form-control" id="mobNo" name="mobNo" placeholder="Mobile No *" required>
                </div>

                <div class="form-group">
                    <label for="RegLimted">Is Your firm registered/ Limted <span style="color:red;">*</span></label>
                    {!! Form::select('RegLimted', \Helper::getData('RegLimted'),null, array('class' => 'form-control','required')) !!}
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

                <div class="form-group row" id="app">

                    {{ BsForm::image('CNICUpload')->label('CNIC (Both Side) *')->collection('CNICUpload')->files() }}
                    {{ BsForm::image('fbrUpload')->label('FBR *')->collection('fbrUpload')->files() }}
                    {{ BsForm::image('PEC2020')->label('PEC *')->collection('PEC2020')->files() }}
                    {{ BsForm::image('FormHUpload')->label('Form - H (Incase of Company)')->collection('FormHUpload')->files() }}
                    {{ BsForm::image('PreEnlistmentUpload')->label(' Prevouse Enlistment')->collection('PreEnlistmentUpload')->files() }}
                </div>

                <div class="custom-control custom-switch custom-switch-primary">
                    <p class="mb-50">Status</p>
                    <input type="checkbox" name="status" class="custom-control-input" id="customSwitch10" />
                    <label class="custom-control-label" for="customSwitch10">
                        <span class="switch-icon-left"><i data-feather="check"></i></span>
                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                    </label>
                </div>











                <div class="form-group pt-3">
                 
                    <label style="cursor:pointer;"><input type="checkbox" required id="decleration" name="decleration" value="agree" style="cursor:pointer;"> I agree</label>
                    <div class="note">
                        <div class="i fa fa-caret-up"></div>
                        Certified that the information given in this application form is correct to the best of my knowledge & belief and i further understand that in case any information is found to be incorrect later on, my enlistment is liable to be cancelled.
                    </div>
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