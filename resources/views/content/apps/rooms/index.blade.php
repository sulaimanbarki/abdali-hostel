@extends('layouts/contentLayoutMaster')

@section('title', 'Room List')

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
<!-- rooms list start -->
<section class="app-user-list">
  <!-- rooms filter start -->

  <!-- rooms filter end -->
  <!-- list section start -->
  <div class="card">
    <div class="col-lg-12 text-right">
      {{-- @can('room-create') --}}
      <a class="btn btn-primary m-2" href="{{ route('rooms.create') }}"> Create New Room</a>
      {{-- @endcan --}}
    </div>
    <div class="card-datatable table-responsive pt-0">

      <table class="user-list-table table">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Room Name</th>
            <th>Floor</th>
            <th>Room Type</th>
            <th>No of Seats</th>
            <th>Price</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        {{-- display rooms --}}
        <tbody>
          @foreach ($rooms as $room)
          <tr>
            <td>
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="{{ $room->id }}">
                <label class="custom-control-label" for="{{ $room->id }}"></label>
              </div>
            </td>
            <td>{{ $room->room_name }}</td>
            <td>{{ $room->floor->floor_name }}</td>
            <td>{{ $room->room_type }}</td>
            <td>{{ $room->no_of_seats }}</td>
            <td>{{ $room->price }}</td>
            <td>{{ $room->status }}</td>
            <td>
              <a href="{{ route('rooms.show', $room->id) }}" class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a>
              <a href="{{ route('rooms.edit', $room->id) }}" class="btn btn-primary btn-sm"><i data-feather="edit-2" class="font-medium-3"></i></a>
              {!! Form::open(['method' => 'DELETE','route' => ['rooms.destroy', $room->id],'style'=>'display:inline']) !!}
              <button type="submit" class="btn btn-danger btn-sm"><i data-feather="trash" class="font-medium-3"></i></button>
              {!! Form::close() !!}
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <!-- Modal to add new room Ends-->
  </div>
  <!-- list section end -->
</section>
<!-- rooms list ends -->
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
@endsection
