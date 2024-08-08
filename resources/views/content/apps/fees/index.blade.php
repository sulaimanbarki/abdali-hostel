@extends('layouts/contentLayoutMaster')

@section('title', 'Fees List')

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
    <section class="fee-generation-form mb-2">
        <div class="card">
            <div class="card-body">
                <form action="{{ route('fees.store') }}" method="post" class="form-inline">
                    @csrf
                    <label for="fee_month" class="mr-2">Fee Month</label>
                    <input type="month" name="fee_month" id="fee_month" class="form-control mr-2"
                        value="{{ date('Y-m') }}" />
                    <button type="submit" class="btn btn-primary">Generate Fee</button>
                </form>
            </div>
        </div>
    </section>

    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <table class="datatables-basic table">
                        <thead>
                            <tr>
                                <th>Room</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Month</th>
                                <th>Fee</th>
                                <th>Paid</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade" id="payFeeModal" tabindex="-1" role="dialog" aria-labelledby="payFeeModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="payFeeModalLabel">Pay Fee</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Content will be loaded via JavaScript -->
                </div>
            </div>
        </div>
    </div>


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
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
@endsection


@section('page-script')
    <script>
        $(document).ready(function() {
            var dt_basic_table = $('.datatables-basic');

            if (dt_basic_table.length) {
                var dt_basic = dt_basic_table.DataTable({
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: '{{ route('fees.index') }}',
                        data: function(d) {
                            if ($('#filter_fee_month').val()) {
                                d.fee_month = $('#filter_fee_month').val();
                            }
                            d.ajax = 1; // Add the ajax parameter
                        }
                    },
                    columns: [
                        {
                            data: 'room',
                            name: 'room',
                        },
                        {
                            data: 'registration.name',
                            name: 'registration.name'
                        },
                        {
                            data: 'registration.phone_no',
                            name: 'registration.phone_no'
                        },
                        {
                            data: 'fee_date',
                            name: 'fee_date',
                            render: function(data, type, full, meta) {
                                var date = new Date(data);
                                var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
                                    "Aug", "Sep", "Oct", "Nov", "Dec"
                                ];
                                return monthNames[date.getMonth()] + ' ' + date.getFullYear();
                            }
                        },
                        {
                            data: 'amount',
                            // skip the decimal points
                            render: $.fn.dataTable.render.number(',', '.', 0)
                        },
                        {
                            data: 'paid_amount',
                            render: $.fn.dataTable.render.number(',', '.', 0)
                        },
                        {
                            data: 'status',
                            render: function(data, type, full, meta) {
                                return data.replace(/\b\w/g, function(l) {
                                    return l.toUpperCase();
                                });
                            }
                        },
                        {
                            data: 'id',
                            render: function(data, type, full, meta) {
                                var disabled = full.paid_amount >= full.amount ? '' : '';
                                return `
                            <div class="d-inline-flex">
                                <button data-id="${data}" class="btn btn-sm btn-success pay-fee" ${disabled}>Pay Fee</button>&nbsp;
                                <a href="/admin/fees/${data}/edit" class="btn btn-sm btn-primary">Edit</a>
                            </div>`;
                            },
                            orderable: false
                        }
                    ],
                    order: [
                        [0, 'desc']
                    ],
                    dom: '<"card-header border-bottom p-1"<"head-label"<"d-inline-flex"f>>><"d-flex justify-content-between align-items-center mx-0 row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>t<"d-flex justify-content-between mx-0 row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
                    displayLength: 10,
                    lengthMenu: [10, 25, 50, 75, 100],
                    language: {
                        paginate: {
                            // remove previous & next text from pagination
                            previous: '&nbsp;',
                            next: '&nbsp;'
                        }
                    },
                    initComplete: function() {
                        var filterHtml = `
                            <div class="d-flex">
                                <label for="filter_fee_month" class="mr-2">Filter by Month:</label>
                                <input type="month" id="filter_fee_month" class="form-control mr-2" />
                            </div>
                        `;
                        $('.dataTables_wrapper .card-header').append(filterHtml);

                        // Event listener for month filter change
                        $('#filter_fee_month').on('change', function() {
                            dt_basic.draw(); // Redraw the DataTable to apply the filter
                        });
                    }
                });
                $('div.head-label').html('<h6 class="mb-0">Fees DataTable</h6>');



                dt_basic_table.on('click', '.pay-fee', function() {
                    var feeId = $(this).data('id');
                    $.ajax({
                        url: `/admin/fees/${feeId}`,
                        method: 'GET',
                        success: function(data) {
                            $('#payFeeModal').find('.modal-body').html(`
                        <p><strong>ID:</strong> ${data.id}</p>
                        <p><strong>Registration Name:</strong> ${data.registration.name}</p>
                        <p><strong>Father Name:</strong> ${data.registration.father_name}</p>
                        <p><strong>Fee Date:</strong> ${new Date(data.fee_date).toLocaleDateString('en-US', { month: 'short', year: 'numeric' })}</p>
                        <p><strong>Amount:</strong> ${data.amount}</p>
                        <p><strong>Status:</strong> ${data.status.replace(/\b\w/g, function(l) { return l.toUpperCase(); })}</p>
                       <form id="payFeeForm" method="POST" enctype="multipart/form-data" action="/admin/fees/pay">
                            @csrf
                            <input type="hidden" name="fee_id" value="${data.id}">
                            <div class="form-group">
                                <label for="paid_amount">Paid Amount</label>
                                <input type="number" class="form-control" name="paid_amount" id="paid_amount" value="${data.amount}" required>
                            </div>
                            <div class="form-group">
                                <label for="attachment">Attachment (optional)</label>
                                <input type="file" class="form-control" name="attachment" id="attachment">
                            </div>
                            <button type="submit" class="btn btn-success">Pay</button>
                        </form>

                    `);
                            $('#payFeeModal').modal('show');
                        }
                    });
                });
            }
        });
    </script>

@endsection
