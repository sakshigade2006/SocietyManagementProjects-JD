<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" onload="GetBranchNameInTheDropDown()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="addPolicyDetails" id="form1"
		modelAttribute="MisPaymentModal"> -->
			<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			<!-- Content Wrapper. Contains page content -->
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">MIS Payment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">MIS Payment</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">MIS Policy Details</h3>
									<!-- <input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete"
										value="Delete Last" id="ContentPlaceHolder1_btnDelete"
										class="btn btn-danger pull-right" /> -->
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtEnterPolicyNo" class="col-sm-4 control-label">Enter
												Policy No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="policyno" type="text"
													onchange="javascript:searchByEnterPolicyNumber();"
													id="policyno" class="form-control"
													PlaceHolder="Enter Policy No." /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy No</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtApplicatName" class="col-sm-4 control-label">Applicant
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="applicantname" type="text" readonly="readonly"
													id="applicantname" class="form-control"
													PlaceHolder="Enter Applicant Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorApplicatName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Applicat Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPolicyDate" class="col-sm-4 control-label">Policy
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="policydate" type="date" id="policydate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorPolicyDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPolicyAmt" class="col-sm-4 control-label">Policy
												Amt. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="policyamount" type="text" readonly="readonly"
													id="policyamount" class="form-control"
													PlaceHolder="Enter Policy Amt" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorPolicyAmt"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy Amt</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtInterestAmount" class="col-sm-4 control-label">Interest
												Amount <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="intrestamount" type="text" readonly="readonly"
													id="intrestamount" class="form-control"
													PlaceHolder="Enter Interest Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorInterestAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Interest Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeName" class="col-sm-4 control-label">Scheme
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="schemename" type="text" readonly="readonly"
													id="schemename" class="form-control"
													PlaceHolder=" Enter Scheme Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorSchemeName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Scheme Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPolicyBranch" class="col-sm-4 control-label">Policy
												Branch <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="policybranch" type="text" readonly="readonly"
													id="policybranch" class="form-control"
													PlaceHolder="Enter Policy Branch" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorPolicyBranch"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy Branch</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPolicyBranch" class="col-sm-4 control-label">Member
												Code<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="membercode" type="text" readonly="readonly" placeholder="Enter Member Code"
													id="membercode" class="form-control" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">MIS Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6"
										style="box-shadow: none; height: 245px; overflow: auto;">
										<div></div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlPayBranch" class="col-sm-4 control-label">Pay
												Amount</label>
											<div class="col-sm-8">
												<input name="payamount" type="text" readonly="readonly"
													id="payamount" class="form-control"
													PlaceHolder="Enter Pay Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Pay Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlPayBranch" class="col-sm-4 control-label">Pay
												Branch</label>
											<div class="col-sm-8">
												<select name="paybranch" id="paybranch" class="form-control"
													style="width: 100%;">
													<option value="" selected="selected">--Select Pay Branch--</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPayDate" class="col-sm-4 control-label">Pay
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="paydate" type="date" id="paydate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidatorPayDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Pay Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymentby" id="paymentby" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
													<option value="SBAccount">SBAccount</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="submit" name="PaySave" value="Pay" id="PaySave"
											class="btn btn-success pull-right" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- /.content-wrapper -->
			<div class="control-sidebar-bg"></div>
		</div>

		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- InputMask -->
		<script src="plugins/input-mask/jquery.inputmask.js"></script>
		<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
		<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
		<!-- date-range-picker -->
		<script src="bower_components/moment/min/moment.min.js"></script>
		<script
			src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- bootstrap datepicker -->
		<script
			src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		<!-- bootstrap color picker -->
		<script
			src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
		<!-- bootstrap time picker -->
		<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
		<!-- SlimScroll -->
		<script
			src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<!-- iCheck 1.0.1 -->
		<script src="plugins/iCheck/icheck.min.js"></script>
		<!-- FastClick -->
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
		<script src="dist/js/GetAllBranch.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	<!-- </form> -->
</body>

<!-- Dk/Admin/MISPayment.aspx by <!-----EDB------>
-->
</html>
