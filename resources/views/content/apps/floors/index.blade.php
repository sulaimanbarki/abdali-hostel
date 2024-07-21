@extends('layouts/contentLayoutMaster')

@section('title', 'Floor List')

@section('vendor-style')
{{-- Page Css files --}}
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
<!-- floors list start -->
<section class="app-floor-list">
  <!-- list section start -->
  <div class="card">
    <div class="col-lg-12 text-right">
      {{-- @can('floor-create') --}}
      <a class="btn btn-primary m-2" href="{{ route('floors.create') }}"> Create New Floor</a>
      {{-- @endcan --}}
    </div>
    <div class="card-datatable table-responsive pt-0">
      <table class="floor-list-table table">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Floor Name</th>
            <th>Description</th>
            <th>Total Rooms</th>
            <th>Actions</th>
          </tr>
        </thead>
        {{-- display floors --}}
        <tbody>
          @foreach ($floors as $floor)
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="floor-{{ $floor->id }}">
                <label class="custom-control-label" for="floor-{{ $floor->id }}"></label>
              </div>
            </td>
            <td>{{ $floor->floor_name }}</td>
            <td>{{ $floor->description }}</td>
            <td>{{ $floor->total_rooms }}</td>
            <td>
              <a href="{{ route('floors.show', $floor->id) }}" class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a>
              <a href="{{ route('floors.edit', $floor->id) }}" class="btn btn-primary btn-sm"><i data-feather="edit-2" class="font-medium-3"></i></a>
              {!! Form::open(['method' => 'DELETE','route' => ['floors.destroy', $floor->id],'style'=>'display:inline']) !!}
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
<!-- floors list ends -->
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
{{-- <!-- <script src="{{ asset(mix('js/scripts/pages/app-floor-list.js')) }}"></script> --> --}}
@endsection
