@extends('layouts/contentLayoutMaster')

@section('title', 'E-Registration')

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
    <div class="row">
      <div class="col-lg-9">
        <form action="{{route('e_registerations.index')}}" method="GET" class="form-inline">

          <label for="RegLimted"> Status</label>
          {!! Form::select('progress', \Helper::getData('progress'),$progress, array('class' => 'form-control')) !!}


          <label for="form_date">From Date</label>

          <input type="date" name="form_date" class="form-control" value="{{$form_date }}" />


          <label for="to_date">To Date</label>
          <input type="date" name="to_date" class="form-control" value="{{$to_date }}" />
          <button type="submit" class="btn btn-primary m-2">Filter</button>
          <a href="{{route('e_registerations.index')}}" class="btn btn-warning">Clear Filter</a>
        </form>
      </div>
      <div class="col-lg-3 text-right">
        @can('e_registeration-create')
        <a class="btn btn-primary m-2" href="{{ route('e_registerations.create') }}"> New E-Registration</a>
        @endcan
      </div>
    </div>

    <div class="table table-responsive pt-0">

      <table class="table" id="e_register">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Name of Owner</th>
            <th>Name of Contractor</th>
            <th>Status</th>
            <th>Progress</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
             
             
            
          @foreach($e_registerations as $key=> $e_registeration)
         
          <tr>
            <td>{{   $key=$key+ 1}}</td>
            <td>{{$e_registeration->NameOfOwner}}</td>
            <td>{{$e_registeration->NameOfContractor}}</td>
            <td>{!! \Helper::showStatus($e_registeration->status)!!}</td>
            <td>
              {{UcFirst($e_registeration->progress)}}
            </td>
            <td>
           
            
 


                  @can('e_registeration-list')
                  <a href="{{ route('e_registerations.show', $e_registeration->id) }}" class="dropdown-item"><span>Show</span></a>
                  @endcan

                  @can('e_registeration-edit')
                  <a href="{{ route('e_registerations.edit', $e_registeration->id) }}" class="dropdown-item"><i data-feather="edit-2" class="mr-50"></i><span>Edit</span></a>
                  @endcan

                  @can('e_registeration-delete')
                  {!! Form::open(['method' => 'DELETE','route' => ['e_registerations.destroy', $e_registeration->id],'style'=>'display:inline']) !!}
                  <button type="submit" class="dropdown-item "><i data-feather="trash" class="mr-50"></i> <span>Delete</span></button>

                  {!! Form::close() !!}
                  @endcan
              
           
              <!-- <a href="{{ route('e_registerations.show', $e_registeration->id) }}" class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a> -->



            </td>
          </tr>
          @endforeach
        </tbody>
      </table>

    </div>


    <div class="row p-1">
      <div class="col-lg-12">
     
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
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
@endsection

@section('page-script')
{{-- Page js files --}}
<script>
  $(function() {

    var table = $('#e_register').DataTable({
      dom: 'Bfrtip',
      lengthChange: true,
      buttons: ["copy", "csv", "excel", "pdf", "print"],
    });

  });
</script>
@endsection