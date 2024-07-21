@extends('front.layouts.layout')
@section('title', 'E-Registration')

@section('content')


<x-inner-page-header page='e-registration' slug='e-registration' />
<style>
	#checkout-content input[type="checkbox"] {
		margin-right: 4px !important;

		margin-left: 17px !important;
	}

	/**
* Checkout Page Styles.
**/

	#checkout-content {
		padding: 80px 0 130px;
	}

	#checkout-content .return-customer {
		background: #F9F9F9;
		border: 1px solid #EBEBEB;
		padding: 25px 30px;
		margin-bottom: 50px;
	}

	#checkout-content .return-customer p {
		margin-bottom: 0;
		font-size: 14px;
		color: #8E8E8E;
		line-height: 26px;
	}

	#checkout-content .return-customer a {
		color: #F69C00;
	}

	#checkout-content label,
	#checkout-content input[type="text"] {
		display: block;
	}

	#checkout-content label {
		font-size: 14px;
		line-height: 26px;
		color: #8E8D8D;
		margin-bottom: 5px;
		font-weight: 500;
		font-family: 'Open Sans';
	}

	#checkout-content input[type="text"] {
		width: 100%;
		margin-bottom: 10px;
		height: 40px;
		line-height: 40px;
		border: 1px solid #E2E2E2;
		outline: none;
		padding: 0 20px;
		font-family: 'Open Sans';
	}

	#checkout-content input[type="text"]:last-child {
		margin-bottom: 0;
	}

	#checkout-content .left-checkout>.row {
		margin-bottom: 22px;
	}

	#checkout-content .select-box {
		padding: 0;
		margin: 0;
		border: 1px solid #E2E2E2;
		width: 100%;
		overflow: hidden;
		background-color: #fff;

		background: #fff url(../img/cart/select-box-bg.png) no-repeat 95% 50%;
	}

	#checkout-content .select-box select {
		padding: 5px 8px;
		width: 130%;
		border: none;
		box-shadow: none;
		background-color: transparent;
		background-image: none;
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
	}

	#checkout-content .select-box select:focus {
		outline: none;
	}

	#checkout-content .row span {
		font-size: 14px;
		font-weight: 500;
		color: #8E8D8D;

	}

	#checkout-content input[type="checkbox"] {
		margin: 0;
		vertical-align: middle;
		margin-right: 15px;
	}

	#checkout-content textarea {
		width: 100%;
		height: 100px;
		border: 1px solid #E2E2E2;
		padding: 10px 20px;
		outline: none;
	}

	#checkout-content .ship-different {
		margin-top: 80px;
	}

	#checkout-content .order-box {
		border: 1px solid #D9D9D9;
		padding: 30px;
	}

	#checkout-content .order-box ul li {
		display: block;
		color: #8E8D8D;
		font-size: 14px;
		line-height: 45px;
		font-weight: 600;
	}

	#checkout-content .order-box ul li.total {
		border-top: 1px solid #E2E2E2;
		border-bottom: 1px solid #E2E2E2;
	}

	#checkout-content .order-box ul li span {
		float: right;
		display: inline-block;
	}

	#checkout-content .order-box ul li span.bold {
		font-size: 18px;
		color: #000;
		font-weight: 700;
	}

	#checkout-content .order-box ul li a span {
		color: #F69C00;
	}

	#checkout-content .order-box ul li input[type="radio"] {
		margin-right: 10px;
	}

	#checkout-content .order-box ul li .note {
		background: #ECECEC;
		padding: 25px;
		color: #8E8D8D;
		line-height: 24px;
		font-size: 14px;
		font-weight: normal;
		position: relative;
		font-family: 'Open Sans';
	}

	#checkout-content .order-box ul li .note .fa {
		font-size: 35px;
		position: absolute;
		top: -25px;
		left: 25px;
		color: #ECECEC;
	}

	#checkout-content .order-box ul li a.place-order {
		background: #36ABFC;
		text-transform: uppercase;
		display: inline-block;
		line-height: 36px;
		font-weight: 700;
		color: #fff;
		padding: 0 40px;
		margin-top: 30px;
	}

	/* Popup box BEGIN */
	.hover_bkgr_fricc {
		background: rgba(0, 0, 0, .4);
		cursor: pointer;
		display: none;
		height: 100%;
		position: fixed;
		text-align: center;
		top: 0;
		width: 100%;
		z-index: 10000;
	}

	.hover_bkgr_fricc .helper {
		display: inline-block;
		height: 100%;
		vertical-align: middle;
	}

	.hover_bkgr_fricc>div {
		background-color: #ffff;
		box-shadow: 10px 10px 60px #555;
		display: inline-block;
		height: auto;
		max-width: 551px;
		min-height: 100px;
		vertical-align: middle;
		width: 60%;
		position: relative;
		border-radius: 8px;
		padding: 15px 5%;


	}

	.popupCloseButton {
		background-color: #fff;
		border: 3px solid #999;
		border-radius: 50px;
		cursor: pointer;
		display: inline-block;
		font-family: arial;
		font-weight: bold;
		position: absolute;
		top: -20px;
		right: -20px;
		font-size: 25px;
		line-height: 30px;
		width: 30px;
		height: 30px;
		text-align: center;
	}

	.popupCloseButton:hover {
		background-color: #ccc;
	}

	.trigger_popup_fricc {
		cursor: pointer;
		font-size: 20px;
		margin: 20px;
		display: inline-block;
		font-weight: bold;
	}

	.help-block {
		display: block;
		margin-top: 5px;
		margin-bottom: 10px;
		color: #F00;
		font-size: x-small;
	}

	#checkout-content label {
		font-size: 13px !important;
		line-height: 26px;
		color: #8E8D8D;
		margin-bottom: 5px;
		font-weight: 500;
		font-family: 'Open Sans';
	}

	.button-pers {
		background: #2E2E2E;
		padding: 0 24px;
		color: #fff;
		border: none;
		outline: none;
		font-size: 16px;
		line-height: 40px;
		padding: 0 43px;
		text-transform: uppercase;
		font-weight: bold;
		margin-top: 20px;
	}

	#checkout-content .order-box ul li .note {
		background: #19551c;
		padding: 25px;
		color: #fffff;
		line-height: 24px;
		font-size: 14px;
		font-weight: normal;
		position: relative;
		font-family: 'Open Sans';
		color: #ffff;
	}

	#checkout-content .order-box ul li .note .fa {
		font-size: 35px;
		position: absolute;
		top: -25px;
		left: 25px;
		color: #19551c;
	}

	/* Popup box BEGIN */
	.auto-container {
		margin-top: 5px !important;
	}
