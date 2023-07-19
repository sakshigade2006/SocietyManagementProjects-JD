<jsp:include page="../header.jsp" />
<body
	onload="getAllLoans();getAllLoanId();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="#" id="form1">
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
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ScriptManager1', 'form1', [], [], [], 90,
						'ctl00');
				//]]>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Gold Loan Document</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Loan Document</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details for Print</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Select by Loan ID <strong style="color: Red">*</strong></label>
											<select name="searchLoanIDLoan" id="searchLoanIDLoan"
												onchange="javascript:displayLoanDetailsSelectedId()"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value=""></option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Select Document <strong style="color: Red">*</strong></label>
											<select name="ctl00$ContentPlaceHolder1$ddlPrintType"
												id="ContentPlaceHolder1_ddlPrintType" class="form-control"
												style="width: 100%;">
												<option value="Application Print">Application Print</option>
												<option value="Loan Receipt">Loan Receipt</option>
												<option value="Sanction Letter">Sanction Letter</option>
												<option value="Letter of Guarantee">Letter of
													Guarantee</option>
												<option value="Letter of Undertaking">Letter of
													Undertaking</option>
												<option value="Demand Promissory Note">Demand
													Promissory Note</option>
												<option value="Loan Agreement">Loan Agreement</option>
												<option value="Loan Amortization Schedule">Loan
													Amortization Schedule</option>
												<option value="Term and Condition">Term and
													Condition</option>
												<option value="Payment Due Notice">Payment Due
													Notice</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label></label>
											<button type="button"
												name="ctl00$ContentPlaceHolder1$btnSave" value="Search"
												id="ContentPlaceHolder1_btnSave"
												class="btn btn-success margin-20">Search</button>
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
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label for="txtLoanPlanName" class="col-sm-5 control-label">Plan
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="loanPlanName" type="text" readonly="readonly"
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
									</div>
									<div class="col-md-4">
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
									</div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Search Result</h3>
									<div class="box-tools pull-right"></div>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
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
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})
			})
		</script>

		<script type="text/javascript">
			//<![CDATA[
			var Page_Validators = new Array(
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoneDate"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCodeName"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobileNo"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPlanTerm"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanMode"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmiAmount"));
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[
			var ContentPlaceHolder1_RequiredFieldValidatorLoneDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoneDate"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoneDate");
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.controltovalidate = "ContentPlaceHolder1_txtLoanDate";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.errormessage = "Enter Loan Date";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorLoneDate.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorCodeName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCodeName"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCodeName");
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.controltovalidate = "ContentPlaceHolder1_txtCodeName";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.errormessage = "Enter Code & Name";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorCodeName.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorMobileNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMobileNo"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobileNo");
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.controltovalidate = "ContentPlaceHolder1_txtMobileNo";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.errormessage = "Enter Mobile No";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorMobileNo.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName");
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.controltovalidate = "ContentPlaceHolder1_txtLoanPlanName";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.errormessage = "Enter Loan Plan Name";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorPlanTerm = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPlanTerm"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPlanTerm");
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.controltovalidate = "ContentPlaceHolder1_txtPlanTerm";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.errormessage = "Enter Plan Term";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorPlanTerm.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorLoanMode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanMode"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanMode");
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.controltovalidate = "ContentPlaceHolder1_txtLoanMode";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.errormessage = "Enter Loan Mode";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorLoanMode.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
			ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtLoanAmount";
			ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Loan Amount";
			ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorLoanROI = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanROI"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI");
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.controltovalidate = "ContentPlaceHolder1_txtLoanROI";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.errormessage = "Enter Loan ROI";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorLoanROI.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorEmiAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorEmiAmount"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmiAmount");
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.controltovalidate = "ContentPlaceHolder1_txtEmiAmount";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.errormessage = "Enter Emi Amount";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorEmiAmount.initialvalue = "";
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[

			var Page_ValidationActive = false;
			if (typeof (ValidatorOnLoad) == "function") {
				ValidatorOnLoad();
			}

			function ValidatorOnSubmit() {
				if (Page_ValidationActive) {
					return ValidatorCommonOnSubmit();
				} else {
					return true;
				}
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoneDate').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoneDate'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCodeName').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCodeName'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobileNo').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobileNo'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPlanName'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPlanTerm').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPlanTerm'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanMode').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanMode'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmiAmount').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmiAmount'));
			}
			//]]>
		</script>
	</form>
</body>

<!-- Dk/Admin/GoldLoanDocumentPrint.aspx EDB D 09:27:12 GMT -->
</html>
