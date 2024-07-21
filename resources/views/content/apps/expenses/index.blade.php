@extends('layouts/contentLayoutMaster')

@section('title', 'Expense List')

@section('vendor-style')
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/dataTables.bootstrap4.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/tables/datatable/responsive.bootstrap4.min.css')) }}">
@endsection

@section('page-style')
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
@endsection

@section('content')
<section class="app-expense-list">
  <div class="card">
    <div class="col-lg-12 text-right">
      <a class="btn btn-primary m-2" href="{{ route('expenses.create') }}"> Create New Expense</a>
    </div>
    <div class="card-datatable table-responsive pt-0">
      <table class="expense-list-table table">
        <thead class="thead-light">
          <tr>
            <th>Expense Head</th>
            <th>Amount</th>
            <th>Paying Date</th>
            <th>Description</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($expenses as $expense)
          <tr>
            <td>{{ $expense->expenseHead->name }}</td>
            <td>{{ $expense->amount }}</td>
            <td>{{ $expense->paying_date }}</td>
            <td>{{ $expense->description }}</td>
            <td>
              <a href="{{ route('expenses.show', $expense->id) }}" class="btn btn-warning btn-sm"><i data-feather="eye" class="font-medium-3"></i></a>
              <a href="{{ route('expenses.edit', $expense->id) }}" class="btn btn-primary btn-sm"><i data-feather="edit-2" class="font-medium-3"></i></a>
              {!! Form::open(['method' => 'DELETE','route' => ['expenses.destroy', $expense->id],'style'=>'display:inline']) !!}
              <button type="submit" class="btn btn-danger btn-sm"><i data-feather="trash" class="font-medium-3"></i></button>
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
<script src="{{ asset(mix('vendors/js/tables/datatable/jquery.dataTables.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/datatables.bootstrap4.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/dataTables.responsive.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/tables/datatable/responsive.bootstrap4.js')) }}"></script>
@endsection
