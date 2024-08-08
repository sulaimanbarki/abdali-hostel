@extends('layouts/contentLayoutMaster')

@section('title', 'Edit Fee')

@section('vendor-style')
    {{-- Vendor Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
@endsection

@section('page-style')
    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
@endsection

@section('content')
    <!-- fees edit start -->
    <section class="app-user-edit">
        <div class="card">
            <div class="card-body">
                <form action="{{ route('fees.update', $fee->id) }}" method="POST">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label for="registration_name">Registration Name</label>
                        <input type="text" class="form-control" id="registration_name" name="registration_name"
                            value="{{ $fee->registration->name }}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="registration_father_name">Father Name</label>
                        <input type="text" class="form-control" id="registration_father_name"
                            name="registration_father_name" value="{{ $fee->registration->father_name }}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="fee_date">Fee Date</label>
                        <input type="month" class="form-control" id="fee_date" name="fee_date"
                            value="{{ $fee->fee_date->format('Y-m') }}" readonly>
                    </div>

                    <div class="form-group">
                        <label for="amount">Amount</label>
                        <input type="number" class="form-control" id="amount" name="amount" value="{{ $fee->amount }}"
                            required>
                    </div>





                    <button type="submit" class="btn btn-primary float-right">Update</button>
                </form>
            </div>
        </div>
    </section>
    <!-- fees edit ends -->
@endsection

@section('vendor-script')
    {{-- Vendor js files --}}
    <script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
    <script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
    <script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
@endsection

@section('page-script')
    {{-- Page js files --}}
    <script src="{{ asset(mix('js/scripts/components/components-navs.js')) }}"></script>
    <script src="{{ asset(mix('js/scripts/pages/app-slide-create.js')) }}"></script>
@endsection
