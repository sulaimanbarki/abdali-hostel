@extends('front.layouts.layout')
@section('title', 'Telephone Directory')

@section('content')

<section class="inner-banner">
	<div class="auto-container clearfix">
		<div class="title pull-left">
			<h3>Telephone Directory</h3>
			<p>You can find us while dailing the following contact numbers.</p>
		</div><!-- /.title pull-left -->
		<div class="breadcumb pull-right">
			<ul class="list-inline">
				<li><a href="index.php">Home</a></li>
				<li><span>Telephone Directory</span></li>
			</ul><!-- /.list-inline -->
		</div><!-- /.breadcumb pull-right -->
	</div><!-- /.auto-container -->
</section><!-- /.inner-banner -->


<section class="pricing-style-two sec-padding">
	<div class="auto-container">
		<div class="table-responsive">
			<table class="table text-center pricing-table">
				<tr>
					<th colspan="5">
						<h3>North Telephone Directory</h3>
					</th>
				</tr>
				<thead>
					<tr>
						<th>
							<h3>No.</h3>
						</th>
						<th>
							<h3>Office Name</h3>

						</th>
						<th>
							<h3>Phone No.</h3>

						</th>
						<th>
							<h3>Fax No.</h3>

						</th>
						<th>
							<h3>Mobile No.</h3>

						</th>
					</tr>
				</thead>
				<tbody>
					@foreach($north_numbers as $key=> $nn)

					<tr>
						<td>{{$key+1}}</td>
						<td>&nbsp;{{$nn->officename}} </td>
						<td><img src="{{ url('front/img/icons/directory/phone.png') }}">&nbsp;{{$nn->phoneNO}}</td>
						<td><img src="{{ url('front/img/icons/directory/fax.png') }}">&nbsp;{{$nn->faxNO}}</td>
						<td><img src="{{ url('front/img/icons/directory/mob.png') }}">&nbsp;{{$nn->moblieNO}}</td>
					</tr>

					@endforeach
					<tr>
						<th colspan="5">
							<h3>South Telephone Directory</h3>
						</th>
					</tr>

					@foreach($south_numbers as $key=> $sn)
					<tr>
						<td>{{$key+1}}</td>
						<td>&nbsp;{{$sn->officename}} </td>
						<td><img src="{{ url('front/img/icons/directory/phone.png') }}">&nbsp;{{$sn->phoneNO}}</td>
						<td><img src="{{ url('front/img/icons/directory/fax.png') }}">&nbsp;{{$sn->faxNO}}</td>
						<td><img src="{{ url('front/img/icons/directory/mob.png') }}">&nbsp;{{$sn->moblieNO}}</td>
					</tr>

					@endforeach

				</tbody>
			</table>
		</div><!-- /.table-responsive -->
	</div><!-- /.auto-container -->
</section>

@endsection