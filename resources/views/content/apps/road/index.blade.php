@extends('layouts/contentLayoutMaster')

@section('title', 'Road')

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
<!-- users list start -->
<section class="app-user-list">
  <!-- users filter start -->

  <!-- users filter end -->
  <!-- list section start -->
  <div class="card">
    <div class="col-lg-12 text-right">
      @can('road-create')
      <a class="btn btn-primary m-2" href="{{ route('roads.create') }}"> New Road</a>
      @endcan
    </div>
    <div class="table table-responsive pt-0">

      <table class=" table">
        <thead class="thead-light">
          <tr>
            <th>S.#</th>
            <th>Name of Roads</th>
            <th>Length</th>
            <th>Threat/Activities</th>
            <th>Current Status</th>            
            <th>OFFICE NAME</th>
            <th>STATUS</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
        @foreach($roads as $index=>$road)
          <tr>
            <td>{{$index+1}}</td>
            <td>{{$road->name}}</td>
            <td>{{$road->road_length}}</td>
            <td>{{$road->note}}</td>
            <td>{{$road->current_status}}</td>
            <td>{{$road->telephone->officename}}</td>
            <td>{!! \Helper::showStatus($road->status)!!}</td>
            <td>
            <div class="dropdown">
                <button type="button" class="btn btn-sm dropdown-toggle hide-arrow" data-toggle="dropdown">
                  <i data-feather="more-vertical"></i>
                </button>
                <div class="dropdown-menu">

                  @can('road-edit')
                  <a href="{{ route('roads.edit', $road->id) }}" class="dropdown-item"><i data-feather="edit-2" class="mr-50"></i><span> {{ __('locale.Edit') }}</span></a>
                  @endcan

                  @can('road-delete')
                  {!! Form::open(['method' => 'DELETE','route' => ['roads.destroy', $road->id],'style'=>'display:inline']) !!}
                  <button type="submit" class="dropdown-item "><i data-feather="trash" class="mr-50"></i> <span> {{ __('locale.Delete') }}</span></button>

                  {!! Form::close() !!}
                  @endcan
                </div>
              </div>




            </td>
          </tr>
          @endforeach
        </tbody>
      </table>

    </div>


    
    <!-- Modal to add new user Ends-->
  </div>

  <!-- list section end -->
</section>
<!-- users list ends -->
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