@extends('front.layouts.layout')
@section('title', 'Targets & Achievements')

@section('content')

<style>
	.bg {
		background: #508167 !important;
		border: 1px solid #406551 !important;
		border-right: 1px solid #406551 !important;
	}

	.bg-1 {
		background: #569c77 !important;
		border: 1px solid #406551 !important;
		border-right: 1px solid #406551 !important;
	}
</style>

<x-inner-page-header page='notice-inviting-tender' slug='notice-inviting-tender' />


<section class="page-details">
	<div class="custom-container">
		<table class="table text-center pricing-table">
			<thead>
				<tr>
					<th rowspan="2">
						<h3>Year</h3>
					</th>
					<th colspan="4">
						<h3>Projects Scheduled for completion (Nos.)</h3>
					</th>
					<th colspan="4">
						<h3>Projects Actually Completed (Nos.)</h3>
					</th>


				</tr>
				<tr>
					<th class="bg">
						<h3>North</h3>
					</th>
					<th class="bg">
						<h3>South</h3>
					</th>
					<th class="bg">
						<h3>CDO</h3>
					</th>
					<th class="bg">
						<h3>Total</h3>
					</th>
					<th class="bg-1">
						<h3>North</h3>
					</th>
					<th class="bg-1">
						<h3>South</h3>
					</th>
					<th class="bg-1">
						<h3>CDO</h3>
					</th>
					<th class="bg-1">
						<h3>Total</h3>
					</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>2018-19</td>
					<td>47</td>
					<td>13</td>
					<td>01</td>
					<td>61</td>
					<td>36</td>
					<td>15</td>
					<td>0</td>
					<td>51</td>

				</tr>
				<tr>
					<td>2019-20</td>
					<td>33</td>
					<td>25</td>
					<td>01</td>
					<td>59</td>
					<td>--</td>
					<td>--</td>
					<td>--</td>
					<td>--</td>

				</tr>

			</tbody>
		</table>
	</div><!-- /.auto-container -->
</section>



@endsection