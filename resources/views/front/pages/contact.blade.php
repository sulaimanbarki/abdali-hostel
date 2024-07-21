@extends('front/layouts/layout')

@section('title', 'Hospitals')
@section('content')
<x-inner-page-header page='contact-us' slug='contact-us' />

<section class="news-page-details">
    <div class="custom-container">
        <div class="table-responsive">
            <table class="table text-start pricing-table">
                <tr>
                    <th colspan="5">
                        <h3>North Telephone Directory</h3>
                    </th>
                </tr>
                <thead>
                    <tr>
                        <th>
                            <h3>No.</h3>
                        </th>
                        <th>
                            <h3>Office Name</h3>

                        </th>
                        <th>
                            <h3>Phone No.</h3>

                        </th>
                        <th>
                            <h3>Fax No.</h3>

                        </th>
                        <th>
                            <h3>Mobile No.</h3>

                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($north_numbers as $key=> $nn)

                    <tr>
                        <td>{{$key+1}}</td>
                        <td>&nbsp;{{$nn->officename}} </td>
                        <td><img src="{{ url('front/img/icons/directory/phone.png') }}">&nbsp;{{$nn->phoneNO}}</td>
                        <td><img src="{{ url('front/img/icons/directory/fax.png') }}">&nbsp;{{$nn->faxNO}}</td>
                        <td><img src="{{ url('front/img/icons/directory/mob.png') }}">&nbsp;{{$nn->moblieNO}}</td>
                    </tr>

                    @endforeach
                    <tr>
                        <th colspan="5">
                            <h3>South Telephone Directory</h3>
                        </th>
                    </tr>

                    @foreach($south_numbers as $key=> $sn)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>&nbsp;{{$sn->officename}} </td>
                        <td><img src="{{ url('front/img/icons/directory/phone.png') }}">&nbsp;{{$sn->phoneNO}}</td>
                        <td><img src="{{ url('front/img/icons/directory/fax.png') }}">&nbsp;{{$sn->faxNO}}</td>
                        <td><img src="{{ url('front/img/icons/directory/mob.png') }}">&nbsp;{{$sn->moblieNO}}</td>
                    </tr>

                    @endforeach

                </tbody>
            </table>
        </div>

    </div>
</section>

@endsection
