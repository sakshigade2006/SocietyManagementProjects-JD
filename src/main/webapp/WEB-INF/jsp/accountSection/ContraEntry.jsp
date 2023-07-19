<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body class="skin-blue sidebar-mini" onload="GetBranchNameInTheDropDown(); GetAccountNumberInTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

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
				<h1 id="ContentPlaceHolder1_IdHeader">Contra Voucher</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Contra Voucher</li>
				</ol>
			</section>
			<!-- Search box starts from here -->
			<section class="content">
				<!-- <form method="get" action="getAllRecord"
					modelAttribute="" id="form1"> -->
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Search Box</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Select Branch</label> <select name="selectbranch"
												id="selectbranch" class="form-control" style="width: 100%;">
												<option selected="selected" value="">--Select Branch--</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>From Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="fromdate" type="date" id="fromdate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>To Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="todate" type="date" id="todate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label></label> <input type="submit" name="btnSearch"
												onclick="CountryEntryAjax()" value="Search" id="btnSearch"
												class="btn btn-success pull-right margin-20" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<!-- </form> -->

				<form method="post" action="contraEntry1"
					modelAttribute="ContramodelAttribute" id="form1">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Entry Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlPvBranch" class="col-sm-4 control-label">Select
												Branch<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectbranch" id="selectbranchs"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">--Select Branch--</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtVoucherNo" class="col-sm-4 control-label">Receipt
												No.(Auto)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="receiptno" type="text" readonly="readonly"
													id="receiptno" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtVoucherDate" class="col-sm-4 control-label">Txn
												Date<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="txndate" type="date" id="txndate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlLedger" class="col-sm-4 control-label">Select
												Cr. Ledger<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectcrledger" id="selectcrledger"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">--Select Cr.Ledger</option>
												</select> <span id="selectcrledgerMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Cr. Ledger</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlDebitFrom" class="col-sm-4 control-label">select
												Dr. Ledger<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectdrledger" id="selectdrledger"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">--Select Dr. Ledger--</option>
														</select> <span id="selectdrledgerMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Dr. Ledger</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAmount" class="col-sm-4 control-label">Amount<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="amount" type="text" id="amount"
													class="form-control" PlaceHolder="Enter Amount"
													onpaste="return false"
													onkeypress="return isNumberKey(this, event);"
													autocomplete="off" /> <span id="amount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtVoucherNo" class="col-sm-4 control-label">Remaks
												(if any)</label>
											<div class="col-sm-8">
												<textarea name="remarks" rows="2" cols="20" id="remarks"
													class="form-control">
                                    </textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="submit" name="save" value="Save" id="save" 
										class="btn btn-success pull-right margin-r-5">
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>

				<div class="row">
					<div class="col-md-12">
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<h3 class="box-title">Search Result</h3>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
										
										<tr style="color: White; background-color: #008385;">
											<td scope="col">Branch</td>
											<td scope="col">Txn Date</td>
											<td scope="col">Cr.Ledger</td>
											<td scope="col">Dr.Ledger</td>
											<td scope="col">Amount</td>
											<td scope="col">Remaks</td>
										</tr>
										<tbody id="tableBody">
										</tbody>
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
	
<script>
	// Function to validate the form
	function validateForm() {
		// Retrieve form inputs
		var branch = document.getElementById("selectbranchs").value;
		var receiptNo = document.getElementById("receiptno").value;
		var txnDate = document.getElementById("txndate").value;
		var crledger = document.getElementById("selectcrledger").value;
		var drledger = document.getElementById("selectdrledger").value;
		var amount = document.getElementById("amount").value;
		
		if (branch === "") {
			alert("Please select a branch.");
			return false;
		}

		if (txnDate === "") {
			alert("Please select the transaction date.");
			return false;
		}

		if (crledger === "") {
			alert("Please select a cr. ledger.");
			return false;
		}
		
		if (drledger === "") {
			alert("Please select a dr. ledger.");
			return false;
		}

		if (amount === "") {
			alert("Please enter the amount.");
			return false;
		}
		// Add more validation rules for other fields if needed

		return true;
	}

	// Add event listener to the form submit event
	document.getElementById("form1").addEventListener("submit", function(event) {
		event.preventDefault(); // Prevent the form from submitting

		// Call the validation function
		if (validateForm()) {
			// Display success message
			alert("Data saved successfully.");

			// Submit the form
			this.submit();
		}
	});
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

</body>
</html>
