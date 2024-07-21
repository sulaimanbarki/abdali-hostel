@extends('front.layouts.layout')
@section('title', 'Contact Us')

@section('content')
<section class="inner-banner blue-bg">
    <div class="auto-container clearfix">
        <div class="title pull-left">
            <h3>Contact Us</h3>
        </div><!-- /.title pull-left -->
        <div class="breadcumb pull-right">
            <ul class="list-inline">
                <li><a href="index-2.html">Home</a></li>
                <li><span>Contact Us</span></li>
            </ul><!-- /.list-inline -->
        </div><!-- /.breadcumb pull-right -->
    </div><!-- /.auto-container -->
</section><!-- /.inner-banner -->

<div class="contact-page contact-form-wrapper sec-padding">
    <div class="auto-container">
        <div class="row">
            <div class="col-md-6">
                <div class="google-map" id="contact-map" data-map-lat="34.359688" data-map-lng="73.471054" data-icon-path="img/resources/map-marker.png" data-map-title="DHQ Complex,H Block , Old Secretariat, Muzaffarabad, AJK" data-map-zoom="12" data-markers='{
			        "marker-1": [34.359688, 73.471054],
			        "<h4>My map</h4> <p>some map</p>"]
			    }'>
                </div><!-- /#contact-map.google-map -->
            </div><!-- /.col-md-6 -->
            <div class="col-md-6">
                <div class="title">
                    <h3>Get In Touch</h3>
                </div><!-- /.title -->
                <p>Communications & Works Department was established in 1979. Since establishment the Department is working to promote safe, sustainable, cost effective and environment friendly road infrastructure leading to socio-economic development.</p>
                <form action="https://world5.commonsupport.com/html/digital-media/inc/sendemail.php" class="validate-cf contact-form">
                    <input type="text" name="name" placeholder="Name" />
                    <input type="text" name="email" placeholder="Email" />
                    <textarea name="message" placeholder="Message"></textarea>
                    <button type="submit">Submit</button>
                </form>
            </div><!-- /.col-md-6 -->
        </div><!-- /.row -->
    </div><!-- /.auto-container -->
</div><!-- /.contact-page contact-form-wrapper -->

<section class="contact-info gray-bg">
    <div class="auto-container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="single-contact-info">
                    <i class="flaticon-placeholder"></i>
                    <h3>Where We Are?</h3>
                    <p>DHQ Complex,'H' Block , Old Secretariat, Muzaffarabad, AJK</p>
                    <a href="aboutUs.php">MORE ABOUT US </a>
                </div><!-- /.single-contact-info -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="single-contact-info">
                    <i class="flaticon-phone-call"></i>
                    <h3>Give us a Call</h3>
                    <p>+92(582)-2920085</p>

                </div><!-- /.single-contact-info -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="single-contact-info">
                    <i class="flaticon-technology"></i>
                    <h3>Vist Our Website</h3>
                    <p>https://cwd.ajk.gov.pk/</p>
                </div><!-- /.single-contact-info -->
            </div><!-- /.col-md-3 -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="single-contact-info">
                    <i class="flaticon-envelope-opened-outline"></i>
                    <h3>Drop us a Line</h3>
                    <p>info@cwd.gok.pk</p>

                </div><!-- /.single-contact-info -->
            </div><!-- /.col-md-3 -->
        </div><!-- /.row -->
    </div><!-- /.auto-container -->
</section><!-- /.contact-info -->

@endsection