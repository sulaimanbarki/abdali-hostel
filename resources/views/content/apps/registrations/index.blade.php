@extends('layouts/contentLayoutMaster')

@section('title', 'Registrations')

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
                {{-- @can('registration-create') --}}
                <a class="btn btn-primary m-2" href="{{ route('registrations.create') }}"> New Registration</a>
                {{-- @endcan --}}
            </div>
            <div class="table table-responsive pt-0">

                <table class=" table">
                    <thead class="thead-light">
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Floor No</th>
                            <th>Room No</th>
                            <th>Room Type</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($registrations as $registration)
                            <tr>
                                <td>{{ $registration->id }}</td>
                                <td>{{ $registration->name }}</td>
                                <td>{{ $registration->floor->floor_name }}</td>
                                <td>{{ $registration->room->room_name }}</td>
                                <td>{{ $registration->room->room_type }}</td>
                                <td>

                                    <a href="{{ route('registrations.show', $registration->id) }}"
                                        class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a>
                                    <a href="{{ route('registrations.edit', $registration->id) }}"
                                        class="btn btn-primary btn-sm"><i data-feather="edit-2"
                                            class="font-medium-3"></i></a>
                                    {!! Form::open([
                                        'method' => 'DELETE',
                                        'route' => ['registrations.destroy', $registration->id],
                                        'style' => 'display:inline',
                                    ]) !!}
                                    <button type="submit" class="btn btn-danger btn-sm"><i data-feather="trash"
                                            class="font-medium-3"></i></button>
                                    {!! Form::close() !!}

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>

            <div class="row p-1">
                <div class="col-lg-12">
                    {!! $registrations->links() !!}
                </div>
            </div>
        </div>
    </section>
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
    <script>
        $(function() {
            // Add your custom jQuery code here if needed
        });
    </script>
@endsection
