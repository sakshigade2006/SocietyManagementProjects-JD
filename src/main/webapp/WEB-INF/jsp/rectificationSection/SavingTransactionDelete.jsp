<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="SavingsTransactionDelete();BranchName1();SharePayment();">
	<!--   <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/SavingsTransactionEntry.aspx?IsModification=true" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Delete Deposit/Withdrawal</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Deposit/Withdrawal</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-10">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Account Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Txn Date<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="txnDate" type="date" id="txnDate"
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
												class="form-control" style="width: 100%;">
												<option value="" selected="selected">Select Branch
													Name</option>
											</select> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Branch Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Select Acc.No. <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="accountNo" id="accountNo"
												onchange="searchbyaccountno();" class="form-control select2"
												style="width: 100%;">
												<option selected="selected" value="">Select Acc.No.</option>
											</select> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorAccountNo"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Account No.</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Member Code<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="memberCode" type="text" readonly="readonly"
												id="memberCode" class="form-control"
												Placeholder="Enter Member Code" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorMembercode"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Member Code</span>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Name<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="accHolderName" type="text" readonly="readonly"
												id="accHolderName" class="form-control"
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
											<input name="mobileNumber" type="text" readonly="readonly"
												id="mobileNumber" class="form-control"
												Placeholder="Enter Mobile Number" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Mobile Number</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Joint Holder</label>
										<div class="col-sm-8">
											<input name="jointHolder" type="text" readonly="readonly"
												id="jointHolder" class="form-control"
												Placeholder="Joint Holder Name" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">SB Plan Name</label>
										<div class="col-sm-8">
											<input name="sbPlanName" type="text" readonly="readonly"
												id="sbPlanName" class="form-control"
												Placeholder="SB Plan Name" />
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
										<label class="col-sm-4 control-label">Ava.Balance <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="avaBalance" type="text" readonly="readonly"
												placeholder="Enter Ava. Balance" id="avaBalance"
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
										<label for="ddlTransactionType" class="col-sm-4 control-label">Txn.
											Type<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="txnType" id="txnType" class="form-control"
												style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
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
											<select name="paymentBy" id="paymentBy"
												class="form-control select2" style="width: 100%;">
												<option value=" " selected="selected">--Select--</option>
												<option value="Cash">Cash</option>
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
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete"
										value="Delete" onclick="softDeleteSavingsTransaction();"
										id="ContentPlaceHolder1_btnDelete"
										class="btn btn-danger pull-right" />
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
											<img id="imageApplicant" class="profile-user-img"
												style="height: 70px; width: 115px;" /> <input type="file"
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
											<img id="imageSignature" class="profile-user-img"
												style="height: 70px; width: 115px;" /> <input type="file"
												name="secondfiletag" id="secondfiletag" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Joint Photo</h3>
							</div>
							<div class="box-body">
								<div class="col-md-3">
									<div class="form-group">
										<div class="text-center">
											<img id="imgJointPhoto" class="profile-user-img"
												style="height: 70px; width: 115px;" /> <input type="file"
												name="thirdfiletag" id="thirdfiletag" />
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
	<script src="dist/js/Rectification.js"></script>
	<script src="dist/js/demo.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/SavingsTransactionEntry.aspx?IsModification=true EDB D 09:27:15 GMT -->
</html>