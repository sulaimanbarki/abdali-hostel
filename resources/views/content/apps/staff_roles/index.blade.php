@extends('layouts/contentLayoutMaster')

@section('title', 'Staff Roles')

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
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Staff Roles</h4>
                <a href="{{ route('staff_roles.create') }}" class="btn btn-primary">Add Staff Role</a>
            </div>
            <div class="card-datatable table-responsive pt-0">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($staffRoles as $role)
                            <tr>
                                <td>{{ $role->staff_name }}</td>
                                <td>
                                    <a href="{{ route('staff_roles.show', $role->id) }}" class="btn btn-warning btn-sm">
                                        <i data-feather="eye" class="font-medium-3"></i>
                                    </a>
                                    <a href="{{ route('staff_roles.edit', $role->id) }}" class="btn btn-primary btn-sm">
                                        <i data-feather="edit-2" class="font-medium-3"></i>
                                    </a>
                                    {!! Form::open([
                                        'method' => 'DELETE',
                                        'route' => ['staff_roles.destroy', $role->id],
                                        'style' => 'display:inline',
                                    ]) !!}
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i data-feather="trash" class="font-medium-3"></i>
                                    </button>
                                    {!! Form::close() !!}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
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
