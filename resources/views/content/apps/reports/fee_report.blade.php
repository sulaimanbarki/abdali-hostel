@extends('layouts/contentLayoutMaster')

@section('title', 'Fee Reports')

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
        
        <div class="card">
            <div class="col-lg-12 text-right">
                <form action="">
                    <div class="row">
                        <div class="col-md-4">
                            <input type="month" name="fee_month" id="fee_month" class="form-control mr-2"
                                value="{{ date('Y-m') }}" />
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-primary" type="submit" id="datebetween">
                                Month Wise
                            </button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="row mt-5">
                <div class="col-md-12">
                    <div id="fee-report-container" class="card-body">
                        <!-- Report data will be appended here -->
                    </div>
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
            $('#datebetween').click(function(e) {
                e.preventDefault(); // Prevent the default form submission

                var feeMonth = $('#fee_month').val();

                if (feeMonth) {
                    $.ajax({
                        url: '{{ route('reports.fee_reports-bydate') }}',
                        method: 'GET',
                        data: {
                            fee_month: feeMonth,
                        },
                        success: function(response) {
                            $('#fee-report-container').empty();
                            var reportHtml = '';

                            response.fee_reports.forEach(function(report) {
                                reportHtml += `<div class="card mb-3">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-3 mt-2">
                                                <h4>Floor No: ${report.floor}</h4>
                                            </div>
                                            <div class="col-md-3 mt-2">
                                                <h4>Room No: ${report.room}</h4>
                                            </div>
                                            <div class="col-md-3 mt-2">
                                                <h4>Name: ${report.name}</h4>
                                            </div>
                                            <div class="col-md-3 mt-2">
                                                <h4>Fee: ${report.amount}</h4>
                                            </div>
                                            <div class="col-md-3 mt-2">
                                                <h4>Status: ${report.status}</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>`;
                            });

                            reportHtml += `<div class="card mt-3">
                                <div class="card-body">
                                    <h4>Total Fee Amount: ${response.total_fee_amount}</h4>
                                    <h4>Total Transaction Amount: ${response.total_transaction_amount}</h4>
                                    <h4>Total Amount: ${response.total_amount}</h4>
                                </div>
                            </div>`;

                            $('#fee-report-container').append(reportHtml);
                        },
                        error: function(error) {
                            console.log('Error:', error);
                        }
                    });
                } else {
                    alert('Please select a month.');
                }
            });
        });
    </script>
@endsection
