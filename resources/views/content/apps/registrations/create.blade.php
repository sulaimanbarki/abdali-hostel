@extends('layouts/contentLayoutMaster')

@section('title', 'New Registration')

@section('vendor-style')
{{-- Vendor Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">
@endsection

@section('page-style')
{{-- Page Css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/pickers/form-flat-pickr.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/plugins/forms/form-validation.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('css/base/pages/app-user.css')) }}">
@endsection

@section('content')
<!-- users edit start -->
<section class="app-user-edit">
    <div class="card">
        <div class="card-body" id="app">
            <form action="{{ route('registrations.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
                    @error('name')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="father_name">Father's Name</label>
                    <input type="text" class="form-control" id="father_name" name="father_name" value="{{ old('father_name') }}" required>
                    @error('father_name')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="guardian_phone_no">Guardian Phone Number</label>
                    <input type="text" class="form-control" id="guardian_phone_no" name="guardian_phone_no" value="{{ old('guardian_phone_no') }}" required>
                    @error('guardian_phone_no')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="floor_id">Floor</label>
                    <select name="floor_id" id="floor_id" class="form-control" required onchange="fetchRoom()">
                        <option value="">Select Floor</option>
                        @foreach ($floors as $key => $value)
                            <option value="{{ $key }}" {{ old('floor_id') == $key ? 'selected' : '' }}>{{ $value }}</option>
                        @endforeach
                    </select>
                    @error('floor_id')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="room_id">Room</label>
                    <select name="room_id" id="room_id" class="form-control" required>
                        <option value="">Select Room</option>
                        @foreach ($rooms as $key => $value)
                            <option value="{{ $key }}" {{ old('room_id') == $key ? 'selected' : '' }}>{{ $value }}</option>
                        @endforeach
                    </select>
                    @error('room_id')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="cnic">CNIC Picture (optional)</label>
                            <div class="form-group">
                                {{ BsForm::media('cnic')->collection('cnic')->files() }}
                            </div>
                            @error('cnic')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="image">Image</label>
                            {{ BsForm::media('image')->collection('image')->files() }}
                            @error('image')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="cnic">CNIC</label>
                    <input type="text" class="form-control" id="cnic" name="cnic" value="{{ old('cnic') }}" required>
                    @error('cnic')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                
                <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="number" class="form-control" id="amount" name="amount" value="{{ old('amount') }}" required>
                    @error('amount')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" id="address" name="address" rows="3" required>{{ old('address') }}</textarea>
                    @error('address')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="registration_date">Registration Date</label>
                    <input type="date" class="form-control flatpickr-basic" id="registration_date" name="registration_date" value="{{ old('registration_date') ?? date('Y-m-d') }}" required>
                    @error('registration_date')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="phone_no">Phone Number</label>
                    <input type="text" class="form-control" id="phone_no" name="phone_no" value="{{ old('phone_no') }}" required>
                    @error('phone_no')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="whatsapp_no">WhatsApp Number</label>
                    <input type="text" class="form-control" id="whatsapp_no" name="whatsapp_no" value="{{ old('whatsapp_no') }}">
                    @error('whatsapp_no')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" class="form-control flatpickr-basic" id="dob" name="dob" value="{{ old('dob') ?? date('Y-m-d') }}" required>
                    @error('dob')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}">
                    @error('email')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>

                <div class="custom-control custom-switch custom-switch-primary mb-3">
                    <p class="mb-50">Status</p>
                    <input type="checkbox" name="status" class="custom-control-input" id="customSwitch10" {{ old('status') ? 'checked' : '' }}>
                    <label class="custom-control-label" for="customSwitch10">
                        <span class="switch-icon-left"><i data-feather="check"></i></span>
                        <span class="switch-icon-right"><i data-feather="x"></i></span>
                    </label>
                </div>

                <button type="submit" class="btn btn-primary float-right">Create</button>
            </form>
        </div>
    </div>
</section>
<!-- users edit ends -->
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/forms/validation/jquery.validate.min.js')) }}"></script>
<script src="{{ asset(mix('vendors/js/pickers/flatpickr/flatpickr.min.js')) }}"></script>
@endsection

@section('page-script')
{{-- Page js files --}}
<script>
    function fetchRoom() {
        var floor_id = $('#floor_id').val();
        if (floor_id) {
            $.ajax({
                url: '{{ url('/admin/get-rooms') }}/' + floor_id,
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    $('#room_id').empty();
                    $('#room_id').append('<option value="" selected>Select Room</option>');
                    $.each(data, function(key, value) {
                        $('#room_id').append('<option value="' + key + '">' + value + '</option>');
                    });

                    // Set old room_id value after fetching rooms
                    $('#room_id').val('{{ old('room_id') }}');
                }
            });
        } else {
            $('#room_id').empty();
            $('#room_id').append('<option value="" selected>Select Room</option>');
        }
    }

    $(document).ready(function() {
        // Fetch rooms if floor_id is already set (e.g., after validation error)
        var oldFloorId = '{{ old('floor_id') }}';
        if (oldFloorId) {
            fetchRoom();
        }
    });
</script>
@endsection
