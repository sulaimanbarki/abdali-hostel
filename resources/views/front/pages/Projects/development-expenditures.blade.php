@extends('front.layouts.layout')
@section('title', 'Home')

@section('content')


<section class="inner-banner">
	<div class="auto-container clearfix">
		<div class="title pull-left">
			<h3>Summary Road Network of C&W North & Souths</h3>
		</div><!-- /.title pull-left -->
		<div class="breadcumb pull-right">
			<ul class="list-inline">
				<li><a href="index.php">Home</a></li>
				<li><span>Summary Road Network of C&W North & South</span></li>
			</ul><!-- /.list-inline -->
		</div><!-- /.breadcumb pull-right -->
	</div><!-- /.auto-container -->
</section><!-- /.inner-banner -->

<!-- /.pricing-style-two -->





<section class="pricing-style-two sec-padding">
	<div class="auto-container">
		<div class="sec-title">
			<h3>Development Expenditures 2018</h3>
			<p>Summary Road Network of C&W North & South</p>
		</div>
		<div class="table-responsive">
			<table class="table text-center pricing-table">
				<thead>
					<tr>
						<th width="6%" rowspan="2" class="bg"><h3>S.No</h3></th>
                        <th width="17%" rowspan="2" class="bg"><h3>District</h3></th>
                        <th colspan="3" class="bg"><h3>Types of Roads</h3></th>
                        <th width="10%" rowspan="2" class="bg"><h3>Total</h3></th>
                    </tr>
                   <tr>
						<th width="20%" class="bg-1"><h3>Major Roads</h3></th>
                        <th width="18%" class="bg-1"><h3>Link Roads</h3></th>
                        <th width="29%" class="bg-1"><h3>Fair Weather Roads</h3></th>
                    </tr>

				</thead>
				<tbody>

                    <tr>
						<td colspan="6"><h3>North</h3></td>
                    </tr>
                  <tr>
						<td>1</td>
                        <td>Neelum</td>
                        <td>121</td>
                        <td>52</td>
                        <td>384</td>
                        <td><strong>557</strong></td>

					</tr>
                    <tr>
						<td>2</td>
                        <td>Muzaffarabad</td>
                        <td>436</td>
                        <td>777</td>
                        <td>52</td>
                        <td><strong>1266</strong></td>

					</tr>
                    <tr>
						<td>3</td>
                        <td>Jhelum Valley</td>
                        <td>197</td>
                        <td>552</td>
                        <td>763</td>
                        <td><strong>1266</strong></td>
					</tr>

                    <tr>
						<td>4</td>
                        <td>Bagh</td>
                        <td>438</td>
                        <td>472</td>
                        <td>09</td>
                        <td><strong>919</strong></td>
					</tr>

                     <tr>
						<td>5</td>
                        <td>Haveli</td>
                        <td>217</td>
                        <td>119</td>
                        <td>0</td>
                        <td><strong>336</strong></td>
					</tr>
                    <tr>
						<td>6</td>
                        <td>Poonch</td>
                        <td>487</td>
                        <td>563</td>
                        <td>46</td>
                        <td><strong>1096</strong></td>
					</tr>
                     <tr>
						<td>7</td>
                        <td>Sudhnuti</td>
                        <td>487</td>
                        <td>563</td>
                        <td>46</td>
                        <td><strong>1096</strong></td>
					</tr>
                    <tr>
						<td colspan="2"><strong>Total</strong></td>
                        <td>2134</td>
                        <td>2954</td>
                        <td>535</td>
                        <td><strong>5623</strong></td>
					</tr>

                  	<tr>
						<td colspan="6"><h3>SOUTH</h3></td>
                  	</tr>
                     <tr>
						<td>1</td>
                        <td>Kotli</td>
                        <td>400</td>
                        <td>1161</td>
                        <td>--</td>
                        <td><strong>1561</strong></td>
					</tr>
                    <tr>
						<td>2</td>
                        <td>Mirpur</td>
                        <td>192</td>
                        <td>824</td>
                        <td>--</td>
                        <td><strong>1016</strong></td>
					</tr>
                    <tr>
						<td>3</td>
                        <td>Bhimbir</td>
                        <td>152</td>
                        <td>474</td>
                        <td>39</td>
                        <td><strong>665</strong></td>
					</tr>
                    <tr>
						<td colspan="2"><strong>Total</strong></td>
                        <td>744</td>
                        <td>2459</td>
                        <td>39</td>
                        <td><strong>3242</strong></td>
					</tr>
                    <tr>
						<td colspan="2"><strong>G. TOTAL</strong></td>
                        <td>2878</td>
                        <td>5413</td>
                        <td>574</td>
                        <td><strong>8865</strong></td>
					</tr>
				</tbody>
			</table>
		</div><!-- /.table-responsive -->
	</div><!-- /.auto-container -->
</section>


<section class="cta-style-two">
	<div class="auto-container clearfix">
		<div class="left-title pull-left">
			<h3>Do you need to register your company as contractor?</h3>
			<p>We are in progress to developed E-tendering system soon</p>
		</div><!-- /.left-title -->
		<div class="cta-button pull-right">
			<a href="#" class="btn btn-default">E-Registration</a>
		</div><!-- /.cta-button pull-right -->
	</div><!-- /.auto-container -->
</section><!-- /.cta-style-two -->
@endsection
