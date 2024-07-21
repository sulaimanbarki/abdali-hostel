<section class="custom-container latest-news-section">
  <div class="sec-title">
    <p class="title-top text-uppercase text-center">Achievements</p>
    <h2 class="title text-capitalize text-center">Latest from Our Department</h2>
  </div>
  <div class="news-slider-arrows d-flex flex-row align-items-center justify-content-end gap-2">
    <div>
      <img src="{{asset('front/assets/images/news-prev-arrow.svg')}}" class="prev-arrow arrows" alt="" />
    </div>
    <div>
      <img src="{{asset('front/assets/images/news-next-arrow.svg')}}" class="next-arrow arrows" alt="" />
    </div>
  </div>
  <div class="latest-news-slider-box">
    <div class="latest-news-slider">

      @foreach($achievements as $achievement)
      <div>
        <div class="news-item position-relative">
          <div class="news-image" style="background-image: url('{{$achievement->getFirstMediaUrl('achievement')}}');"></div>
          <div class="news-details-box">
            <div class="news-details">
              <div class="d-flex justify-content-end align-items-start">
                <div class="date text-center">
                  <span class="day d-block">{{$achievement->created_at->format('d')}}</span>
                  <span class="month d-block">{{$achievement->created_at->format('M, y')}}</span>
                </div>
              </div>
              <div class="d-flex flex-column description align-items-start">
                <div>
                  <span class="text-uppercase title-sm">Achievement</span>
                </div>
                <div class="m-title">
                  <a href="{{url('achievements',$achievement->slug)}}">{{$achievement->title}}</a>
                </div>
                <div class="short-description">
                  {{Helper::TitleTextLimit(strip_tags($achievement->description),80)}}
                </div>
                <div class="read-more-link">
                  <a href="{{url('achievements',$achievement->slug)}}" class="d-flex flex-row align-items-center justify-content-center gap-2"><span>Read More</span><img src="{{asset('front/assets/images/angle-small-right.svg')}}" alt="" /></a>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endforeach

    </div>
  </div>
</section>