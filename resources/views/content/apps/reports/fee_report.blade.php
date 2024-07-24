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
        <!-- users filter start -->

        <!-- users filter end -->
        <!-- list section start -->
        <div class="card">
            <div class="col-lg-12 text-right">

                <form action="">
                    <div class="row">
                        <div class="col-md-3">
                            <input type="date" class="form-control" id="start_date">
                        </div>




                        <div class="col-md-3">
                            <input type="date" class="form-control" id="end_date">
                        </div>


                        <div class="col-md-3">
                            <button class="btn btn-primary" type="submit" id="datebetween">Date
                                Between</button>
                        </div>



                    </div>
                </form>

            </div>
            <div class="table table-responsive pt-0">

                <table class=" table">
                    <thead class="thead-light">
                        <tr>
                            <th>Payment</th>
                            <th>Dues</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>

            </div>

            <div class="row p-1">
                <div class="col-lg-12">
                    {{-- {!! $registrations->links() !!} --}}
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

                var startDate = $('#start_date').val();
                var endDate = $('#end_date').val();

                if (startDate && endDate) {
                    $.ajax({
                        url: '{{ route('reports.fee_reports-bydate') }}',
                        method: 'GET',
                        data: {
                            start_date: startDate,
                            end_date: endDate
                        },
                        success: function(response) {

                            $('.table tbody').empty();


                            var tableBody = `<tr>
                        <td>${response.total_transaction_amount}</td>
                        <td>${response.total_fee_amount}</td>
                        <td>${response.total_amount}</td>
                         </tr>`;

                            $('.table tbody').append(tableBody);
                        },
                        error: function(error) {
                            console.log('Error:', error);
                        }
                    });
                } else {
                    alert('Please select both start date and end date.');
                }
            });
        });
    </script>
@endsection