</style>
<section id="checkout-content">
	<div class="container">
		<div class="row">
		
		
		</div>
		<div class="row">
			<form id="onlineApply" name="onlineApply" action="{{ url('eregist_store') }}" method="post" enctype="multipart/form-data">
				@csrf
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 left-checkout">
						<div class="section-title">
							<h1 style="font-size:28px;">E-Registeration of Contractors/ Firms</h1>
						</div>



						<div class="form-group">
							<label for="NameOfContractor">Name of Owner <span style="color:red;">*</span></label>
							<input type="text" placeholder="Name of Owner" id="NameOfOwner" name="NameOfOwner" value="{{ old('NameOfOwner') }}" required class="form-control" style="width:554px;">
						</div>



						<div class="row">
							<div class="col">
								<label for="fbrNONTN">District<span style="color:red;">*</span></label>
								<input type="text" placeholder="District" id="district" name="district" value="{{ old('district') }}" class="form-control" required>
							</div>
							<div class="col">
								<label for="KPRARegNo">PEC No <span style="color:red;">*</span></label>
								<input type="text" placeholder="PEC No" class="form-control" id="PECNo" name="PECNo" value="{{ old('PECNo') }}" required>
							</div>
						</div>

						<div class="form-group">
							<label for="categoryAppliedFor">Category applied For</label>
							{!! Form::select('categoryAppliedFor', \Helper::getData('categoryAppliedFor'),old('categoryAppliedFor'), array('required'=>'required','class' => 'form-control','style'=>'height:35px')) !!}
						</div>




						<div class="form-group">
							<label for="NameOfContractor">Name of Contractor/Firm/Company <span style="color:red;">*</span></label>
							<input type="text" placeholder="Contractor /Firm /Company" id="NameOfContractor" name="NameOfContractor" value="{{ old('NameOfContractor') }}" required class="form-control">
						</div>





						<div class="row">
							<div class="col-lg-12">
								<label for="address">Address (as per PEC) <span style="color:red;">*</span></label>
								<textarea placeholder="Address (as per PEC)" name="address" id="address" value="{{ old('address') }}" class="form-control" required></textarea>
							</div>
						</div>




						<div class="row">
							<div class="col">
								<label for="categoryPEC">PEC Category <span style="color:red;" required>*</span></label>
								<select name="categoryPEC" id="categoryPEC" class="form-control" style="height:35px" required>
									<option value="">--Select Category--</option>
									<option value="PK-C-A">PK-C-A</option>
									<option value="PK-C-B">PK-C-B</option>
									<option value="PK-C-1">PK-C-1</option>
									<option value="PK-C-2">PK-C-2</option>
									<option value="PK-C-3">PK-C-3</option>
									<option value="PK-C-4">PK-C-4</option>
									<option value="PK-C-5">PK-C-5</option>
									<option value="PK-C-6">PK-C-6</option>
								</select>

							</div>
							<div class="col">
								<label for="CNICNumber">CNIC No <span style="color:red;">*</span></label>
								<input type="text" placeholder="CNIC Number" id="CNICNumber" name="CNICNumber" value="{{ old('CNICNumber') }}" required maxlength="15" onkeypress="cnic()" class="form-control">
							</div>
						</div>





						<div class="row">
							<div class="col">
								<label for="speCODE">Specialization Code <span style="color:red;">*</span></label>
								<input type="text" placeholder="Specialization Code" id="speCODE" name="speCODE" class="form-control" value="{{ old('speCODE') }}" required>
							</div>
							<div class="col">
								<label for="fbrNONTN">FBR Registration No <span style="color:red;">*</span></label>
								<input type="text" placeholder="FBR No (NTN)" id="fbrNONTN" name="fbrNONTN" class="form-control" value="{{ old('fbrNONTN') }}" required>
							</div>
						</div>




						<div class="row">
							<div class="col">
								<label for="Email">Email Address <span style="color:red;">*</span></label>
								<input type="email" placeholder="Email Address" id="Email" name="Email" class="form-control" value="{{ old('Email') }}" required>
							</div>

							<div class="col">
								<label for="mobNo">Mobile No. <span style="color:red;">*</span></label>
								<input type="text" placeholder="Mobile No." id="mobNo" name="mobNo" value="{{ old('mobNo') }}" maxlength="12" onkeypress="mobNos()" class="form-control" required>
							</div>



						</div>
						<div class="form-group">
							<label for="RegLimted">Is Your firm registered/ Limted <span style="color:red;">*</span></label>

							<select id="RegLimted" name="RegLimted" class="form-control" style="height:35px" required>
								<option value="">--Select One--</option>
								<option value="Yes">Yes</option>
								<option value="No">No</option>
							</select>
						</div>
						<div class="form-group">
							<label>In Case of already enlisted in Provencial Department / Orginazation / Board</label>
							<input type="checkbox" value="C&W" name="enlist[]"><span> C&W </span>
							<input type="checkbox" value="PPH" name="enlist[]"><span> PPH </span>
							<input type="checkbox" value="LG" name="enlist[]"><span>Local Government </span>
							<input type="checkbox" value="LCB" name="enlist[]"><span>Local Council Board </span> <br />
							<input type="checkbox" value="Irrigation" name="enlist[]"><span>Irrigation </span>
							<input type="checkbox" value="Others" id="OtherChck" name="OtherChck" onChange="others();"><span> Others </span>


							<input type="text" placeholder="Others" value="" id="Others" name="Otherss" style="margin-top:20px; display:none;">
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-lg-offset-1 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
						<div class="section-title">
							<h1 style="font-size:28px;">Upload relevent documents</h1>
						</div>
						<div class="row">
							<div class="col-lg-12 order-box">
								<div class="form-group">
									<label for="CNICUpload">CNIC (Both Side) <span style="color:red;">*</span></label>
									<input type="file" id="CNICUpload" name="CNICUpload" required class="form-control-file" style="margin-bottom: 15px;" class="form-control p-0">
								</div>
								<div class="form-group">
									<label for="fbrUpload">FBR <span style="color:red;">*</span></label>
									<input type="file" id="fbrUpload" name="fbrUpload" required class="form-control-file" style="margin-bottom: 15px;" class="form-control p-0">
								</div>
								<div class="form-group">
									<label for="PEC2020">PEC<span style="color:red;">*</span></label>
									<input type="file" id="PEC2020" name="PEC2020" required class="form-control-file" style="margin-bottom: 15px;" class="form-control p-0">
								</div>
								<div class="form-group">
									<label>Form - H (Incase of Company) </label>
									<input type="file" id="FormHUpload" name="FormHUpload" class="form-control-file" style="margin-bottom: 15px;" class="form-control p-0">
								</div>

								<div class="form-group">
									<label for="PreEnlistmentUpload">Prevouse Enlistment </label>
									<input type="file" id="PreEnlistmentUpload" name="PreEnlistmentUpload" class="form-control-file" style="margin-bottom: 15px;" class="form-control p-0">
								</div>



								<div class="form-group">
									<h1>Decleration</h1>
									<label style="cursor:pointer;"><input type="checkbox" required id="decleration" name="decleration" value="agree" style="cursor:pointer;"> I agree</label>
									<div class="note">
										<div class="i fa fa-caret-up"></div>
										Certified that the information given in this application form is correct to the best of my knowledge &amp; belief and i further understand that in case any information is found to be incorrect later on, my enlistment is liable to be cancelled.
									</div>
								</div>

								<div class="form-group py-4 {{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">



									{!! app('captcha')->display() !!}
									@if ($errors->has('g-recaptcha-response'))
									<span class="help-block">
										<strong>{{ $errors->first('g-recaptcha-response') }}</strong>
									</span>
									@endif

								</div>

								<div class="form-group">
									<button type="submit" value="Submit" class="btn button-pers">Apply Online</button>
								</div>
							</div>
						</div>
					</div>

				</div>
			</form>
		</div>
	</div>
