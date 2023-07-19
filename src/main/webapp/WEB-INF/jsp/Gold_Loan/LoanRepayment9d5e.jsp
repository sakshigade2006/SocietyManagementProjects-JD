<%@page import="com.society.application.model.ClientMaster"%>
<%@page import="com.society.application.model.LoanMaster"%>
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.Member"%>
<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="com.society.application.model.Loan"%>
<jsp:include page="../header.jsp" />
<script src="dist/js/customJs.js"></script>
<script src="dist/js/investmentSection.js"></script>
<script src="dist/js/loanModule.js"></script>
<script src="dist/js/goldLoanMaster.js"></script>
<script src="dist/js/groupMasterUtilsJs.js"></script>
<script src="dist/js/LoanModuleJs.js"></script>
<body class="skin-blue sidebar-mini"
	onload="getAllLoans();getAllLoanId();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="updateLoanRegularEMIRepayment?Type=Gold"
		id="form1" modelAttribute="updateLoan">
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
			<% //List<Member> memberList = (List<Member>) request.getAttribute("memberList"); 
			     List<ClientMaster> memberList = (List<ClientMaster>) request.getAttribute("memberList"); 
			%>
			<% List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList"); %>
			<% List<LoanMaster> loanMasterList = (List<LoanMaster>) request.getAttribute("loanPlanMaster"); %>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Regular EMI Repayment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Regular Repayment</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<%
												List<Loan> loanList = (List<Loan>) request.getAttribute("loanList");
												%>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select Loan ID
													& Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="searchLoanIDLoan"
														onchange="javascript:displayLoanDetailsSelectedId()"
														id="searchLoanIDLoan" class="form-control select2"
														style="width: 100%;"> <
														<option selected="selected" value="">Select Loan
															ID</option>
														<%
														if (loanList != null && !loanList.isEmpty()) {
															for (Loan loan : loanList) {
														%>
														<option value="<%=loan.getId()%>"><%=loan.getId()%></option>
														<%
														}
														}
														%>
													</select> <span id="ContentPlaceHolder1_RequiredFieldValidator1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Loan ID</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" id="id" name="id">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtLoanDate" class="col-sm-5 control-label">Loan
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="loanDate" type="text" readonly="readonly"
														id="loanDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorLoneDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtCodeName" class="col-sm-5 control-label">Code
												& Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="searchMemberCode" type="text"
													readonly="readonly" id="searchMemberCode"
													class="form-control" PlaceHolder="Enter Code &amp; Name" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorCodeName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Code & Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNameRelation" class="col-sm-5 control-label">Relative
												Details </label>
											<div class="col-sm-7">
												<input name="relativeDetails" type="text"
													readonly="readonly" id="relativeDetails"
													class="form-control" PlaceHolder="Enter Relative Details" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMobileNo" class="col-sm-5 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="phoneno" type="text" readonly="readonly"
													id="phoneno" class="form-control"
													PlaceHolder="Enter Mobile No" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorMobileNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile No</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtBranchName" class="col-sm-5 control-label">Branch
												Name<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="cspName" type="text" readonly="readonly"
													id="cspName" class="form-control"
													PlaceHolder="Enter Branch Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatortxtBranchName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Branch Name</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtLoanPlanName" class="col-sm-5 control-label">Plan
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name=loanPlanName type="text" readonly="readonly"
													id="loanPlanName" class="form-control"
													PlaceHolder="Enter Plan Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Plan Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPlanTerm" class="col-sm-5 control-label">Term
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="planTerm" type="text" readonly="readonly"
													id="planTerm" class="form-control"
													PlaceHolder="Enter Plan Term" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorPlanTerm"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Term</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanMode" class="col-sm-5 control-label">Loan
												Mode <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="mode" type="text" readonly="readonly" id="mode"
													class="form-control" PlaceHolder="Enter Loan Mode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorLoanMode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Mode</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanAmount" class="col-sm-5 control-label">Loan
												Amount <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="loanAmount" type="text" readonly="readonly"
													id="loanAmount" class="form-control"
													PlaceHolder="Enter Loan Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanROI" class="col-sm-5 control-label">Loan
												ROI <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="loanROI" type="text" readonly="readonly"
													id="loanROI" class="form-control"
													PlaceHolder="Enter Loan ROI" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorLoanROI"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan ROI</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtROIType" class="col-sm-5 control-label">ROI
												Type <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ROIType" type="text" readonly="readonly"
													id="ROIType" class="form-control"
													PlaceHolder="Enter ROI Type" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtEmiAmount" class="col-sm-5 control-label">EMI
												Amount <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="emiAmount" type="text" readonly="readonly"
													id="emiAmount" class="form-control"
													PlaceHolder="Enter Emi Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorEmiAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Emi Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalInterest" class="col-sm-5 control-label">Total
												Interest <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalInterest"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalInterest"
													class="form-control" PlaceHolder="Enter Total Interest" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPrinciple" class="col-sm-5 control-label">Total
												Principal <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalPrinciple"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalPrinciple"
													class="form-control" PlaceHolder="Enter Total Principal" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPayble" class="col-sm-5 control-label">Total
												Payable <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalPayble"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalPayble"
													class="form-control" PlaceHolder="Enter Total Payble" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtTotalInterestDue"
												class="col-sm-5 control-label">Interest Due <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalInterestDue"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalInterestDue"
													class="form-control" PlaceHolder="Enter Total Interest Due" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Interest Due</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPrincipleDue"
												class="col-sm-5 control-label">Principal Due <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalPrincipleDue"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalPrincipleDue"
													class="form-control"
													PlaceHolder="Enter Total Principal Due" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Principle Due</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalDueAmt" class="col-sm-5 control-label">Total
												Due Amt. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTotalDueAmt"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtTotalDueAmt"
													class="form-control" PlaceHolder="Enter Total Due Amt." />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Due Amt.</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDueDate" class="col-sm-5 control-label">Due
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="ctl00$ContentPlaceHolder1$txtDueDate"
														type="text" readonly="readonly"
														id="ContentPlaceHolder1_txtDueDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidatorDueDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Due Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPaymentBranch" class="col-sm-5 control-label">Pay
												Branch<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="cspName" id="branchname" class="form-control"
													style="width: 100%;">
													<option value="">Select Branch</option>
													<% if(branchList!=null && !branchList.isEmpty()){
														for(BranchMaster branch :branchList ){
															%>
													<option value="<%=branch.getId()%>"><%=branch.getName()%></option>
													<%
														}
													}
													%>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAdvancePaid" class="col-sm-5 control-label">Advance
												Paid <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtAdvancePaid"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtAdvancePaid"
													class="form-control" PlaceHolder="Enter Advance Paid" />
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtPaymentdate" class="col-sm-4 control-label">Pay
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="payDate"
														type="date" value="01/08/2022"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtPaymentDate\&#39;,\&#39;\&#39;)&#39;, 0)"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
														id="payDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlDeductLateFine" class="col-sm-4 control-label">Deduct
												Fine<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-4">
												<select name="ctl00$ContentPlaceHolder1$ddlDeductLateFine"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlDeductLateFine\&#39;,\&#39;\&#39;)&#39;, 0)"
													id="ContentPlaceHolder1_ddlDeductLateFine"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="NO">NO</option>
													<option value="YES">YES</option>
												</select>
											</div>
											<div class="col-sm-4">
												<input name="ctl00$ContentPlaceHolder1$txtLateFine"
													type="text" value="0" readonly="readonly"
													id="ContentPlaceHolder1_txtLateFine" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPayableAmount" class="col-sm-4 control-label">Pay
												Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="payAmount"
													type="text"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtPayableAmount\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberKey(this, event);"
													id="payAmount"
													class="form-control" PlaceHolder="Enter Payable Amount"
													onpaste="return false" autocomplete="off" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorPayableAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Payable Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPayableAmt"
												class="col-sm-4 control-label">Net Amt.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="netAmount"
													type="text" readonly="readonly"
													id="netAmount"
													class="form-control" PlaceHolder="Enter Total Payable Amt." />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Payable Amt.</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppaymode">
											<div class="form-group row">
												<label for="drpPaymentBy" class="col-sm-4 control-label">Pay
													By<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="paymode"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="paymode" class="form-control"
														style="width: 100%;">
														<option selected="selected" value="Cash">Cash</option>
														<option value="Cheque">Cheque</option>
														<option value="Online">Online</option>
														<option value="NEFT">NEFT</option>
														<option value="SBAccount">SBAccount</option>
														<option value="Flexi">Flexi</option>
													</select>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_upbank"></div>
									</div>
									<div class="col-md-4">
										<div id="ContentPlaceHolder1_upchq"></div>
										<div id="ContentPlaceHolder1_uppnkad">
											<div class="form-group row">
												<label class="col-sm-5 control-label">Advisor Code<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-7">
													<input name="advisorCode"
														type="text"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtAdvisorCode\&#39;,\&#39;\&#39;)&#39;, 0)"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
														id="advisorCode"
														class="form-control"
														placeholder="Enter Advisor/Collector Code" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator6"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-5 control-label">Advisor Name<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-7">
													<input name="advisorName"
														type="text" readonly="readonly"
														id="advisorName"
														class="form-control"
														placeholder="Enter Advisor/Collector Name" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator7"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Name</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Remarks</label>
											<div class="col-sm-7">
												<textarea name="remarks"
													rows="2" cols="20" id="remarks"
													class="form-control" Placeholder="Enter Remarks if any">
</textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="submit" name="save" value="Save Data" id="save"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; height: 400px; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div></div>
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
		<script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2();
                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                //Date range picker
                $('#reservation').daterangepicker()
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
                $('#daterange-btn').daterangepicker(
                 {
                     ranges: {
                         'Today': [moment(), moment()],
                         'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                         'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                         'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                         'This Month': [moment().startOf('month'), moment().endOf('month')],
                         'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                     },
                     startDate: moment().subtract(29, 'days'),
                     endDate: moment()
                 },
                 function (start, end) {
                     $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
                 }
               )
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })
                //Money Euro
                $('[data-mask]').inputmask()

                //iCheck for checkbox and radio inputs
                $('span[type="checkbox"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                })
            })
        </script>

		<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoneDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCodeName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobileNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtBranchName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPlanTerm"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanMode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmiAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDueDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPayableAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
//]]>
</script>

		<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_ddlSearchLoanID";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Select Loan ID";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorLoneDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoneDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoneDate");
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.controltovalidate = "ContentPlaceHolder1_txtLoanDate";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.errormessage = "Enter Loan Date";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorLoneDate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCodeName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCodeName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCodeName");
ContentPlaceHolder1_RequiredFieldValidatorCodeName.controltovalidate = "ContentPlaceHolder1_txtCodeName";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.errormessage = "Enter Code & Name";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCodeName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMobileNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMobileNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobileNo");
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.controltovalidate = "ContentPlaceHolder1_txtMobileNo";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.errormessage = "Enter Mobile No";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMobileNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtBranchName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtBranchName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtBranchName");
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.controltovalidate = "ContentPlaceHolder1_txtBranchName";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.errormessage = "Enter Branch Name";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtBranchName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName");
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.controltovalidate = "ContentPlaceHolder1_txtLoanPlanName";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.errormessage = "Enter Loan Plan Name";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorPlanTerm = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPlanTerm"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPlanTerm");
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.controltovalidate = "ContentPlaceHolder1_txtPlanTerm";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.errormessage = "Enter Plan Term";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorLoanMode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanMode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanMode");
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.controltovalidate = "ContentPlaceHolder1_txtLoanMode";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.errormessage = "Enter Loan Mode";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorLoanMode.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtLoanAmount";
ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Loan Amount";
ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorLoanROI = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanROI"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI");
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.controltovalidate = "ContentPlaceHolder1_txtLoanROI";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.errormessage = "Enter Loan ROI";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorLoanROI.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorEmiAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorEmiAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmiAmount");
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.controltovalidate = "ContentPlaceHolder1_txtEmiAmount";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.errormessage = "Enter Emi Amount";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue");
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.controltovalidate = "ContentPlaceHolder1_txtTotalInterestDue";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.errormessage = "Enter Total Interest Due";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue");
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.controltovalidate = "ContentPlaceHolder1_txtTotalPrincipleDue";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.errormessage = "Enter Total Principle Due";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt");
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.controltovalidate = "ContentPlaceHolder1_txtTotalDueAmt";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.errormessage = "Enter Total Due Amt.";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDueDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDueDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDueDate");
ContentPlaceHolder1_RequiredFieldValidatorDueDate.controltovalidate = "ContentPlaceHolder1_txtDueDate";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.errormessage = "Enter Due Date";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDueDate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorPayableAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPayableAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPayableAmount");
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.controltovalidate = "ContentPlaceHolder1_txtPayableAmount";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.errormessage = "Enter Payable Amount";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorPayableAmount.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt");
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.controltovalidate = "ContentPlaceHolder1_txtTotalPayableAmt";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.errormessage = "Enter Total Payable Amt.";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtAdvisorCode";
ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter Advisor/Collector Code";
ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtAdvisorName";
ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Advisor/Collector Name";
ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
//]]>
</script>

		<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoneDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoneDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCodeName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCodeName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobileNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobileNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtBranchName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtBranchName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPlanTerm').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPlanTerm'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanMode').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanMode'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmiAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmiAmount'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalInterestDue'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalPrincipleDue'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalDueAmt'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDueDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDueDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPayableAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPayableAmount'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalPayableAmt'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
}
//]]>
</script>

	</form>
</body>

<!-- Dk/Admin/LoanRepayment.aspx?Type=Gold EDB D 09:27:11 GMT -->
</html>
