@extends('front/layouts/layout')

@section('title', 'tender')
@section('content')


<x-inner-page-header page='tender' slug='tender' />
<section class="news-page-details">
    <div class="custom-container">
        <div class="card">

            <div class="table table-responsive p-4">
                <table class="table datatable">
                    <thead class="thead-light">
                        <tr>
                            <th></th>
                            <th>Office</th>
                            <th>Title</th>
                            <th>Download</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($tenders as $key=> $tender)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td>{{$tender->Office()->exists()? $tender->Office->officename : ''}}</td>
                            <td>{{$tender->title}}</td>
                            <td><a href="{{$tender->getFirstMediaUrl('tender')}}" target="_blank" class="btn btn-sm green-bg ">Download</a> </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>



            <!-- Modal to add new user Ends-->
        </div>

    </div>
</section>
@endsection