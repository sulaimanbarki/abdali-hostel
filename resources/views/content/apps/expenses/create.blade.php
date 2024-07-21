@extends('layouts/contentLayoutMaster')

@section('title', 'Create New Expense')

@section('vendor-style')
<link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
@endsection

@section('page-style')
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
@endsection

@section('content')
<section class="app-expense-create">
    <div class="card p-3">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('expenses.index') }}"> Back</a>
                </div>
            </div>
        </div>

        @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        {!! Form::open(['route' => 'expenses.store', 'method' => 'POST']) !!}
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Expense Head:</strong>
                    {!! Form::select('expense_head_id', $expenseHeads, null, ['class' => 'form-control', 'placeholder' => 'Select Expense Head']) !!}
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Amount:</strong>
                    {!! Form::number('amount', null, ['class' => 'form-control', 'placeholder' => 'Amount']) !!}
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Paying Date:</strong>
                    {!! Form::date('paying_date', null, ['class' => 'form-control']) !!}
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Description:</strong>
                    {!! Form::textarea('description', null, ['class' => 'form-control', 'rows' => 2, 'placeholder' => 'Description']) !!}
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
