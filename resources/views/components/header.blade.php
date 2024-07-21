<header id="sliderBg" class="{{ Request::is('/')== false ? 'inner-pages-header': ''}}">
    <div class="overlay-bg">
        <div class="header-top-strip container-fluid">
            <div class="custom-container">
                <div class="d-flex flex-column flex-sm-row align-items-center justify-content-between">
                    <div class="d-flex flex-column flex-md-row align-items-center gap-3">
                        <div class="phone">
                            <p class="m-0">
                                <svg xmlns="https://www.w3.org/2000/svg" width="16" height="16.028" viewBox="0 0 16 16.028">
                                    <path id="phone-call_1_" data-name="phone-call (1)" d="M14.823,14.8l.608-.7a2.07,2.07,0,0,0,0-2.923C15.41,11.155,13.8,9.919,13.8,9.919a2.07,2.07,0,0,0-2.858,0L9.673,11A8.536,8.536,0,0,1,5.044,6.359L6.112,5.09a2.07,2.07,0,0,0,0-2.859S4.88.626,4.859.606A2.058,2.058,0,0,0,1.971.575L1.2,1.243C-3.334,6.506,6.435,16.2,11.871,16.024A4.11,4.11,0,0,0,14.823,14.8Z" transform="translate(-0.035 0.002)" fill="#fff" />
                                </svg> {{$themeSetting->phone}}
                            </p>
                        </div>
                        <div class="v-seperator d-none d-md-block">
                            <svg xmlns="https://www.w3.org/2000/svg" width="0.5" height="27" viewBox="0 0 0.5 27">
                                <g id="Group_704" data-name="Group 704" transform="translate(-282.25 -6.5)">
                                    <line id="Line_1" data-name="Line 1" y2="12" transform="translate(282.5 6.5)" fill="none" stroke="#fff" stroke-width="0.5" />
                                    <line id="Line_2" data-name="Line 2" y2="12" transform="translate(282.5 21.5)" fill="none" stroke="#fff" stroke-width="0.5" />
                                </g>
                            </svg>
                        </div>
                        <div>
                            <div class="d-flex flex-row align-items-center gap-2 shift-timing dropdown-menu-custom">
                                <img src="{{asset('front/assets/images/clock-icon.svg')}}" alt="" />
                                <div>
                                    <div class="dropdown">
                                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                            Today: 09:00 AM to 05:00 PM
                                            <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon ms-1" />
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li><a class="dropdown-item" href="#">Monday: 09:00 AM to 05:00 PM</a></li>
                                            <li><a class="dropdown-item" href="#">Tuesday: 09:00 AM to 05:00 PM</a></li>
                                            <li><a class="dropdown-item" href="#">Wednesday: 09:00 AM to 05:00 PM</a></li>
                                            <li><a class="dropdown-item" href="#">Thursday: 09:00 AM to 05:00 PM</a></li>
                                            <li><a class="dropdown-item" href="#">Friday: 09:00 AM to 05:00 PM</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="social-icons mt-1 mt-sm-0">
                        <div class="d-flex flex-row align-items-center">
                            <a href="{{$themeSetting->twitter}}">
                                <svg id="Group_10" data-name="Group 10" xmlns="https://www.w3.org/2000/svg" width="23.844" height="23.844" viewBox="0 0 23.844 23.844">
                                    <g id="Group_11" data-name="Group 11" transform="translate(0 0)">
                                        <rect id="Rectangle" width="23.844" height="23.844" rx="11.922" transform="translate(0 0)" fill="#fff" />
                                    </g>
                                    <path id="twitter" d="M10.587,49.018a4.525,4.525,0,0,1-1.251.343,2.158,2.158,0,0,0,.955-1.2,4.337,4.337,0,0,1-1.376.525A2.17,2.17,0,0,0,5.16,50.171a2.235,2.235,0,0,0,.05.495A6.143,6.143,0,0,1,.737,48.4,2.171,2.171,0,0,0,1.4,51.3a2.143,2.143,0,0,1-.981-.267v.024a2.18,2.18,0,0,0,1.739,2.133,2.166,2.166,0,0,1-.569.071,1.92,1.92,0,0,1-.411-.037A2.191,2.191,0,0,0,3.21,54.732a4.361,4.361,0,0,1-2.691.926A4.064,4.064,0,0,1,0,55.628a6.11,6.11,0,0,0,3.33.974,6.135,6.135,0,0,0,6.177-6.176c0-.1,0-.189-.008-.281A4.33,4.33,0,0,0,10.587,49.018Z" transform="translate(6.455 -39.913)" fill="#0d8c60" />
                                </svg>
                            </a>
                            <a href="{{$themeSetting->facebook}}">
                                <svg id="Group_8" data-name="Group 8" xmlns="https://www.w3.org/2000/svg" width="23.844" height="23.844" viewBox="0 0 23.844 23.844">
                                    <g id="Group_686" data-name="Group 686" transform="translate(0 0)">
                                        <g id="Group_15" data-name="Group 15" transform="translate(0 0)">
                                            <rect id="Rectangle_Copy_4" data-name="Rectangle Copy 4" width="23.844" height="23.844" rx="11.922" fill="#fff" />
                                        </g>
                                        <g id="facebook" transform="translate(9.711 7.656)">
                                            <path id="Path_281" data-name="Path 281" d="M210.181,86.763v-4.3h1.449l.217-1.683h-1.666V79.709c0-.486.135-.817.832-.817h.883v-1.5a11.867,11.867,0,0,0-1.295-.066,2.021,2.021,0,0,0-2.158,2.218V80.78H207v1.683h1.444v4.3Zm0,0" transform="translate(-207 -77.324)" fill="#0d8c60" />
                                        </g>
                                    </g>
                                </svg>
                            </a>
                            <a href="{{$themeSetting->instagram}}">
                                <svg id="Group_9" data-name="Group 9" xmlns="https://www.w3.org/2000/svg" width="23.844" height="23.844" viewBox="0 0 23.844 23.844">
                                    <g id="Group_12" data-name="Group 12" transform="translate(0 0)">
                                        <rect id="Rectangle_Copy" data-name="Rectangle Copy" width="23.844" height="23.844" rx="11.922" transform="translate(0 0)" fill="#fff" />
                                    </g>
                                    <g id="instagram_1_" data-name="instagram (1)" transform="translate(6.883 6.883)">
                                        <path id="Path_485" data-name="Path 485" d="M10.181,3a3.749,3.749,0,0,0-.237-1.239,2.5,2.5,0,0,0-.589-.9,2.5,2.5,0,0,0-.9-.589A3.748,3.748,0,0,0,7.211.031C6.666.006,6.492,0,5.106,0S3.545.006,3,.031A3.749,3.749,0,0,0,1.761.268a2.5,2.5,0,0,0-.9.589,2.5,2.5,0,0,0-.589.9A3.748,3.748,0,0,0,.031,3C.006,3.545,0,3.719,0,5.106S.006,6.666.031,7.211A3.748,3.748,0,0,0,.268,8.45a2.5,2.5,0,0,0,.589.9,2.5,2.5,0,0,0,.9.589A3.746,3.746,0,0,0,3,10.181c.545.025.718.031,2.105.031s1.561-.006,2.105-.031A3.747,3.747,0,0,0,8.45,9.943,2.61,2.61,0,0,0,9.943,8.45a3.747,3.747,0,0,0,.237-1.239c.025-.545.031-.718.031-2.105S10.205,3.545,10.181,3ZM9.261,7.169a2.825,2.825,0,0,1-.176.948,1.691,1.691,0,0,1-.969.969,2.825,2.825,0,0,1-.948.176c-.538.025-.7.03-2.063.03s-1.525-.005-2.063-.03a2.826,2.826,0,0,1-.948-.176A1.582,1.582,0,0,1,1.507,8.7a1.582,1.582,0,0,1-.382-.587A2.825,2.825,0,0,1,.95,7.169c-.025-.538-.03-.7-.03-2.063S.925,3.581.95,3.042a2.827,2.827,0,0,1,.176-.948,1.583,1.583,0,0,1,.382-.587,1.581,1.581,0,0,1,.587-.382A2.824,2.824,0,0,1,3.042.95c.538-.025.7-.03,2.063-.03h0C6.469.92,6.63.925,7.169.95a2.825,2.825,0,0,1,.948.176,1.583,1.583,0,0,1,.587.382,1.581,1.581,0,0,1,.382.587,2.822,2.822,0,0,1,.176.948c.025.538.03.7.03,2.063S9.286,6.63,9.261,7.169Zm0,0" transform="translate(0 0)" fill="#0d8c60" />
                                        <path id="Path_486" data-name="Path 486" d="M127.161,124.539a2.622,2.622,0,1,0,2.622,2.622A2.622,2.622,0,0,0,127.161,124.539Zm0,4.324a1.7,1.7,0,1,1,1.7-1.7A1.7,1.7,0,0,1,127.161,128.863Zm0,0" transform="translate(-122.055 -122.055)" fill="#0d8c60" />
                                        <path id="Path_487" data-name="Path 487" d="M363.155,89.238a.613.613,0,1,1-.613-.613A.613.613,0,0,1,363.155,89.238Zm0,0" transform="translate(-354.711 -86.858)" fill="#0d8c60" />
                                    </g>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid main-navigation">
            <div class="custom-container">
                <div class="d-flex flex-column flex-lg-row align-items-center justify-content-between mt-2 mb-2">
                    <div class="logo-box">
                        <div class="d-flex flex-row align-items-center justify-content-between gap-5">
                            <a href="/">

                                @if(Request::is('/')==true)
                                <img src="{{\Helper::renderImageUrl($themeSetting->header_logo,'header_logo')}}" alt="" />
                                @else
                                <img src="{{\Helper::renderImageUrl($themeSetting->inner_page_logo,'header_logo')}}" alt="" />
                                @endif
                            </a>
                            <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <img src="{{asset('front/assets/images/align-left.png')}}" class="navbar-toggle-icon" alt="" />
                            </button>
                        </div>
                    </div>
                    <div class="navbar-container">
                        <div class="d-flex flex-column align-items-end justify-content-end">
                            <div>
                                <div class="search-mobile-version">
                                    <div class="d-flex flex-row align-items-center justify-content-between gap-3">
                                        <a href="#" id="toggleGreyLayout">
                                            <img src="{{asset('front/assets/images/eye-icon.svg')}}" alt="" />
                                        </a>
                                        <!-- <a href="">
                                            <img src="{{asset('front/assets/images/phone-icon.svg')}}" alt="" />
                                        </a>
                                        <div>
                                            <div class="dropdown lang-selector">
                                                <img src="{{asset('front/assets/images/globe-icon.svg')}}" alt="" class="lang-icon float-lg-none float-start mt-1 mt-lg-0" />
                                                <a class="btn btn-secondary dropdown-toggle d-inline" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Eng
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>

                                                <ul class="dropdown-menu rounded-0 p-0" aria-labelledby="dropdownMenuLink">
                                                    <li><a class="dropdown-item" href="#">Urdu</a></li>
                                                    <li><a class="dropdown-item" href="#">Pashto</a></li>
                                                </ul>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            <div class="w-100">
                                <nav class="navbar navbar-expand-lg navbar-light">
                                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 border-right">
                                            <li class="nav-item">
                                                <a class="nav-link  {{Request::is('/')==true? 'active' : ''}}" aria-current="page" href="{{url('/')}}">Home</a>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Projects
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>
                                                <ul class="dropdown-menu rounded-0 p-0 " aria-labelledby="navbarDropdown">

                                                    <li><a class="dropdown-item" href="{{url('adp-north')}}"> C&W North Sector</a></li>
                                                    <li><a class="dropdown-item" href="#">C&W South Sector</a></li>
                                                    <li><a class="dropdown-item" href="#">Salient Feature of ADP 2019-20</a></li>
                                                    <li><a class="dropdown-item" href="#"> PSDP Projects</a></li>
                                                    <li><a class="dropdown-item" href="{{url('targets')}}">Targets & Achievements</a></li>
                                                    <li><a class="dropdown-item" href="{{url('development-expenditures')}}">Road Network of AJ&K </a></li>


                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle {{Request::is('downloads/*')==true? 'active' : ''}}" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Download
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>
                                                <ul class="dropdown-menu rounded-0 p-0 " aria-labelledby="navbarDropdown">

                                                    <li><a class="dropdown-item" href="{{url('roadmap')}}">Map of AJ&K </a></li>
                                                    @foreach($downloads as $key=> $download)
                                                    <li><a class="dropdown-item" href="{{url('downloads',$download->slug)}}">{{$download->title}}</a></li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle {{ ((Request::is('gallery')==true) || (Request::is('pages/laws-rules')==true))? 'active' : ''}}" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Media Center
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>
                                                <ul class="dropdown-menu rounded-0 p-0" aria-labelledby="navbarDropdown">
                                                    @foreach($galleries as $gallery)
                                                    <li><a class="dropdown-item" href="{{url('gallery',$gallery->slug)}}">{{$gallery->title.' '.$gallery->type}} </a></li>
                                                    @endforeach
                                                    <li><a class="dropdown-item" href="{{url('pages/laws-rules')}}">FAQ</a></li>

                                                </ul>
                                            </li>

                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    E-Tender
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>
                                                <ul class="dropdown-menu rounded-0 p-0" aria-labelledby="navbarDropdown">
                                                    @foreach($links as $link)
                                                    <li><a class="dropdown-item" href="{{$link->link}}">{{$link->title}}</a></li>
                                                    @endforeach


                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link  {{(Request::is('news')==true || Request::is('news/*'))==true? 'active' : ''}}" href="{{url('news')}}">Events</a>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle {{(Request::is('pages/*')==true && Request::is('pages/laws-rules')==false) ? 'active' : ''}}" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    About
                                                    <img src="{{asset('front/assets/images/angle-small-down.svg')}}" alt="" class="dropdown-icon float-lg-none float-end mt-2 mt-lg-0" />
                                                </a>
                                                <ul class="dropdown-menu rounded-0 p-0" aria-labelledby="navbarDropdown">
                                                    <li><a class="dropdown-item" href="{{url('pages/about-us')}}">About Us</a></li>
                                                    <li><a class="dropdown-item" href="{{url('pages/our-vision')}}">Our VISION</a></li>
                                                    <li><a class="dropdown-item" href="{{url('pages/our-mission')}}">Our Mission</a></li>
                                                    <li><a class="dropdown-item" href="{{url('pages/our-achievements')}}">Our achievements</a></li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link {{Request::is('contact-us')==true? 'active' : ''}}" href="{{url('contact-us')}}">Contact</a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link {{(Request::is('teams')==true || Request::is('teams/*')==true) ? 'active' : ''}}" href="{{url('teams')}}">Team</a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link {{(Request::is('roads')==true || Request::is('roads/*')==true) ? 'active' : ''}}" href="{{url('roads')}}">Current Road Status</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        @if(Request::is('/')==true)
        <x-banner />
        @endif

    </div>
</header>