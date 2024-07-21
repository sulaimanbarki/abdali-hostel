@extends('layouts/contentLayoutMaster')

@section('title', 'Edit Expense Head')

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
<!-- expense head edit start -->
<section class="app-expense-head-edit">
  <div class="card">
    <div class="card-body">
      <div class="tab-content">
        <!-- Account Tab starts -->
        <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">
          <!-- expense head edit account form ends -->
        </div>
        <!-- Account Tab ends -->

        {{-- edit expense head form --}}
        <div>
          <div class="card">
            <div class="card-body">
              <form action="{{ route('expense_heads.update', $expenseHead->id) }}" method="POST">
                @method('PUT')
                @csrf
                <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" class="form-control" id="name" name="name" value="{{ $expenseHead->name }}">
                </div>

                <div class="form-group">
                  <label for="description">Description</label>
                  <textarea class="form-control" id="description" name="description">{{ $expenseHead->description }}</textarea>
                </div>

                <button type="submit" class="btn btn-primary float-right">Update</button>
              </form>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
<!-- expense head edit ends -->
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
