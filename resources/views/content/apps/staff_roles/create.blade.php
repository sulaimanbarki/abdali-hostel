@extends('layouts/contentLayoutMaster')

@section('title', 'Create Staff Role')

@section('content')
    <section class="app-staff-create">
        <div class="card p-3">
            <div class="row">
                <div class="col-lg-12 margin-tb">
                    <div class="pull-right">
                        <a class="btn btn-primary" href="{{ route('staff_roles.index') }}"> Back</a>
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

            {!! Form::open(['route' => 'staff_roles.store', 'method' => 'POST']) !!}
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Staff Role Name:</strong>
                        {!! Form::text('staff_name', null, ['class' => 'form-control', 'placeholder' => 'Staff Role Name']) !!}
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
