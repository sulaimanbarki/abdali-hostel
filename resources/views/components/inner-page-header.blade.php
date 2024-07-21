<section class="d-block page-title-banner" style="background-image: url('{{ $pageData? $pageData->getFirstMediaUrl('banner'): '#'}}');">
  <div class="banner-overlay">
    <div class="custom-container">
      <div class="d-flex flex-column align-items-center justify-content-center title-con">
        <div>
          <h1 class="page-title fw-bold">{{$pageData->banner_title?? 'Page'}}</h1>
        </div>
      </div>
      <div class="breadcrumbs-con">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="{{url('/')}}" class="text-decoration-none text-Capitalize">Home</a></li>
            <li class="breadcrumb-item text-Capitalize active" aria-current="page">{{ $pageData->banner_title?? 'Page'}}</li>
          </ol>
        </nav>
      </div>
    </div>
  </div>
</section>