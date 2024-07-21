<section id="top-bar">
    <div class="auto-container clearfix">
        <div class="left-info pull-left">
            <p>Communication & Works Department || State of AJ&K </p>
        </div>
        <div class="right-info pull-right">
            <ul>
                <li>
                    <i class="icon-man"></i>
                    <a href="#">login</a>
                    <a href="#">register</a>
                </li>

            </ul>
        </div>
    </div>
</section>


<header class="header stricky">
    <div class="auto-container clearfix">
        <div id="menuzord" class="menuzord">
            <a href="index.php" class="menuzord-brand mt-2">
                <div style="width:124px; float:left;"><img class="d-none d-md-block" height="115px" src="{{asset('front/img/logo/logon.png')}}" alt="Awesome Image" /></div>
                <div style="width:230px; float:right;"><img class="d-none d-md-block" src="{{asset('front/img/logo/logourdu.png')}}" alt="Awesome Image" /></div>
                <!-- <img class="d-block d-md-none" style="width:70px;" src="img/mobile-logo.png" alt="Awesome Image"/>-->
            </a>

            <ul class="menuzord-menu">
                <li>
                    <a href="{{url('/')}}">Home</a>

                </li>
                <li><a href="{{ url('aboutus') }}">About</a>
                    <ul class="dropdown">
                        <li><a href="{{ url('aboutus') }}">Introduction</a></li>
                        <li><a href="{{ url('organogram') }}">Organogram</a></li>
                        <li><a href="{{ url('phone') }}">Telephone Directory</a></li>
                        <li><a href="{{ url('officer-profile') }}">Officers Profile</a></li>
                    </ul>
                </li>

                <li><a href="#">E-Tender</a>
                    <ul class="dropdown">
                        <li><a href="{{ url('nit') }}">Notice Inviting Tender- NIT</a></li>
                        <li><a href="{{ url('applyonline') }}">E-Registration</a></li>
                        <li><a href="{{ url('contractor-login') }}">Contractor Login</a></li>
                        <li><a href="{{ url("official-login") }}">Official Login</a></li>
                        <li><a href="{{ url('approved-contractors-list') }}">Approved Contractors List</a></li>
                        <li><a href="{{ url("debared-contractors-list") }}">Debared Contractors List</a></li>

                    </ul>
                </li>

                <li><a href="#">Projects</a>
                    <ul class="dropdown">
                        <li><a href="{{url('c&wnorthsecter')}}">C&W North Sector</a></li>
                        <li><a href="{{ url('c&wsouthsector') }}">C&W South Sector</a></li>
                        <li><a href="{{ url('salient-features-ADP-2019-20') }}">Salient Feature of ADP 2019-20</a></li>
                        <li><a href="psdp-projects">PSDP Projects</a></li>
                        <li><a href="{{url('targets')}}">Targets & Achievements</a></li>
                        <li><a href="{{url('development-expenditures')}}">Road Network of AJ&K </a></li>
                    </ul>
                </li>

                <li><a href="#">Downloads</a>
                    <ul class="dropdown">
                        <li><a href="{{ url('roadmap') }}">Map of AJ&K </a></li>
                        <li><a href="office-circulars">Office Circulars</a></li>
                        <li><a href="notification">Notifications</a></li>
                    </ul>
                </li>

                <li><a href="#">Gallery</a>
                    <ul class="dropdown">
                        <li><a href="{{url('gallery-north')}}">North </a></li>
                        <li><a href="{{url('gallery-south')}}">South</a></li>
                        <li><a href="videos">Videos</a></li>
                    </ul>
                </li>

                <li><a href="{{url('contact-us')}}">Contact</a></li>

            </ul>
        </div>
    </div>
</header>
