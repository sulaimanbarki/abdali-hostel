@extends('layouts/contentLayoutMaster')

@section('title', 'View E-Registration')

@section('vendor-style')
{{-- Vendor Css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/pickers/flatpickr/flatpickr.min.css')) }}">

@endsection

@section('page-style')
{{-- Page Css files --}}

@endsection

@section('content')
<!-- users edit start -->
<section class="app-user-edit">
    <div class="card">
        <div class="card-body">

            <form action="{{ url('admin/e_registerations/changeStatus', $e_registration->id) }}" method="POST" enctype="multipart/form-data">

                @csrf
                <table class="table table-hover table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>Labels</th>
                            <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Name of The Owner</td>
                            <td>{{$e_registration->NameOfOwner}}</td>
                        </tr>
                        <tr>
                            <td>District</td>
                            <td>{{$e_registration->district}}</td>
                        </tr>
                        <tr>
                            <td>PEC-N0</td>
                            <td>{{$e_registration->PECNo}}</td>
                        </tr>
                        <tr>
                            <td>Category Applied for: </td>
                            <td>{{$e_registration->categoryAppliedFor}}</td>
                        </tr>
                        <tr>
                            <td>Name of the Contractor</td>
                            <td>{{$e_registration->NameOfContractor}}</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>{{$e_registration->address}}</td>
                        </tr>
                        <tr>
                            <td>Category-PEC</td>
                            <td> {{$e_registration->categoryPEC}}</td>
                        </tr>
                        <tr>
                            <td>CNIC-Number</td>
                            <td>{{$e_registration->CNICNumber}}</td>
                        </tr>
                        <tr>
                            <td>Spec Code</td>
                            <td>{{$e_registration->speCODE}}</td>
                        </tr>
                        <tr>
                            <td>FBR-NONTN</td>
                            <td>{{$e_registration->fbrNONTN}}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>{{$e_registration->Email}}</td>
                        </tr>
                        <tr>
                            <td>Mobile-Number</td>
                            <td>{{$e_registration->mobNo}}</td>
                        </tr>
                        <tr>
                            <td>Is Your Firm Registered or Limited</td>
                            <td> {{$e_registration->RegLimted}}</td>
                        </tr>
                        <tr>
                            <td>CNIC Copy</td>
                            <td>

                                <div> <a class="grouped_elements" rel="group" href="{{$e_registration->getFirstMediaUrl('CNICUpload')}}"><img class="download img-thumbnail rounded"  width="300" height="100" src="{{$e_registration->getFirstMediaUrl('CNICUpload')}}" alt="" /></a> </div>
                                <!-- <div class="filter p0 ">
                                    <a href="{{$e_registration->getFirstMediaUrl('CNICUpload')}}" data-fancybox="gallery">
                                        <img src="{{$e_registration->getFirstMediaUrl('CNICUpload')}}"  alt="">
                                    </a>
                                </div> -->

                            </td>
                        </tr>
                        <tr>
                            <td>FBR Upload</td>
                            <td>
                            <div> <a class="grouped_elements" rel="group" href="{{$e_registration->getFirstMediaUrl('fbrUpload')}}"><img class="download img-thumbnail rounded"  width="300" height="100" src="{{$e_registration->getFirstMediaUrl('fbrUpload')}}" alt="" /></a> </div>
                                <!-- <img src="{{$e_registration->getFirstMediaUrl('fbrUpload')}}" class="download" width="300" height="100" /></td> -->
                        </tr>
                        <tr>
                            <td>PEC</td>
                            <td>
                            <div> <a class="grouped_elements" rel="group" href="{{$e_registration->getFirstMediaUrl('PEC2020')}}"><img class="download img-thumbnail rounded"  width="300" height="100" src="{{$e_registration->getFirstMediaUrl('PEC2020')}}" alt="" /></a> </div>
                                <!-- <img src="{{$e_registration->getFirstMediaUrl('PEC2020')}}" class="download" width="300" height="100" /></td> -->
                        </tr>
                        <tr>
                            <td>Form HU Upload</td>
                            <td>
                            <div> <a class="grouped_elements" rel="group" href="{{$e_registration->getFirstMediaUrl('FormHUpload')}}"><img class="download img-thumbnail rounded"  width="300" height="100" src="{{$e_registration->getFirstMediaUrl('FormHUpload')}}" alt="" /></a> </div>
                                <!-- <img src="{{$e_registration->getFirstMediaUrl('FormHUpload')}}" class="download" width="300" height="100" /></td> -->
                        </tr>
                        <tr>
                            <td>Pre Emlishment Upload</td>
                            <td>
                            <div> <a class="grouped_elements" rel="group" href="{{$e_registration->getFirstMediaUrl('PreEnlistmentUpload')}}"><img class="download img-thumbnail rounded"  width="300" height="100" src="{{$e_registration->getFirstMediaUrl('PreEnlistmentUpload')}}" alt="" /></a> </div>
                                <!-- <img src="{{$e_registration->getFirstMediaUrl('PreEnlistmentUpload')}}" class="download" width="300" height="100" /></td> -->
                        </tr>
                        <tr>
                            <td>Description/Note/Approve/Reject</td>
                            <td>
                                <div class="form-group">
                                    <div id="snow-wrapper">
                                        <div id="full-container">
                                            <div class="editor pb-5">
                                                {!!$e_registration->description!!}
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="description" id="description" value="{{$e_registration->description}}" />
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="form-group">
                    <label>Description/Note/Approve/Reject</label>
                    <div id="snow-wrapper">
                        <div id="full-container">
                            <div class="editor pb-5">
                                {!!$e_registration->description!!}
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="description" id="description" value="{{$e_registration->description}}" />
                </div>


                <div class="form-group">
                    <label for="RegLimted">Registration Status<span style="color:red;">*</span></label>
                    {!! Form::select('progress', \Helper::getData('progress'),$e_registration->progress, array('class' => 'form-control','required')) !!}
                </div>



                <button type="button" id="downImage" class="btn btn-primary">Download All Image</button>
                <button type="submit" class="btn btn-primary float-right">submit</button>
            </form>
        </div>
    </div>
</section>


<!-- users edit ends -->
@endsection

@section('vendor-script')
{{-- Vendor js files --}}
<script src="{{asset('front/assets/js/jquery.fancybox.min.js')}}" type="text/javascript"></script>
@endsection

@section('page-script')
{{-- Page js files --}}

<script type="text/javascript">
    $(document).ready(function($) {
        // $("a.grouped_elements").fancybox();
        $("#downImage").on('click', function() {

            var images = document.getElementsByClassName('download');
            var srcList = [];
            var i = 0;

            setInterval(function() {
                if (images.length > i) {
                    srcList.push(images[i].src);
                    var link = document.createElement("a");
                    link.id = i;
                    link.download = images[i].src;
                    link.href = images[i].src;
                    link.click();
                    i++;
                }
            }, 1500);
        })


    });
</script>

@endsection