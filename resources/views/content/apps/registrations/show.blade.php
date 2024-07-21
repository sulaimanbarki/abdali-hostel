@extends('layouts/contentLayoutMaster')

@section('title', 'View Registration')

@section('vendor-style')
{{-- Vendor Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
@endsection

@section('page-style')
{{-- Page Css files --}}
@endsection

@section('content')
<!-- registration view start -->
<section class="app-registration-view">
    <div class="card">
        <div class="card-body">

            <table class="table table-hover table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Labels</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td>{{ $registration->name }}</td>
                    </tr>
                    <tr>
                        <td>Father's Name</td>
                        <td>{{ $registration->father_name }}</td>
                    </tr>
                    <tr>
                        <td>Floor</td>
                        <td>{{ $registration->floor->floor_name }}</td>
                    </tr>
                    <tr>
                        <td>Room</td>
                        <td>{{ $registration->room->room_name }}</td>
                    </tr>
                    <tr>
                        <td>CNIC Picture</td>
                        <td>
                            @if($registration->getFirstMediaUrl('cnic'))
                                <a class="grouped_elements" rel="group" href="{{ $registration->getFirstMediaUrl('cnic') }}">
                                    <img class="download img-thumbnail rounded" width="300" height="100" src="{{ $registration->getFirstMediaUrl('cnic') }}" alt="CNIC Picture" />
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td>
                            @if($registration->getFirstMediaUrl('image'))
                                <a class="grouped_elements" rel="group" href="{{ $registration->getFirstMediaUrl('image') }}">
                                    <img class="download img-thumbnail rounded" width="300" height="100" src="{{ $registration->getFirstMediaUrl('image') }}" alt="Image" />
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>CNIC</td>
                        <td>{{ $registration->cnic }}</td>
                    </tr>
                    <tr>
                        <td>Amount</td>
                        <td>{{ $registration->amount }}</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>{{ $registration->address }}</td>
                    </tr>
                    <tr>
                        <td>Registration Date</td>
                        <td>{{ $registration->registration_date }}</td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>{{ $registration->phone_no }}</td>
                    </tr>
                    <tr>
                        <td>WhatsApp Number</td>
                        <td>{{ $registration->whatsapp_no }}</td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td>{{ $registration->dob }}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>{{ $registration->email }}</td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>{{ $registration->status ? 'Active' : 'Inactive' }}</td>
                    </tr>
                </tbody>
            </table>

            <a class="btn btn-primary" href="{{ route('registrations.index') }}"> Back</a>
        </div>
    </div>
</section>
<!-- registration view ends -->
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
<script src="{{ asset('front/assets/js/jquery.fancybox.min.js') }}" type="text/javascript"></script>
@endsection

@section('page-script')
{{-- Page js files --}}
<script type="text/javascript">
    $(document).ready(function($) {
        $("#downImage").on('click', function() {
            var images = document.getElementsByClassName('download');
            var i = 0;
            setInterval(function() {
                if (images.length > i) {
                    var link = document.createElement("a");
                    link.download = images[i].src;
                    link.href = images[i].src;
                    link.click();
                    i++;
                }
            }, 1500);
        });
    });
</script>
@endsection
