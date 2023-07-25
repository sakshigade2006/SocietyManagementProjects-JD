<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="java.util.List"%>
<jsp:include page="../header.jsp" />
<body
	onload="getAllLoanId();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="GroupPayment" modelAttribute="GroupPayment"
		 id="form1"
		>
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
					<h1 id="ContentPlaceHolder1_IdHeader">Group Loan Payment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Loan Details</li>
					</ol>
				</section>
				<%
				List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
				%>
				<section class="content">
					<div id="ContentPlaceHolder1_idSearch" class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by
													LoanID <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="searchLoanID" id="searchLoanID"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value=""></option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Loan Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="loanDate" type="date" value="01/08/2022"
														id="loanDate="
														form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="loanDateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="searchMemberCode"
													onchange="javascript:displayMemberDetails()"
													id="searchMemberCode" class="form-control select2"
													style="width: 100%;">
												</select> <span id="searchMemberCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative
												Details <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="relativeDetails" type="text"
													readonly="readonly" id="relativeDetails"
													class="form-control"
													PlaceHolder="Enter Relative Name &amp; Relation" /> <span
													id="relativeDetailsMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Relative Name & Relation</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDOB" class="col-sm-4 control-label">DOB
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-5">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="dob" type="text" value="01/08/2022"
														readonly="readonly" id="dob" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="dobMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Relative Name & Relation</span>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text" value="0" maxlength="2"
													readonly="readonly" id="age" class="form-control"
													Placeholder="Enter Age"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" /> <span id="ageMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="phoneno" type="text" maxlength="10"
													readonly="readonly" id="phoneno" class="form-control"
													Placeholder="Enter Mobile No" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="phonenoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSMSStatus" class="col-sm-4 control-label">SMS
												Status </label>
											<div class="col-sm-8">
												<input name="smsStatus" type="text" readonly="readonly"
													id="smsStatus" class="form-control"
													PlaceHolder="Enter SMS Status" /> <span id="smsStatusMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20"
													readonly="readonly" id="address" class="form-control"
													Placeholder="Enter Addess">
                              </textarea>
												<span id="addressMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pinCode" type="text" maxlength="6"
													readonly="readonly" id="pinCode" class="form-control"
													Placeholder="Enter Pincode" /> <span id="pinMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="cspName" id="cspName" class="form-control"
													style="width: 100%;">
													<%
													if (branchList != null && !branchList.isEmpty()) {
														for (BranchMaster branch : branchList) {
													%>
													<option value="<%=branch.getId()%>"><%=branch.getName()%></option>
													<%
													}
													}
													%>
												</select> <span id="cspNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_updtpnl">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Loan Plan Name
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="loanPlanName" id="loanPlanName"
														class="form-control" style="width: 100%;"
														onchange="javascript:displayLoanMasterDetails()">
													</select> <span id="loanPlanNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PIN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLoanROI" class="col-sm-4 control-label">Loan
													Type <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="loanType" type="text" readonly="readonly"
														id="loanType" class="form-control" PlaceHolder="Loan Type" />
													<span id="loanTypeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PIN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlPlanTerm" class="col-sm-4 control-label">Plan
													Term <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="planTerm" type="text" readonly="readonly"
														id="planTerm" class="form-control" PlaceHolder="Enter Plan Term" />
													<span id="planTermMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PIN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlLoanMode" class="col-sm-4 control-label">Loan
													Mode <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-3">
													<input name="mode" type="text" readonly="readonly"
														id="mode" class="form-control" PlaceHolder="Enter Mode" />
													<span id="modeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Mode</span>
												</div>
												<label class="col-sm-2 control-label">ROI(%)</label>
												<div class="col-sm-3">
													<input name="loanROI" type="text" readonly="readonly"
														id="loanROI" class="form-control"
														PlaceHolder="Enter Loan ROI" /> <span id="loanROIMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan ROI</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Loan Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="loanAmount" type="text" id="loanAmount"
														class="form-control" PlaceHolder="Enter Loan Amount"
														onpaste="return false" autocomplete="off" /> <span
														id="loanAmountMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtROIType" class="col-sm-4 control-label">ROI
													Type <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="ROIType" type="text" readonly="readonly"
														id="ROIType" class="form-control"
														PlaceHolder="Enter ROI Type" /> <span id="ROITypeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														ROI Type</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEMIAmount" class="col-sm-4 control-label">EMI
													Amount <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="emiAmount" type="text" readonly="readonly"
														id="emiAmount" class="form-control"
														PlaceHolder="Enter EMI Amount" /> <span id="emiAmountMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														EMI Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanPurpose" class="col-sm-4 control-label">Loan
												Purpose <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="loanPurpose" type="text" id="loanPurpose"
													class="form-control" PlaceHolder="Enter Loan Purpose" /> <span
													id="loanPurposeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Purpose</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Photo</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<div class="text-center">
												<img id="ContentPlaceHolder1_ImageApplicant"
													class="profile-user-img" src="dist/img/photo.jpg"
													style="width: 110px;" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Signature</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<div class="text-center">
												<img id="ContentPlaceHolder1_ImageSignature"
													class="profile-user-img" src="dist/img/sign.jpg"
													style="height: 70px; width: 115px;" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Deduction Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_uppnlde">
											<div class="form-group row">
												<label for="txtProcessingFee" class="col-sm-4 control-label">Processing
													Fee<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="processingFee" type="text" readonly="readonly"
														id="processingFee" class="form-control" /> <span
														id="processingFeeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan Purpose</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLegalAmt" class="col-sm-4 control-label">Legal
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="legalAmt" type="text" readonly="readonly"
														id="legalAmt" class="form-control" /> <span
														id="legalAmtMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan Purpose</span>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnkad">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Advisor/Collector
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorCode" type="text" id="advisorCode"
														class="form-control"
														placeholder="Enter Advisor/Collector Code" /> <span
														id="advisorCodeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_upduc">
											<div class="form-group row">
												<label for="txtGST" class="col-sm-4 control-label">GST<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="gst" type="text" readonly="readonly" id="gst"
														class="form-control" /> <span id="gstMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="insuranceAmt" type="text" readonly="readonly"
														id="insuranceAmt" class="form-control" /> <span
														id="insuranceAmtMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtInsuranceAmt" class="col-sm-4 control-label">Valuation
													Fees<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="vFeesAmt" type="text" id="vFeesAmt"
														class="form-control" /> <span id="vFeesAmtMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnladname">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Advisor/Collector
													Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorName" type="text" readonly="readonly"
														id="advisorName" class="form-control"
														placeholder="Enter Advisor/Collector Name" /> <span
														id="advisorNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Name</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="ContentPlaceHolder1_idpay" class="row">
									<div class="col-md-10">
										<div class="box box-danger">
											<div class="box-header with-border">
												<h3 class="box-title">Payment Details</h3>
											</div>
											<div class="box-body">
												<div class="col-md-6">
													<div class="form-group row">
														<label for="drpPaymentBy" class="col-sm-4 control-label">Chrg.
															Deduct by Cash</label>
														<div class="col-sm-8">
															<select name="ddlcharges"
																id="ddlcharges" class="form-control"
																style="width: 100%;">
																<option selected="selected" value="YES">YES</option>
																<option value="NO">NO</option>
															</select>
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-4 control-label">Payment Date
															<strong style="color: Red">*</strong>
														</label>
														<div class="col-sm-8">
															<div class="input-group date">
																<div class="input-group-addon">
																	<i class="fa fa-calendar"></i>
																</div>
																<input name="payDate"
																	type="date" value="01/08/2022"
																	id="payDate"
																	class="form-control"
																	data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
																	data-mask="" />
															</div>
														</div>
													</div>
													<div class="form-group row">
														<label for="txtProcessingFee"
															class="col-sm-4 control-label">Payment Status</label>
														<div class="col-sm-8">
															<input name="paymentStatus"
																type="text" readonly="readonly"
																id="paymentStatus"
																class="form-control" style="font-weight: bold;" />
														</div>
													</div>
													<div class="form-group row">
														<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
															By <strong style="color: Red">*</strong>
														</label>
														<div class="col-sm-8">
															<select name="paymode"
																id="paymode" class="form-control"
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
												<div class="col-md-6">
													<div class="form-group row">
														<label class="col-sm-4 control-label">Pay Remarks</label>
														<div class="col-sm-8">
															<input name="remarks"
																type="text" id="remarks"
																class="form-control" />
														</div>
													</div>
												</div>
											</div>
											<div class="box-footer">
												<div class="row col-md-12">
												<button type="submit"
																		name="ctl00$ContentPlaceHolder1$btnSave"
																		 id="button"
																		class="btn btn-success pull-right margin-r-5">Payment
																	</button>
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
<!-- Dk/Admin/GoldLoanApplication.aspx?Type=Payment EDB D 09:27:11 GMT -->
</html>
