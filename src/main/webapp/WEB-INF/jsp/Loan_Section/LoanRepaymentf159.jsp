<%@page import="java.util.List"%>
<%@page import="com.society.application.model.Loan"%>
<%@page import="com.society.application.model.Member"%>
<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="com.society.application.model.LoanMaster"%>
<%@page import="com.society.application.model.ClientMaster"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Dk/Admin/LoanRepayment.aspx?Type=Normal EDB D 09:27:09 GMT -->
<!-----DKB------>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-----DKB------>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>EQFI NIDHI LIMITED</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css" />
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
<script src="dist/js/loanModule.js"></script>
<!-- daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="plugins/iCheck/all.css" />
<!-- Select2 -->
<link rel="stylesheet"
	href="bower_components/select2/dist/css/select2.min.css" />
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="dist/css/dashboard.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.html" />
<link rel="stylesheet" href="dist/css/lightbox.min.css" />
<link rel="stylesheet" href="dist/css/qr.css" />
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
<script type="text/javascript">
        function isNumberOnlyKey(txt, evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Allow Only Numbers");
                return false;
            }
        }
    </script>
<script type="text/javascript">
        function isNumberKey(txt, evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode == 46) {
                //Check if the text already contains the . character
                if (txt.value.indexOf('.') === -1) {
                    return true;
                } else {
                    return false;
                }
            } else {
                if (charCode > 31
        && (charCode < 48 || charCode > 57)) {
                    alert("Allow Only Numbers & Decimal");
                    return false;
                }
            }
            return true;
        }
    </script>
<script src="dist/js/customJs.js"></script>
<script src="dist/js/investmentSection.js"></script>
<script src="dist/js/loanModule.js"></script>
<script src="dist/js/goldLoanMaster.js"></script>
<script src="dist/js/groupMasterUtilsJs.js"></script>
<script src="dist/js/LoanModuleJs.js"></script>
</head>
<body onload="getListOfLoanId()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" modelAttribute="rd"
		action="saveDataRegularEMIRepayment" id="form1">
		<%
		String status = (String) request.getAttribute("status");
		if (status != null && "success".equals(status)) {
		%>
		<script>
        	   alert("Savaed Data Successfully");
        	</script>
		<%
		} else {

		}
		%>
		<input name="id" type="hidden" id="id" class="form-control"
			data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
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
											//List<Member> memberList = (List<Member>) request.getAttribute("memberList");
											List<ClientMaster> memberList = (List<ClientMaster>) request.getAttribute("memberList");
											%>
											<%
											List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
											%>
											<%
											List<LoanMaster> loanMasterList = (List<LoanMaster>) request.getAttribute("loanPlanMaster");
											%>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select Loan ID<strong
													style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<%
													List<Loan> loanList = (List<Loan>) request.getAttribute("loanList");
													%>
													<select name="searchLoanId" onchange="displayLoanDetailsOfRegularEMIRepaymentSelectedId()"
														id="searchLoanId1" class="form-control select2"
														style="width: 100%;">
														<option selected="selected" value="">Select Loan
															Id</option>
														<%
														if (loanList != null && !loanList.isEmpty()) {
															for (Loan loan : loanList) {
														%>
														<option value="<%=loan.getId()%>"><%=loan.getId()%>
														</option>
														<%
														}
														}
														%>
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
												<input name="cspName" type="text" readonly="readonly"
													id="cspName" class="form-control"
													PlaceHolder="Enter Code &amp; Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorCodeName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Code & Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNameRelation" class="col-sm-5 control-label">Relative
												Details </label>
											<div class="col-sm-7">
												<input name="memberRelativesName" type="text"
													readonly="readonly" id="memberRelativesName"
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
													id="branchName" class="form-control"
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
												<input name="loanName" type="text" readonly="readonly"
													id="loanName" class="form-control"
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
												<input name="loanType" type="text" readonly="readonly"
													id="loanType" class="form-control"
													PlaceHolder="Enter Loan Mode" /> <span
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
												<input name="ROI" type="text" readonly="readonly" id="loanROI"
													class="form-control" PlaceHolder="Enter Loan ROI" /> <span
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
												<input name="roiType" type="text" readonly="readonly"
													id="roiType" class="form-control"
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
												<input name="totalInterest" type="text" readonly="readonly"
													id="totalInterest" class="form-control"
													PlaceHolder="Enter Total Interest" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPrinciple" class="col-sm-5 control-label">Total
												Principal <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="totalPrinciple" type="text" readonly="readonly"
													id="totalPrinciple" class="form-control"
													PlaceHolder="Enter Total Principal" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalPayble" class="col-sm-5 control-label">Total
												Payable <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="totalPayble" type="text" readonly="readonly"
													id="totalPayble" class="form-control"
													PlaceHolder="Enter Total Payble" />
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
												<input name="totalInterestDue" type="text"
													readonly="readonly" id="totalInterestDue"
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
												<input name="totalPrincipleDue" type="text"
													readonly="readonly" id="totalPrincipleDue"
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
												<input name="totalDueAmt" type="text" readonly="readonly"
													id="totalDueAmt" class="form-control"
													PlaceHolder="Enter Total Due Amt." /> <span
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
													<input name="dueDate" type="text" readonly="readonly"
														id="dueDate" class="form-control"
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

												<select name="cspName" id="cspName" class="form-control"
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
												<input name="advancePaid" type="text" readonly="readonly"
													id="advancePaid" class="form-control"
													PlaceHolder="Enter Advance Paid" />
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
													<input name="paymentDate" type="date" value="01/08/2022"
														id="paymentDate" class="form-control"
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
												<select name="deductLateFine" id="deductLateFine"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="NO">NO</option>
													<option value="YES">YES</option>
												</select>
											</div>
											<div class="col-sm-4">
												<input name="lateFine" type="text" value="0"
													readonly="readonly" id="lateFine" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPayableAmount" class="col-sm-4 control-label">Pay
												Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="payableAmount" type="text" id="payableAmount"
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
												<input name="totalPayableAmt" type="text"
													readonly="readonly" id="totalPayableAmt"
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
													<select name="paymode" id="paymode" class="form-control"
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
													<input name="advisorCode" type="text" id="advisorCode"
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
													<input name="advisorName" type="text" readonly="readonly"
														id="advisorName" class="form-control"
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
												<textarea name="remarks" rows="2" cols="20" id="remarks"
													class="form-control" Placeholder="Enter Remarks if any">
</textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">

										<input type="submit" name="btnSave" value="Save Data"
											id="btnSave" class="btn btn-success pull-right margin-r-5" />
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

<!-- Dk/Admin/LoanRepayment.aspx?Type=Normal EDB D 09:27:09 GMT -->
</html>
