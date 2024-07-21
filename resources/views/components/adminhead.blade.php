<section class="custom-container administration-info position-relative">
    <div class="admistration-slider">

        @foreach($administratives as $key => $administrative)
        <div class="admin-slides">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-center align-items-md-start gap-3">
                <div class="image-box">
                    <figure>
                        <img src="{{$administrative->getFirstMediaUrl('team')}}" alt="Taimur Khan Jhagra" />
                    </figure>
                </div>
                <div class="details">
                    <div class="sec-title">
                        <p class="title-top text-uppercase">ADMNISTRATIVE HEADS</p>
                        <h2 class="title text-capitalize">{{$administrative->name}}
                            <small class="designation">{{$administrative->designation}}</small>
                        </h2>
                    </div>
                    <div class="description">
                        <p>{{strip_tags($administrative->description)}}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        @endforeach



    </div>
    <!--administration slider controls-->
    <div class="controlsPrepend">
        <div class="custom-container sliderControls">
            <div class="d-flex flex-row align-items-center justify-content-between btns">
                <div class="prev-btn adm-team-slider-btn position-relative">
                    <img src="{{asset('front/assets/images/prev-btn-green.svg')}}" alt="" />
                </div>
                <div class="admin-current-slide counts"></div>
                <div class="pagination">
                    <div class="progress w-100">
                        <div class="progress-bar administration-info-slides-progress" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="admin-total-slides counts"></div>
                <div class="next-btn adm-team-slider-btn position-relative">
                    <img src="{{asset('front/assets/images/next-btn-green.svg')}}" alt="" />
                </div>
            </div>
        </div>
    </div>
    <!---------------------------------->
    <div class="administation-slider-thumbnails">
        <div class="thumbnail-slider">
            @foreach($administratives as $key => $administrative)
            <div>
                <div class="thumb-box">
                    <img src="{{$administrative->getFirstMediaUrl('team','resize')}}" class="img-fluid h-80" />
                </div>
            </div>

            @endforeach
        </div>
    </div>
    <!---append slide controls on screen less than 1200. Please do not delete-->
    <div class="appendSliderControls">

    </div>
    <!--------------------------------------------------->
</section>