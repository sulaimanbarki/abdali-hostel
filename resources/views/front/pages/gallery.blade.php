@extends('front/layouts/layout')

@section('title', 'Gallary')
@section('content')
<section class="d-block page-title-banner" style="background-image: url('{{ $pageData? $pageData->getFirstMediaUrl('banner'): '#'}}');">
    <div class="banner-overlay">
        <div class="custom-container">
            <div class="d-flex flex-column align-items-center justify-content-center title-con">
                <div>
                    <h1 class="page-title fw-bold">{{$category->title?? 'Gallery' }} Gallery</h1>
                </div>
            </div>
            <div class="breadcrumbs-con">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="{{url('/')}}" class="text-decoration-none text-Capitalize">Home</a></li>
                        <li class="breadcrumb-item text-Capitalize active" aria-current="page">{{ $category->title?? 'Gallery'}} Gallery</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>

<section class="gallery">
    <div class="custom-container">
        <div class="section">
            <div class="container">
                @if(count($galleries)>0)
                <div class="row">
                    <div class="col-xs-12">
                        <div class="portfolio__filter filter__home">
                            <button class="filter-button" data-filter="all">All</button>
                            @foreach($galleries as $gallery)
                            <button class="filter-button" data-filter="{{$gallery->title}}">{{$gallery->title}}</button>
                            @endforeach
                        </div>
                        <div class="portfolio__img">
                            <div class="row">
                                @foreach($galleries as $gallery)
                                @php $mediaItems = $gallery->getMedia('gallary') @endphp
                                @if(count($mediaItems)>0)
                                @foreach($mediaItems as $key=> $media)
                                <div class="col-6 col-sm-4 mb-4 filter p0 {{$gallery->title}}">
                                    <a href="{{$mediaItems[$key]->getFullUrl()}}" data-fancybox="gallery">
                                        <img src="{{$mediaItems[$key]->getFullUrl()}}" alt="">
                                    </a>
                                </div>

                                @endforeach
                                @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                @else
                <h4 class="text p-4">No Image Found !</h4>

                @endif
            </div>
        </div>
    </div>
</section>

@endsection
@section('script')
<script type="text/javascript">
    // $(document).ready(function($) {

    //     $().fancybox({
    //         selector: '[data-fancybox="images"]',
    //         loop: true
    //     });
    // });


    $(document).ready(function() {

        $(".filter-button").click(function() {
            var value = $(this).attr('data-filter');

            if (value == "all") {
                $('.filter').show('1000');
            } else {
                $(".filter").not('.' + value).hide('3000');
                $('.filter').filter('.' + value).show('3000');

            }
        });

        if ($(".filter-button").removeClass("active")) {
            $(this).removeClass("active");
        }
        $(this).addClass("active");

    });
</script>
@endsection