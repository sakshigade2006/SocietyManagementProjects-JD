<jsp:include page="../header.jsp" />
<body onload="getAllGroupLoan1()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" name="myForm" action="saveLoanMaster"
		modelAttribute="saveGoldLoanMaster">
		<%
         String status = (String)request.getAttribute("status");
         if(status!=null && "success".equals(status)){
          %>
		<script>
         alert("Saved Successfully");
      </script>
		<%
         }else{
          
         }
         %>
		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			<script type="text/javascript">
            //<![CDATA[
            Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
            //]]>
         </script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Loan Plan Create</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Loan Plan</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Plan Details</h3>
								</div>
								<input type="hidden" value="Group" name="type">
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Loan Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="loanName" type="text" id="loanName"
													class="form-control" PlaceHolder="Enter Loan Name" /> <span
													id="loanNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlLoanType" class="col-sm-4 control-label">Loan
												Type <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="loanType" id="loanType" class="form-control"
													style="width: 100%;">
													<option value="" selected>Select Loan Type</option>
													<option value="Gold Loan">Gold Loan</option>
													<option value="Silver Loan">Silver Loan</option>
												</select> <span id="loanTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlEmiCollection" class="col-sm-4 control-label">EMI
												Mode<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="emiCollection" id="emiCollection"
													class="form-control" style="width: 100%;">
													<option value="">Select EMI mode</option>
													<option value="Dly.">Daily</option>
													<option value="Wly.">Weekly</option>
													<option value="Fly.">Fortnightly</option>
													<option value="Mly.">Monthly</option>
													<option value="Qly.">Quarterly</option>
												</select> <span id="emiCollectionMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlRoiType" class="col-sm-4 control-label">ROI
												Type <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="roiType" id="roiType" class="form-control"
													style="width: 100%;">
													<option selected value="">Select ROI Type</option>
													<option value="Flat Interest">Flat Interest</option>
													<option value="Reducing interest">Reducing
														interest</option>
													<option value="Rule 78">Rule 78</option>
												</select> <span id="roiTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlEmiType" class="col-sm-4 control-label">EMI
												Type <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="emiType" id="emiType" class="aspNetDisabled"
													class="form-control" style="width: 100%;">
													<option value="" Selected>Select EMI Type</option>
													<option value="Regular">Regular</option>
													<option value="Irregular">Irregular</option>
												</select> <span id="emiTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Min Age <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="minAge" type="text" id="minAge"
													class="form-control" /> <span id="minAgeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Min Age</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanName" class="col-sm-4 control-label">Max
												Age <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="maxAge" type="text" id="maxAge"
													class="form-control" /> <span id="maxAgeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Max Age</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Min Amt.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="minAmount" type="text" id="minAmount"
													class="form-control" /> <span id="minAmountMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Min Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Max Amt.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="maxAmount" type="text" id="maxAmount"
													class="form-control" /> <span id="maxAmountMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Max Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Status <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="planStatus"
													type="checkbox" name="planStatus" checked="checked" /> <span
													id="planStatusMsg" class="slider round"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Min Term <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="minTerm" type="text" id="minTerm"
													class="form-control" /> <span id="minTermMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Min Term</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Max Term <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="maxTerm" type="text" id="maxTerm"
													class="form-control" /> <span id="maxTermMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Max Term</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">ROI (% p.a.)<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="roi" type="text" id="roi" class="form-control"
													autocomplete="off" /> <span id="roiMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													ROI (% p.a.)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlRoiType" class="col-sm-4 control-label">Security<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="securityType" id="securityType"
													class="form-control" style="width: 100%;">
													<option value="PLEDGE">PLEDGE</option>
													<option value="MORTGAGE">MORTGAGE</option>
													<option value="HYPOTHECATION">HYPOTHECATION</option>
													<option value="GUARANTEE">GUARANTEE</option>
												</select> <span id="securityTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Security</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Deduction Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtProcessingFee" class="col-sm-4 control-label">Proc.
												Fee(%)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="processingFee" type="text" id="processingFee"
													class="form-control" autocomplete="off" /> <span
													id="processingFeeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Processing Fee (%)</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtLegalAmt" class="col-sm-4 control-label">Legal
												Fee(%)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="legalAmt" type="text" id="legalAmt"
													class="form-control" autocomplete="off" /> <span
													id="legalAmtMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Legal Fee (%)</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtGST" class="col-sm-4 control-label">GST
												(%) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="gst" type="text" id="gst" class="form-control"
													autocomplete="off" /> <span id="gstMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													GST (%)</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtInsuranceAmt" class="col-sm-4 control-label">Insur.
												Fee(%)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="insuranceAmt" type="text" id="insuranceAmt"
													class="form-control" autocomplete="off" /> <span
													id="insuranceAmtMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Insurance Fee (%)</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">ValuerFee(%)<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="valuerFees" type="text" id="valuerFees"
													class="form-control" autocomplete="off" /> <span
													id="valuerFeesMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Valuer Fee (%)</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Late Fine Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group row">
											<label class="col-sm-8 control-label">Grace Period
												Days<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-4">
												<input name="gracePeriodDays" type="text"
													id="gracePeriodDays" class="form-control" /> <span
													id="gracePeriodDaysMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Grace Period Days</span>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group row">
											<label class="col-sm-6 control-label">Penulty Type <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-6">
												<select name="penaltyType" id="penaltyType"
													class="form-control" style="width: 100%;">
													<option value="Percentage">Percentage</option>
													<option value="Amount">Amount</option>
												</select> <span id="penaltyTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Penalty</span>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group row">
											<label class="col-sm-7 control-label">Penalty(p.m.) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-5">
												<input name="penalty" type="text" id="penalty"
													class="form-control" autocomplete="off" /> <span
													id="penaltyMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Penalty</span>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<button type="button"
											onclick="return validateGoldLoanMaster()"
											class="btn btn-success pull-right margin-r-5">Save</button>
									</div>
								</div>
							</div>
							<div class="box box-info"
								style="box-shadow: none; height: 400px; overflow-x: scroll !important; overflow-y: scroll;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvDataGr"
											style="width: 100%; border-collapse: collapse;">
											<caption>Plan Data List</caption>
											<tr>
												<td>No Receord Found</td>
											</tr>
										</table>
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	</form>
</body>
<!-- Dk/Admin/LoanPlan.aspx?Type=Gold EDB D 09:27:10 GMT -->
</html>