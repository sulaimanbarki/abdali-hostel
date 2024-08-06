@extends('layouts/contentLayoutMaster')

@section('title', 'Create New Staff')

@section('vendor-style')
    <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
@endsection

@section('page-style')
    <link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
@endsection

@section('content')
    <section class="app-staff-create">
        <div class="card p-3">
            <div class="row">
                <div class="col-lg-12 margin-tb">
                    <div class="pull-right">
                        <a class="btn btn-primary" href="{{ route('staff.index') }}"> Back</a>
                    </div>
                </div>
            </div>

            @if ($errors->any())
                <div class="alert alert-danger">
                    <strong>Whoops!</strong> There were some problems with your input.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            {!! Form::open(['route' => 'staff.store', 'method' => 'POST', 'files' => true]) !!}
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Name:</strong>
                        {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Name']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Father Name:</strong>
                        {!! Form::text('father_name', null, ['class' => 'form-control', 'placeholder' => 'Father Name']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>CNIC:</strong>
                        {!! Form::text('cnic', null, ['class' => 'form-control', 'placeholder' => 'CNIC']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Address:</strong>
                        {!! Form::text('address', null, ['class' => 'form-control', 'placeholder' => 'Address']) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Phone No:</strong>
                        {!! Form::text('phone_no', null, ['class' => 'form-control', 'placeholder' => 'Phone No']) !!}
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <label for="staff_role_id">Staff Role</label>
                        <select name="staff_role_id" id="staff_role_id" class="form-control" required>
                            <option value="" selected disabled>Select role</option>
                            @foreach ($staff_roles as $staff_role)
                                <option value="{{ $staff_role->id }}">
                                    {{ $staff_role->staff_name }}</option>
                            @endforeach
                        </select>
                        @error('role_id')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Status:</strong>
                        {!! Form::select('status', ['Active' => 'Active', 'Inactive' => 'Inactive'], 'Active', [
                            'class' => 'form-control',
                        ]) !!}
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Image:</strong>
                        {!! Form::file('image', ['class' => 'form-control']) !!}
                    </div>
                </div>

                <div class="col-12 mt-1">
                    <button type="submit" class="btn btn-primary float-right">Submit</button>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </section>
@endsection

@section('vendor-script')
    <script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
@endsection
