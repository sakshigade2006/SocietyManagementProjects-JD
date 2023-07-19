<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<body class="skin-blue sidebar-mini" onload="GetBranchNameInTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="get" modelAttribute="incentivepaymentmodel"
		action="incentivepayments" id="form2"> -->
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
			<div class="content-wrapper" style="min-height: 1105.75px;">

				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Incentive Payment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Incentive Payment</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Search Box</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Month Name :</label> <select name="monthname"
												id="monthname" class="form-control" style="width: 100%;">
												<option selected="selected" value="">--Select Month
													Name--</option>
												<option value="January">January</option>
												<option value="February">February</option>
												<option value="March">March</option>
												<option value="April">April</option>
												<option value="May">May</option>
												<option value="June">June</option>
												<option value="July">July</option>
												<option value="August">August</option>
												<option value="September">September</option>
												<option value="October">October</option>
												<option value="November">November</option>
												<option value="December">December</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Code :</label> <input name="code" type="text"
												placeholder="Enter Code" id="code" class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label></label> 
												<input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete"
												value="Search" onclick="searchByMonthNameAndCode();"
												id="ContentPlaceHolder1_btnDelete"
												class="btn btn-danger pull-right" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Incentive Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtBranch" class="col-sm-4 control-label">Name
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="name" type="text" id="name"
													class="form-control" PlaceHolder="Enter Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorBranch"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPosition" class="col-sm-4 control-label">Position
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="position" type="text" id="position"
													class="form-control" PlaceHolder="Enter Position" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorPosition"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Position</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNewBusiness" class="col-sm-4 control-label">Self
												Business <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="selfbusiness" type="text" id="selfbusiness"
													class="form-control" PlaceHolder="Enter Self Business" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorNewBusiness"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Self Business</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtOldBusiness" class="col-sm-4 control-label">Team
												Business<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="teambusiness" type="text" id="teambusiness" class="form-control"
														PlaceHolder="Enter Team Business" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorOldBusiness"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Team Business</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalBusiness" class="col-sm-4 control-label">Total
												Business <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="totalbusiness" type="text" id="totalbusiness" class="form-control"
														PlaceHolder="Enter Total Business" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Business</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtTDSDeduction" class="col-sm-4 control-label">Total
												Incentive <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="totalincentive" type="text" placeholder="Enter Total Incentive"
														id="totalincentive" class="form-control" />
												<span id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Incentive</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTDSDeduction" class="col-sm-4 control-label">TDS
												(-) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
													<input name="tds" type="text" id="tds"
														class="form-control" PlaceHolder="Enter TDS" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													TDSDeduction</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtServiceChanges" class="col-sm-4 control-label">Service
												Charge (-) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="servicecharge" type="text" id="servicecharge" class="form-control"
														PlaceHolder="Enter Service Charge" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Service Charge</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAllowance" class="col-sm-4 control-label">Allowance
												(If Any)</label>
											<div class="col-sm-8">
												<input name="allowance" type="text" 
														id="allowance" class="form-control" PlaceHolder="Enter Allowance" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNetPayble" class="col-sm-4 control-label">Net
												Payable <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="netpayable" type="text" id="netpayable" class="form-control"
														PlaceHolder="Enter Net Payable" />
												<span id="ContentPlaceHolder1_RequiredFieldValidatorNetPayble"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Net Payable</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
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
													<input name="paydate" type="date" 
														id="paydate" class="form-control"
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
												<select name="paymentby"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)"
													id="paymentby" class="form-control" style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
													<option value="SBAccount">SBAccount</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6"></div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnPay"
											value="Pay"
											onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnPay&quot;, &quot;&quot;, true, &quot;B&quot;, &quot;&quot;, false, false))"
											id="ContentPlaceHolder1_btnPay"
											class="btn btn-success pull-right margin-r-5" />
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

<script type="text/javascript">

</script>

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

<!-- Dk/Admin/IncentivePayment.aspx by <!-----EDB------>
-->
</html>
