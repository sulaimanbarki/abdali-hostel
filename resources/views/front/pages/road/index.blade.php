@extends('front/layouts/layout')

@section('title', 'Roads')
@section('content')
<x-inner-page-header page='roads-status' slug='roads-status' />

<section class="news-page-details">
    <div class="custom-container">
        <div class="table-responsive">
            <table class="table text-start text-center">

                <thead>
                    <tr>
                        <th> S.# </th>
                        <th> Name of District </th>
                        <th> Dated <br> (Daily should be written) </th>
                        <th>Current Road Status<br>(Daily attached PDF) <br> View</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $index=> $RoadData)
                    <tr>
                        <th>
                            {{$loop->iteration}}
                        </th>
                        <td>
                            {{$RoadData->district->district_name}}
                        </td>
                        <td>
                            {{ date('d M, Y', strtotime($RoadData->dated)) }}
                        </td>
                        <td>
                            <a href="{{$RoadData->getFirstMediaUrl('attachment')}}" download>Download</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="d-block w-100 text-center mb-5">



            {!! $data->links('pagination::custom') !!}

        </div>

    </div>
</section>

@endsection