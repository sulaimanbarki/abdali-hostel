@extends('layouts/contentLayoutMaster')

@section('title', 'Tender')

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
      @can('tender-create')
      <a class="btn btn-primary m-2" href="{{ route('tenders.create') }}"> New Tender</a>
      @endcan
    </div>
    <div class="table table-responsive pt-0">

      <table class=" table">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Title</th>
            <th>Status</th>
            <th>Office</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          @foreach($tenders as $tender)
          <tr>
            <td>{{$tender->id}}</td>
            <td>{{$tender->title}}</td>
            <td>{!! \Helper::showStatus($tender->status)!!}</td>
            <td>{{$tender->Office()->exists()? $tender->Office->officename: ''}}</td>
            <td>
              <div class="dropdown">
                <button type="button" class="btn btn-sm dropdown-toggle hide-arrow" data-toggle="dropdown">
                  <i data-feather="more-vertical"></i>
                </button>
                <div class="dropdown-menu">

                  @can('tender-edit')
                  <a href="{{ route('tenders.edit', $tender->id) }}" class="dropdown-item"><i data-feather="edit-2" class="mr-50"></i><span>Edit</span></a>
                  @endcan

                  @can('tender-delete')
                  {!! Form::open(['method' => 'DELETE','route' => ['tenders.destroy', $tender->id],'style'=>'display:inline']) !!}
                  <button type="submit" class="dropdown-item "><i data-feather="trash" class="mr-50"></i> <span>Delete</span></button>

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


    <div class="row p-1">
      <div class="col-lg-12">
        {!! $tenders->links() !!}
      </div>
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