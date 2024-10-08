@extends('layouts/contentLayoutMaster')

@section('title', 'Locale')

@section('content')
<!-- internationalization -->
<section id="internationalization">
  <div class="row">
    <div class="col-sm-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Change Locale</h4>
        </div>
        <div class="card-body">
          <div class="dropdown">
            <a class="btn btn-outline-primary dropdown-toggle" href="javascript:void(0);" role="button" id="dropdown-flag" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="flag-icon flag-icon-us mr-50"></i>
              <span class="selected-language">English</span>
            </a>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="{{url('lang/en')}}" data-language="en">
                <i class="flag-icon flag-icon-us mr-50"></i>
                <span>English</span>
              </a>

              <a class="dropdown-item" href="{{url('lang/ur')}}" data-language="ur">
                <i class="flag-icon flag-icon-pk"></i> اردو
              </a>
              <!-- <a class="dropdown-item" href="{{url('lang/fr')}}" data-language="fr">
                <i class="flag-icon flag-icon-fr mr-50"></i>
                <span>French</span>
              </a>
              <a class="dropdown-item" href="{{url('lang/de')}}" data-language="de">
                <i class="flag-icon flag-icon-de mr-50"></i>
                <span>German</span>
              </a>
              <a class="dropdown-item" href="{{url('lang/pt')}}" data-language="pt">
                <i class="flag-icon flag-icon-pt mr-50"></i>
                <span>Portuguese</span>
              </a> -->
            </div>
          </div>

          <div class="card-localization border rounded mt-3 p-2">
            <h5 class="mb-1">Title</h5>
            <p class="card-text" data-i18n="key">
              {{ __('locale.message') }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/ internationalization -->
@endsection