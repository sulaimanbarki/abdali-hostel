<section class="custom-container mt-80px mb-80px welcome-text">
    <div class="d-flex flex-column flex-lg-row align-items-start align-items-md-center justify-content-between gap-5">
        <article class="left-text-sec">
            <p class="title-top">{{ $pageData->slogan ?? 'Welcome to Health Department, Govt of KhyberPakhtunkhwa'}}</p>
            <h1 class="title fw-bold">{{ $pageData->title ?? 'Health Department-KP is a public entity; guiding health policies.'}}
            </h1>
            <p class="description">
                {!! $pageData->description ?? "
                Health Department-KP is a public entity; guiding health policies, governing healthcare institutions and leading healthcare interventions in Khyber Pakhtunkhwa. Towards decentralization and digitalization, it aims to provide healthcare at your doorstep.
                Devolved into healthcare education and service provision, the department; ensure and realizes supply and demand equilibrium, channelizing healthcare knowledge attitudes and practices on modern scientific patterns, however, synchronising
                learned techniques with beliefs, local values and norms.<br /><br /> Statistically prioritised interventions; concentrating epidemics, outbreaks, mutations and precautions; being learnt, advised, intervened,
                supervised and data-banked for future referrals.<br /><br /> Striving towards access, affordability and appraisal; synergic initiatives being initiated; complementing all the stakeholders, uplifting healthcare infrastructure, promoting
                public welfare." !!}
            </p>
            <div><a href="" class="btn green-bg custom-btn">Discover more</a></div>
        </article>
        <div class="welcome-image">
            <div class="thumbnail">
                <figure>
                    <img src="{{ $pageData->getFirstMediaUrl('banner')}}" alt="" />
                    <figcaption>
                        {!! $pageData->image_caption ?? 'Striving towards access, affordability and appraisal; synergic initiatives being initiated; complementing all the stakeholders, uplifting healthcare infrastructure, promoting public welfare.'!!}
                    </figcaption>
                </figure>
            </div>
        </div>
    </div>
</section>