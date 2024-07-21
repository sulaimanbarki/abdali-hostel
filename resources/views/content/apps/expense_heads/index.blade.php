@extends('layouts/contentLayoutMaster')

@section('title', 'Expense Head List')

@section('vendor-style')
{{-- Vendor Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/buttons.bootstrap4.min.css')) }}">
@endsection

@section('page-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-user.css')) }}">
@endsection

@section('content')
<!-- expense head list start -->
<section class="app-expense-head-list">
  <!-- list section start -->
  <div class="card">
    <div class="col-lg-12 text-right">
      {{-- @can('expense-head-create') --}}
      <a class="btn btn-primary m-2" href="{{ route('expense_heads.create') }}"> Create New Expense Head</a>
      {{-- @endcan --}}
    </div>
    <div class="card-datatable table-responsive pt-0">
      <table class="expense-head-list-table table">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
          </tr>
        </thead>
        {{-- display expense heads --}}
        <tbody>
          @foreach ($expenseHeads as $expenseHead)
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="expense-head-{{ $expenseHead->id }}">
                <label class="custom-control-label" for="expense-head-{{ $expenseHead->id }}"></label>
              </div>
            </td>
            <td>{{ $expenseHead->name }}</td>
            <td>{{ $expenseHead->description }}</td>
            <td>
              <a href="{{ route('expense_heads.show', $expenseHead->id) }}" class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a>
              <a href="{{ route('expense_heads.edit', $expenseHead->id) }}" class="btn btn-primary btn-sm"><i data-feather="edit-2" class="font-medium-3"></i></a>
              {!! Form::open(['method' => 'DELETE','route' => ['expense_heads.destroy', $expenseHead->id],'style'=>'display:inline']) !!}
              <button type="submit" class="btn btn-danger btn-sm"><i data-feather="trash" class="font-medium-3"></i></button>
              {!! Form::close() !!}
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
  <!-- list section end -->
</section>
<!-- expense head list ends -->
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{ asset(mix('vendors/js/tables/datatable/jquery.dataTables.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/datatables.bootstrap4.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.responsive.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/responsive.bootstrap4.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/datatables.buttons.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/buttons.bootstrap4.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
@endsection

@section('page-script')
{{-- Page js files --}}
{{-- <!-- <script src="{{ asset(mix('js/scripts/pages/app-expense-head-list.js')) }}"></script> --> --}}
@endsection
