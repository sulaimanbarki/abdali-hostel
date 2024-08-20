@extends('layouts/contentLayoutMaster')

@section('title', 'Available Rooms')

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
        <div class="container mb-5">
            <div class="row">
                <div class="col-lg-3 ">
                    <select class="form-control" name="floor_id" id="floor_id">
                        <option value="">Select Floor</option>
                        @foreach ($floors as $floor)
                            <option value="{{ $floor->id }}">{{ $floor->floor_name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-lg-3 ">
                    <select class="form-control" name="room_type" id="room_type">
                        <option value="">Select Room Type</option>
                        @foreach ($roomTypes as $roomType)
                            <option value="{{ $roomType->room_type }}">{{ ucfirst($roomType->room_type) }}</option>
                        @endforeach
                    </select>
                </div>


            </div>
        </div>
        <div class="card">
            <div class="table table-responsive pt-0">

                <table class=" table">
                    <thead class="thead-light">
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Floor No</th>
                            <th>Room No</th>
                            <th>Room Type</th>
                            <th>Available Seats</th>
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



@section('page-script')
    {{-- Page js files --}}
    <script>
        $(document).ready(function() {
            function fetchRooms() {
                let floorId = $('#floor_id').val();
                let roomType = $('#room_type').val();

                $.ajax({
                    url: '{{ route('room.available_rooms') }}',
                    type: 'GET',
                    data: {
                        floor_id: floorId,
                        room_type: roomType,
                    },
                    success: function(data) {
                        let rows = '';
                        data.forEach(room => {
                            rows += `
                        <tr>
                            <td></td>
                            <td>${room.room_name}</td>
                            <td>${room.floor.floor_name}</td>
                            <td>${room.room_name}</td>
                            <td>${room.room_type}</td>
                            <td>${room.no_of_seats_available}</td>
                        </tr>
                    `;
                        });
                        $('tbody').html(rows);
                    }
                });
            }

            $('#floor_id, #room_type').change(fetchRooms);


            fetchRooms();
        });
    </script>
@endsection
