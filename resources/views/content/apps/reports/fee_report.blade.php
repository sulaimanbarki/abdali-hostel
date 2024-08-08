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
                                <button class="btn btn-primary" type="submit" id="monthwise">
                                    Month Wise
                                </button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="row mt-5">
                    <div class="col-md-6">
                        <div id="fee-report-container" class="card-body">
                            <!-- Fee report data will be appended here -->
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="expense-report-container" class="card-body">
                            <!-- Expense report data will be appended here -->
                        </div>
                    </div>
                </div>

                <!-- Summary Footer -->
                <div class="card-footer">
                    <div class="row">
                        <div class="col-md-6 text-start">
                            <h4>Dues : <span id="dues-payment">0.00</span></h4>
                            <h4>Payment: <span id="total-payment">0.00</span></h4>
                            <h4>Total Amount: <span id="total-amount">0.00</span></h4>
                        </div>
                        <div class="col-md-6 text-end">
                            <h4>Total Debit Amount: <span id="total-debit-amount">0.00</span></h4>
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
        <script>
            $(function() {
                $('#monthwise').click(function(e) {
                    e.preventDefault();

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
                                $('#expense-report-container').empty();

                                var feeHtml = '';
                                var expenseHtml = '';
                                var staffTransactionHtml = '';

                                // Fees Data
                                if (response.daily_fees && response.daily_fees.length > 0) {
                                    response.daily_fees.forEach(function(fee) {
                                        feeHtml += `
                                        <div class="card mb-1">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-12 mt-2">
                                                        <p class="text-start">
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${fee.registration_name}</span>
                                                            in Floor No
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${fee.floor_name}</span>
                                                            for Room No
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${fee.room_name}</span>
                                                            paid
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${parseFloat(fee.paid_amount).toFixed(2)}</span>
                                                            out of
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${parseFloat(fee.amount).toFixed(2)}</span>
                                                            on
                                                            <span style="font-weight: bold; font-style: italic; color: green;">${new Date(fee.fee_date).toLocaleDateString()}</span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>`;
                                    });
                                } else {
                                    feeHtml +=
                                        `<div class="alert alert-info">No fee data available for the selected month.</div>`;
                                }

                                // Expenses Data
                                if (response.daily_expenses && response.daily_expenses.length > 0) {
                                    response.daily_expenses.forEach(function(expense) {
                                        expenseHtml += `
                                        <div class="card mb-1">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-12 mt-2">
                                                        <p class="text-start">
                                                            <span style="font-weight: bold; font-style: italic; color: red;">${expense.description}</span>
                                                            amounting to
                                                            <span style="font-weight: bold; font-style: italic; color: red;">${parseFloat(expense.amount).toFixed(2)}</span>
                                                            was paid on
                                                            <span style="font-weight: bold; font-style: italic; color: red;">${new Date(expense.expense_date).toLocaleDateString()}</span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>`;
                                    });
                                } else {
                                    expenseHtml +=
                                        `<div class="alert alert-info">No expense data available for the selected month.</div>`;
                                }

                                // Staff Transactions Data
                                if (response.staff_transactions && response.staff_transactions
                                    .length > 0) {
                                    response.staff_transactions.forEach(function(transaction) {
                                        staffTransactionHtml += `
                                        <div class="card mb-1">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-md-12 mt-2">
                                                        <p class="text-start">
                                                            Transaction on
                                                            <span style="font-weight: bold; font-style: italic; color: blue;">
                                                                ${new Date(transaction.transection_date).toLocaleDateString()}
                                                            </span>
                                                            for
                                                            <span style="font-weight: bold; font-style: italic; color: blue;">
                                                                ${parseFloat(transaction.amount).toFixed(2)}
                                                            </span>
                                                            described as
                                                            <span style="font-weight: bold; font-style: italic; color: blue;">
                                                                ${transaction.description}
                                                            </span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>`;
                                    });
                                } else {
                                    staffTransactionHtml += `
    <div class="alert alert-info">No staff transaction data available for the selected month.</div>`;
                                }

                                // Append data to containers
                                $('#fee-report-container').append(feeHtml);
                                $('#expense-report-container').append(expenseHtml +
                                    staffTransactionHtml);

                                // Update footer summaries
                                $('#dues-payment').text(parseFloat(response.dues_payment).toFixed(
                                    2));
                                $('#total-payment').text(parseFloat(response
                                    .total_transaction_amount).toFixed(2));
                                $('#total-amount').text(parseFloat(response.total_amount).toFixed(
                                    2));
                                $('#total-debit-amount').text(parseFloat(response
                                    .total_debit_amount).toFixed(2));
                            },
                            error: function(error) {
                                console.log('Error:', error);
                                $('#fee-report-container').html(
                                    '<div class="alert alert-danger">An error occurred while fetching the report.</div>'
                                );
                            }
                        });
                    } else {
                        alert('Please select a month.');
                    }
                });
            });
        </script>
    @endsection
