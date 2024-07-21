<style type="text/css">
    a {
        text-decoration: none
    }
    
    .news marquee {
        font-size: 15px;
        margin-top: 12px
    }
    .news-content p {
        margin-right: 41px;
        display: inline
    }
</style>

<div class="custom-container banner-section">
    <div class="banner-slider">

        @foreach($slides as $slide)
        <div data-bgImage="{{$slide->getFirstMediaUrl('slide')}}">
            <div class="row justify-content-between align-items-center slider-item">
                <div class="col-12 col-md-12 col-lg-5">
                    <p class="title">{{\Helper::languageConvert($slide,'title')}}</p>
                    <p class="title-main">{!!\Helper::languageConvert($slide,'description')!!}</p>

                    <a href="" class="btn green-bg custom-btn">Read More</a>
                </div>
            </div>
        </div>
        @endforeach

    </div>
    <!--Slider arrow append here. please do not delete-->
    <div class="banner-slider-btns position-relative d-table w-100"></div>
    <!-------------------------------------------------->
    <div class="custom-container news-ticker ">
        <div class="row align-items-center ">
            <div class="col-12 col-md-3 col-lg-2 pl-0 mb-3 mb-md-0">
                <div class="text-uppercase title yellow-bg">NEWS/UPDATES</div>
            </div>

            <div class="news col-12 col-md-5 col-lg-8 mb-3 mb-md-0">
                <marquee class="news-content" onmouseover="this.stop();" onmouseout="this.start();">
                    @foreach ($tenders as $key => $tender)
                    <p><a href="{{ url('tenders', $tender->slug) }}">{{ $tender->title }}</a></p>
                        @endforeach
                </marquee>
            </div>

<!--             
            <div class="col-12 col-md-6 col-lg-8 mb-3 mb-md-0">
                <div class="news-slider">

                @foreach($tenders as $key=> $tender)


                    <div class="slider-item">
                        <p><a href="{{url('tenders',$tender->slug)}}">{{$tender->title}}</a></p>
                    </div>

                @endforeach

                </div>
            </div> -->
            <div class="col-12 col-md-3 col-lg-2 mb-3 mb-md-0">
                @if($weather)
                @php $weatherData=json_decode($weather->response); @endphp
                <div class="d-flex flex-row align-items-center weather-update">
                    <img src="https://openweathermap.org/img/w/{{$weatherData->weather[0]->icon}}.png" alt="" />
                    <p>Today: {{round($weatherData->main->temp) }}°C | {{round(Helper::celsius_to_fahrenheit($weatherData->main->temp))}}°F</p>
                </div>
                @else
                <div class="d-flex flex-row align-items-center weather-update">
                    <img src="{{asset('front/assets/images/sun.svg')}}" alt="" />
                    <p>Today: 29°C | 32°F</p>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
