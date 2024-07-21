@extends('layouts/contentLayoutMaster')

@section('title', 'TelePhone Directory')

@section('vendor-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/buttons.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <div class="row">
      <div class="col-lg-6 text-left p-2 d-flex">
        <input type="search" id="myInput" class="form-control w-50 " placeholder="Search" />
        <button type="button" class="btn btn-primary">
          <i class="fas fa-search"></i>
        </button>
      </div>
      <div class="col-lg-6 text-right">
        @can('slide-create')
        <a class="btn btn-primary m-2" href="{{ route('telephones.create') }}"> New Telephone</a>
        @endcan
      </div>
    </div>
    <div class="table table-responsive pt-0">

      <table class=" table" id="myTable">
        <thead class="thead-light">
          <tr>
            <th>id</th>
            <th>Office Name</th>
            <th>Phone No.</th>
            <th>Fax No.</th>
            <th>Mobile No.</th>
            <th>Division.</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach($telephones as $tel)
          <tr>
            <td>{{$tel->id}}</td>
            <td>{{$tel->officename}} {{$tel->division!='other' ? ' - '. UCFirst($tel->district) : ''}}</td>
            <td>{{$tel->phoneNO}}</td>
            <td>{{$tel->faxNO}}</td>
            <td>{{$tel->moblieNO}}</td>
            <td>{{$tel->division}}</td>
            <td>
              <div class="dropdown">
                <button type="button" class="btn btn-sm dropdown-toggle hide-arrow" data-toggle="dropdown">
                  <i data-feather="more-vertical"></i>
                </button>
                <div class="dropdown-menu">

                  @can('telephone-edit')
                  <a href="{{ route('telephones.edit', $tel->id) }}" class="dropdown-item"><i data-feather="edit-2" class="mr-50"></i><span>Edit</span></a>
                  @endcan

                  @can('telephone-delete')
                  {!! Form::open(['method' => 'DELETE','route' => ['telephones.destroy', $tel->id],'style'=>'display:inline']) !!}
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
<!-- <script src="{{ asset(mix('js/scripts/pages/app-slide-list.js')) }}"></script> -->


<script>
  $(document).ready(function() {
    $("#myInput").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
  });
</script>
@endsection