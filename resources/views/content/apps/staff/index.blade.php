@extends('layouts/contentLayoutMaster')

@section('title', 'Staff List')

@section('vendor-style')
    {{-- Vendor Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap4.min.css')) }}">
    <link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap4.min.css')) }}">
@endsection

@section('page-style')
    {{-- Page Css files --}}
    <link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-user.css')) }}">
@endsection

@section('content')
    <section class="app-user-list">
        <!-- list section start -->
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Staff List</h4>
                <a href="{{ route('staff.create') }}" class="btn btn-primary">Add Staff</a>
            </div>
            <div class="card-datatable table-responsive pt-0">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Father Name</th>
                            <th>Address</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($staff as $s)
                            <tr>
                                <td>{{ $s->name }}</td>
                                <td>{{ $s->father_name }}</td>
                                <td>{{ $s->address }}</td>
                                <td>{{ $s->status }}</td>
                                <td>
                                    <a href="{{ route('staff.show', $s->id) }}" class="btn btn-warning btn-sm">
                                        <i data-feather="eye" class="font-medium-3"></i>
                                    </a>
                                    <a href="{{ route('staff.edit', $s->id) }}" class="btn btn-primary btn-sm">
                                        <i data-feather="edit-2" class="font-medium-3"></i>
                                    </a>
                                    {!! Form::open(['method' => 'DELETE', 'route' => ['staff.destroy', $s->id], 'style' => 'display:inline']) !!}
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i data-feather="trash" class="font-medium-3"></i>
                                    </button>
                                    {!! Form::close() !!}
                                    <a href="{{ route('staff.payment', $s->id) }}" class="btn btn-primary btn-sm">
                                        <i data-feather="dollar-sign" class="font-medium-3"></i>
                                        </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- list section end -->
    </section>
@endsection

@section('vendor-script')
    {{-- Vendor js files --}}
    <script src="{{ asset(mix('vendors/js/tables/datatable/jquery.dataTables.min.js')) }}"></script>
    <script src="{{ asset(mix('vendors/js/tables/datatable/datatables.bootstrap4.min.js')) }}"></script>
    <script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.responsive.min.js')) }}"></script>
    <script src="{{ asset(mix('vendors/js/tables/datatable/responsive.bootstrap4.min.js')) }}"></script>
@endsection

@section('page-script')
    {{-- Page js files --}}
    <script src="{{ asset(mix('js/scripts/pages/app-user-list.js')) }}"></script>
@endsection
