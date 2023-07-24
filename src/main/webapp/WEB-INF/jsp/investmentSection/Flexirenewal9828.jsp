<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="getAllPolicyNumber1();getfetchbranchinv();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="flexisave" modelAttribute="user"  id="form1"> -->
	<input id="id" name="id" type="hidden">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Flexi Deposit/Withdrawal</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Deposit/Withdrawal</li>
				</ol>
			</section>

			<form id="myForm" name="myForm" modelAttribute="user"
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-10">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Policy Details</h3>
								</div>
								<div class="box-body">
									<input type="hidden" name="id123" id="id123">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Txn Date<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="tDate" type="date" id="tDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="branchName" id="branchName"
													class="form-control select2" style="width: 100%;">
													<!-- <option value="" selected="selected"></option> -->
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Branch Name</span>
											</div>
										</div>
										<input type="hidden" name="id">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Policy
												No.<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="searchbyPolicyNo" id="searchbyPolicyNo"
													class="form-control select2"
													onchange="searchByPolicyNoFunction()" style="width: 100%;">
													<option>Select</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorAccountNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account No.</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Emp. Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="empCode" type="text" readonly="readonly"
													id="empCode" Placeholder="Enter Emp. Code"
													class="form-control" /> <span id="memberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Emp. Code</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Member Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="searchMemberCode" type="text"
													readonly="readonly" id="searchMemberCode"
													class="form-control" Placeholder="Enter Member Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorMembercode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Name<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="memberName" type="text" readonly="readonly"
													id="memberName" class="form-control"
													Placeholder="Enter A/C Holder Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													A/C Holder Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Mobile Number<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="phoneno" type="text" readonly="readonly"
													id="phoneno" class="form-control"
													Placeholder="Enter Mobile Number" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile Number</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="planCode" type="text" readonly="readonly"
													id="planCode" class="form-control"
													Placeholder="Enter Plan Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Code</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Balance <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="balance" type="text" readonly="readonly"
													id="balance" Placeholder="Enter Plan Balance"
													class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTransactionFor" class="col-sm-4 control-label">Transaction
												For</label>
											<div class="col-sm-8">
												<input name="transactionFor" type="text" id="transactionFor"
													class="form-control" Placeholder="Enter Transaction For" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRemarks" class="col-sm-4 control-label">Remarks
											</label>
											<div class="col-sm-8">
												<input name="remarks" type="text" id="remarks"
													class="form-control" Placeholder="Enter Remarks" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlTransactionType"
												class="col-sm-4 control-label">Txn. Type<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="transactionType" id="transactionType"
													class="form-control" style="width: 100%;">
													<option value="Deposit">Deposit</option>
													<option value="Withdrawal">Withdrawal</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAmount" class="col-sm-4 control-label">Amount
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="amount" type="text" id="amount"
													class="form-control" Placeholder="Enter Amount"
													onpaste="return false"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymode" id="paymode" class="form-control"
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
										<input type="submit" name="btnSave" value="Save" id="btnSave"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; height: 500px; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div></div>
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
												<img id="preview" class="profile-user-img"
													src="data:image/png;base64,${data.photo}"
													style="height: 70px; width: 110px;" /> <input type="file"
													name="filetag" id="filetag" />
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
												<img id="secondpreview" class="profile-user-img"
													src="data:image/png;base64,${data.signature}"
													style="height: 70px; width: 115px;" /> <input type="file"
													name="secondfiletag" id="secondfiletag" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
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
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data

				//console.log(formData);
				// alert("hi")
				$.ajax({
					url : "updateBySelectPolicyNo",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("DATA IS SAVED")
						window.location.href = "flexirenewal9828";
					},
					error : function(error) {

						alert(error)
						console.log(error);
					}
				});
			});
		});
	</script>

	<script>
		var fileTag = document.getElementById("filetag"), preview = document
				.getElementById("preview"), secondfiletag = document
				.getElementById("secondfiletag"), secondpreview = document
				.getElementById("secondpreview");

		fileTag.addEventListener("change", function() {
			changeImage(this);
		});

		secondfiletag.addEventListener("change", function() {
			changeImage2(this);
		});

		function changeImage(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					preview.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage2(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					secondpreview.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<script type="text/javascript">
		//<![CDATA[
		var Page_Validators = new Array(
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAccountNo"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembercode"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"));
		//]]>
	</script>
	<script type="text/javascript">
		//<![CDATA[
		var ContentPlaceHolder1_RequiredFieldValidatorddlBranchName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlBranchName");
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.controltovalidate = "ContentPlaceHolder1_ddlBranchName";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.errormessage = "Select Branch Name";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.initialvalue = "--Select--";
		var ContentPlaceHolder1_RequiredFieldValidatorAccountNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAccountNo"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAccountNo");
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.controltovalidate = "ContentPlaceHolder1_ddlSelectAccountNo";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.errormessage = "Select Account No.";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorAccountNo.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
		ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtEmpCode";
		ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Emp. Code";
		ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidatorMembercode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMembercode"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembercode");
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.controltovalidate = "ContentPlaceHolder1_txtMemberCode";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.errormessage = "Enter Member Code";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorMembercode.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
		ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtACHolderName";
		ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter A/C Holder Name";
		ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidatorMobilenumber = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobilenumber");
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.controltovalidate = "ContentPlaceHolder1_txtMobile";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.errormessage = "Enter Mobile Number";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
		ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtPlanCode";
		ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Plan Code";
		ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
		ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter  Amount";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorAmount.initialvalue = "";
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
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlBranchName').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlBranchName'));
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAccountNo').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAccountNo'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembercode').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembercode'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobilenumber').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobilenumber'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
		}
		//]]>
	</script>
	<!-- </form> -->
</body>
<!-- Dk/Admin/Flexirenewal.aspx?IsModification=false EDB D 09:27:01 GMT -->
</html>
<script src="dist/js/investmentSection .js"></script>