</section>
<!-- /.table-responsive -->
</div><!-- /.auto-container -->
</section><!-- /.pricing-style-two -->


@endsection

@section('script')
{!! NoCaptcha::renderJs() !!}
<script>
	$(document).ready(function() {
		$('#OtherChck').click(function() {
			if ($(this).is(':checked')) {
				$('#Others').show();
			} else {
				$('#Others').hide();
			}
		});
	});
</script>

<script type="text/javascript">
	function cnic() {
		//allow  backspace, tab, ctrl+A, escape, carriage return
		if (event.keyCode == 8 || event.keyCode == 9 ||
			event.keyCode == 27 || event.keyCode == 13 ||
			(event.keyCode == 65 && event.ctrlKey === true))
			return;
		if ((event.keyCode < 48 || event.keyCode > 57))
			event.preventDefault();

		var length = $('#CNICNumber').val().length;

		if (length == 5 || length == 13)
			$('#CNICNumber').val($('#CNICNumber').val() + '-');

	}

	function mobNos() {
		//allow  backspace, tab, ctrl+A, escape, carriage return
		if (event.keyCode == 8 || event.keyCode == 9 ||
			event.keyCode == 27 || event.keyCode == 13 ||
			(event.keyCode == 65 && event.ctrlKey === true))
			return;
		if ((event.keyCode < 48 || event.keyCode > 57))
			event.preventDefault();

		var length = $('#mobNo').val().length;

		if (length == 4)
			$('#mobNo').val($('#mobNo').val() + '-');

	}


	function others() {
		if ($("#OtherChck").is(':checked'))
			$("#Others").show();
		else
			$("#Others").hide();

	}
</script>
@stop