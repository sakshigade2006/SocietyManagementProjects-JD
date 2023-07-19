<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.BankMaster"%>
<%@page import="com.society.application.model.BranchMaster"%>
<body class="skin-blue sidebar-mini"
	onload="getAllAccountNo(); getAllBranchAccountCloser();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="accountCloser" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Savings A/C Close</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">A/C Close</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-10">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Savings Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlDebitSelectAccountNo"
												class="col-sm-4 control-label">Select Acc.No.<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="accountNo" id="accountNo"
													class="form-control select2" style="width: 100%;"
													onchange="getDataOnFieldsSavingAccCloser();">

												</select><span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Member Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="memberCode" type="text" readonly="readonly"
													id="memberCode" class="form-control"
													Placeholder="Enter Member Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member No</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Mobile Numder<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="mobileNumber" type="text" readonly="readonly"
													id="mobileNumber" class="form-control"
													Placeholder="Enter Mobile No" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Account Branch</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Opening Branch<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="branchName" type="text" readonly="readonly"
													id="branchName" class="form-control"
													Placeholder="Enter Opening Branch" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Opening Branch</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Opening Date<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="openingDate" type="text" readonly="readonly"
													id="openingDate" class="form-control"
													Placeholder="Enter Opening Date" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Opening Date</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtCurrentBalance" class="col-sm-4 control-label">Current
												Balance<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="avaBalance" type="text" readonly="readonly"
													id="avaBalance" class="form-control"
													Placeholder="Enter Current Balance" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Current Balance</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalInterestPaid"
												class="col-sm-4 control-label">Paid Interest<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="paidInterest" type="text" readonly="readonly"
													id="paidInterest" class="form-control"
													Placeholder="Enter Total Interest Paid" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Interest Paid</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtInterestDue" class="col-sm-4 control-label">Interest
												Due<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="interestDue" type="text" readonly="readonly"
													id="interestDue" class="form-control"
													Placeholder="Enter Interest Due" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorInterestDue"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Interest Due</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNetAmount" class="col-sm-4 control-label">Net
												Amount<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="netAmount" type="text" readonly="readonly"
													id="netAmount" class="form-control"
													Placeholder="Enter Net Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorNetAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Net Amount</span>
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
											<label for="ddlClosingBranchName"
												class="col-sm-4 control-label">Closing Branch<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="branchName1" id="branchName1"
													class="form-control select2" style="width: 100%;">
													<option>select</option>
												</select>

											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Closing Date<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="closingDate" type="date" value="01/08/2022"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
														id="closingDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymentBy" id="paymentBy" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtRemarks" class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<input name="remarks" type="text" id="remarks"
													class="form-control" placeholder="Enter Remarks" />
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
												value="Close Account" id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5" />
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
		<script src="dist/js/SavingsAccount.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitMemberNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorInterestDue"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNetAmount"));
//]]>
</script>

		<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo");
ContentPlaceHolder1_RequiredFieldValidatorDebitSelectAccountNo.controltovalidate = "ContentPlaceHolder1_ddlSelectAccount";
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
var ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber");
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.controltovalidate = "ContentPlaceHolder1_txtMobileNumber";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.errormessage = "Enter Account Branch";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch");
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.controltovalidate = "ContentPlaceHolder1_txtOpeningBranch";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.errormessage = "Enter Opening Branch";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate");
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.controltovalidate = "ContentPlaceHolder1_txtOpeningDate";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.errormessage = "Enter Opening Date";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance");
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.controltovalidate = "ContentPlaceHolder1_txtCurrentBalance";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.errormessage = "Enter Current Balance";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid");
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.controltovalidate = "ContentPlaceHolder1_txtTotalInterestPaid";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.errormessage = "Enter Total Interest Paid";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorInterestDue = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorInterestDue"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorInterestDue");
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.controltovalidate = "ContentPlaceHolder1_txtInterestDue";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.errormessage = "Enter Interest Due";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorInterestDue.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorNetAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorNetAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNetAmount");
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.controltovalidate = "ContentPlaceHolder1_txtNetAmount";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.errormessage = "Enter Net Amount";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorNetAmount.initialvalue = "";
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

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtMobileNumber'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtOpeningBranch'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtOpeningDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrentBalance'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalInterestPaid'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorInterestDue').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorInterestDue'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNetAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNetAmount'));
}
//]]>
</script>
</form>
</body>
</html>
