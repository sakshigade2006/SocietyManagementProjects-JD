<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.BankMaster"%>
<%@page import="com.society.application.model.BranchMaster"%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post"
		action="updateIntraAccountTransfer"
		model="updateIntraAccountTransfer" id="form1">

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
					<h1 id="ContentPlaceHolder1_IdHeader">Intra Account Transfer</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Account Transfer</li>
					</ol>
				</section>
				<%
				List<BankMaster> bankList = (List<BankMaster>) request.getAttribute("bankMaster");
				%>
				<%
				List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
				%>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row text-center">
											<div class="box-header with-border">
												<h3 class="box-title">Debit Account Details</h3>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Acc.No.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="accountNo"
													
													id="accountNo"
													class="form-control select2" style="width: 100%;">
													<option value="">Select Acc.No</option>
													<%
													if (bankList != null && !bankList.isEmpty()) {
														for (BankMaster bank : bankList) {
													%>
													<option value="<%=bank.getId()%>"><%=bank.getAccountNo()%></option>
													<%
													}
													}
													%>

												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Member Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtDebitMemberNo"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtDebitMemberNo"
													class="form-control" Placeholder="Enter Member Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Acount Branch<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtDebitAcountBranch"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtDebitAcountBranch"
													class="form-control" Placeholder="Enter Acount Branch" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Account Branch</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Ava. Balance<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtDebitBalance"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtDebitBalance"
													class="form-control" Placeholder="Enter Balance" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitBalance"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Balance</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Mobile Number<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtDebitMobileNumber"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtDebitMobileNumber"
													class="form-control" Placeholder="Enter Mobile Number" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile Number</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row text-center">
											<div class="box-header with-border">
												<h3 class="box-title">Credit Account Details</h3>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Acc.No.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="accountNo"
													
													id="accountNo"
													class="form-control select2" style="width: 100%;">
													<option value="">Select Acc.No</option>
													<%
													if (bankList != null && !bankList.isEmpty()) {
														for (BankMaster bank : bankList) {
													%>
													<option value="<%=bank.getId()%>"><%=bank.getAccountNo()%></option>
													<%
													}
													}
													%>

												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Member Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtCreditMemberNo"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtCreditMemberNo"
													class="form-control" Placeholder="Enter Member No" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Acount Branch<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input
													name="ctl00$ContentPlaceHolder1$txtCreditAcountBranch"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtCreditAcountBranch"
													class="form-control" Placeholder="Enter Acount Branch" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Account Branch</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Ava. Balance<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtCreditBalance"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtCreditBalance"
													class="form-control" Placeholder="Enter Balance" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorCreditBalance"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Balance</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Mobile Number<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input
													name="ctl00$ContentPlaceHolder1$txtCreditMobileNumber"
													type="text" readonly="readonly"
													id="ContentPlaceHolder1_txtCreditMobileNumber"
													class="form-control" Placeholder="Enter Mobile Number" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile Number</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Trf Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="ctl00$ContentPlaceHolder1$txtTDate"
														type="text" value="01/08/2022"
														id="ContentPlaceHolder1_txtTDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Amount<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ctl00$ContentPlaceHolder1$txtAmount"
													type="text" id="ContentPlaceHolder1_txtAmount"
													class="form-control" placeholder="Enter Amount"
													onpaste="return false"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Amount</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<textarea name="ctl00$ContentPlaceHolder1$txtRemarks"
													rows="2" cols="20" id="ContentPlaceHolder1_txtRemarks"
													class="form-control" placeholder="Enter Remarks">
</textarea>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input
												type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
												value="Save"
												id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</section>
			</div>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitBalance"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditBalance"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"));
//]]>
</script>

		<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo");
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.controltovalidate = "ContentPlaceHolder1_ddlDebitSelectAccountNo";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.errormessage = "Select Account No";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo");
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.controltovalidate = "ContentPlaceHolder1_txtDebitMemberNo";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.errormessage = "Enter Member No";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch");
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.controltovalidate = "ContentPlaceHolder1_txtDebitAcountBranch";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.errormessage = "Enter Account Branch";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitBalance = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitBalance"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitBalance");
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.controltovalidate = "ContentPlaceHolder1_txtDebitBalance";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.errormessage = "Enter Balance";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitBalance.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber");
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.controltovalidate = "ContentPlaceHolder1_txtDebitMobileNumber";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.errormessage = "Enter Mobile Number";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo");
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.controltovalidate = "ContentPlaceHolder1_ddlCreditSelectAccountNo";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.errormessage = "Select Account No";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo");
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.controltovalidate = "ContentPlaceHolder1_txtCreditMemberNo";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.errormessage = "Enter Member No";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch");
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.controltovalidate = "ContentPlaceHolder1_txtCreditAcountBranch";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.errormessage = "Enter Account Branch";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCreditBalance = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCreditBalance"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditBalance");
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.controltovalidate = "ContentPlaceHolder1_txtCreditBalance";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.errormessage = "Enter Balance";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCreditBalance.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber");
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.controltovalidate = "ContentPlaceHolder1_txtCreditMobileNumber";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.errormessage = "Enter Mobile Number";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter Amount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAmount.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitAccountBranch'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitBalance').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitBalance'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitMobileNumber'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditSelectAccountNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditMemberNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditAcountBranch'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditBalance').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditBalance'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCreditMobileNumber'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
}
//]]>
</script>
	</form>
</body>
<!-- Dk/Admin/SavingIntraTransfer.aspx EDB D 09:27:05 GMT -->
</html>
