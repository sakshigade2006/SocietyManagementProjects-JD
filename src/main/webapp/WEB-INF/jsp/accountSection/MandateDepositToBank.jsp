<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 8px;
}
/* tr:nth-child(even){background-color: #f2f2f2 */
}
</style>

<body class="skin-blue sidebar-mini"
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
				<h1 id="ContentPlaceHolder1_IdHeader">Unencumbered Term Deposit</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Unencumbered Term Deposit</li>
				</ol>
			</section>
			<section class="content">
				<!-- <form method="get" action="getAllRecords"
					modelAttribute="ContramodelAttribute" id="form1"> -->
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-body">
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
											<label></label> <input type="submit" name="btnsearch"
												value="Search" id="btnsearch" onclick="getMandateDeposite();"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								   <div class="clearfix margin-bottom-10"></div>
								</div>
							</div>
						</div>
					</div>
				<!-- </form> -->
				
				<form method="post" action="mandateDeposit1"
					modelAttribute="MandateDepositToBank" id="form1">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-5 control-label">FD Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="fddeposit" type="text" id="fddeposit"
													class="form-control" /> <span id="fddepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Ledger Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">MIS Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="misdeposit" type="text" id="misdeposit"
													class="form-control" /> <span id="misdepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mis Deposit</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">RD/DRD Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="rddeposit" type="text" id="rddeposit"
													class="form-control" /> <span id="rddepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													RD Deposit</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Savings Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="savingsdeposit" type="text" id="savingsdeposit"
													class="form-control" /> <span id="savingsdepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Savings Deposit</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Savings
												Withdrawal<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="savingswithdrawal" type="text"
													id="savingswithdrawal" class="form-control" /> <span
													id="savingswithdrawalMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Savings Withdrawal</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Flexi Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="flexideposit" type="text" id="flexideposit"
													class="form-control" /> <span id="flexidepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Flexi Deposit</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Flexi
												Withdrawal<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="flexiwithdrawal" type="text"
													id="flexiwithdrawal" class="form-control" /> <span
													id="flexiwithdrawalMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Flexi Withdrawal</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Maturity
												Principal<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="maturityprincipal" type="text"
													id="maturityprincipal" class="form-control" /> <span
													id="maturityprincipalMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Maturity Principal</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtCurrTotalDeposit"
												class="col-sm-5 control-label">Total Deposit<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="totaldeposit" type="text" id="totaldeposit"
													class="form-control" PlaceHolder="Total Deposit"
													style="color: Red; font-weight: bold;" /> <span
													id="totaldepositMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Deposit</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtCurrTotalWithdrawal"
												class="col-sm-5 control-label">Total Withdrawal<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="totalwithdrawal" type="text"
													id="totalwithdrawal" class="form-control"
													PlaceHolder="Total Withdrawal"
													style="color: Red; font-weight: bold;" /> <span
													id="totalwithdrawalMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Withdrawal</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Total Balance<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="totalbalance" type="text" id="totalbalance"
													class="form-control" style="color: Red; font-weight: bold;" />
												<span id="totalbalanceMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Total Balance</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Previous FD
												Deposited<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="previousfddeposited" type="text"
													id="previousfddeposited" class="form-control" /> <span
													id="previousfddepositedMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Previous FD Deposited</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Unencumbered
												(10% )<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="unencumbered" type="text" id="unencumbered"
													class="form-control" /> <span id="unencumberedMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Unencumbered</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Unencumbered
												Amount (10%)<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="unencumberedamount" type="text"
													id="unencumberedamount" class="form-control" /> <span
													id="unencumberedamountMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Unencumbered Amount</span>
											</div>
										</div>
										<div class="box-footer">
											<div class="row col-md-12">
												<!-- <input type="submit" name="ctl00$ContentPlaceHolder1$btgnadd" value="Add >>" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btgnadd&quot;, &quot;&quot;, true, &quot;V&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btgnadd" class="btn btn-success pull-right" /> --> 
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtBankName" class="col-sm-4 control-label">Bank
												Name<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="bankname" type="text" id="bankname"
													class="form-control" /> <span id="banknameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Bank Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtBankAddress" class="col-sm-4 control-label">Bank
												Address<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="bankaddress" type="text" id="bankaddress"
													class="form-control" /> <span id="bankaddressMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Bank Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtFDNO" class="col-sm-4 control-label">FD
												NO.<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="fdno" type="text" id="fdno"
													class="form-control" /> <span id="fdnoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													FD No</span>

											</div>
										</div>
										<div class="form-group row">
											<label for="txtFDAmt" class="col-sm-4 control-label">FD
												Amt<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="fdamt" type="text" id="fdamt"
													class="form-control" /> <span id="fdamtMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													FD Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMaturityAmt" class="col-sm-4 control-label">Maturity
												Amt<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="maturityamt" type="text" id="maturityamt"
													class="form-control" /> <span id="maturityamtMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Maturity Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtFDDate" class="col-sm-4 control-label">FD
												Date<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="fddate" type="date" id="fddate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="fddateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														FD Date</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMaturityDate" class="col-sm-4 control-label">Maturity
												Date<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="maturitydate" type="date" id="maturitydate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="maturitydateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Maturity Date</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlPaymentBy" class="col-sm-4 control-label">Payment
												By</label>
											<div class="col-sm-8">
												<select name="paymentby" onchange="" id="paymentby"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
												</select> <span id="paymentbyMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Payment</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRemarks" class="col-sm-4 control-label">Remarks<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="remarks" type="text" id="remarks"
													class="form-control" /> <span
													id="remarksMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Remarks</span>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<!-- <input type="submit" name="btnsave" value="Save"
											onclick="MandateDepositToBank();" id="btnsave"
											class="btn btn-success pull-right margin-r-5" /> -->
											<input type="submit" name="btnSave" value="Save"
											onclick="javascript: "
											id="btnSave" class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>

							</div>
						</div>
					</div>
				</form>
				
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Detail Search List</h3>
							</div>
							<div class="box-body">
								<div style="overflow-x: auto;">
								
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption></caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">FD<br>Deposit
											</th>
											<th scope="col">MIS<br>Deposit
											</th>
											<th scope="col">RD/DRD<br>Deposit
											</th>
											<th scope="col">Savings<br>Deposit
											</th>
											<th scope="col">Savings<br>Withdrawal
											</th>
											<th scope="col">Flexi<br>Deposit
											</th>
											<th scope="col">Flexi<br>Withdrawal
											</th>
											<th scope="col">Maturity<br>Principal
											</th>
											<th scope="col">Total<br>Deposit
											</th>
											<th scope="col">Total<br>Withdrawal
											</th>
											<th scope="col">Total<br>Balance
											</th>
											<th scope="col">Previous<br>FDDeposited
											</th>
											<th scope="col">Unencumbered<br>(10%)
											</th>
											<th scope="col">Unencumbered<br>Amount(10%)
											</th>
											<th scope="col">Bank<br>Name
											</th>
											<th scope="col">Bank<br>Address
											</th>
											<th scope="col">FD<br>NO.
											</th>
											<th scope="col">FD<br>Amt
											</th>
											<th scope="col">Maturity<br>Amt
											</th>
											<th scope="col">FD<br>Date
											</th>
											<th scope="col">Maturity<br>Date
											</th>
											<th scope="col">Payment<br>By
											</th>
											<th scope="col">Remarks</th>
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
function validateForm() {
  const fddeposit = document.getElementById("fddeposit").value;
  const misdeposit = document.getElementById("misdeposit").value;
  const rddeposit= document.getElementById("rddeposit").value;
  const savingsdeposit= document.getElementById("savingsdeposit").value;
  const savingswithdrawal= document.getElementById("savingswithdrawal").value;
  const flexideposit= document.getElementById("flexideposit").value;
  const flexiwithdrawal= document.getElementById("flexiwithdrawal").value;
  const maturityprincipal= document.getElementById("maturityprincipal").value;
  const totaldeposit= document.getElementById("totaldeposit").value;
  const totalwithdrawal= document.getElementById("totalwithdrawal").value;
  const totalbalance= document.getElementById("totalbalance").value;
  const previousfddeposited= document.getElementById("previousfddeposited").value;
  const unencumbered= document.getElementById("unencumbered").value;
  const unencumberedamount= document.getElementById("unencumberedamount").value;
  const bankname= document.getElementById("bankname").value;
  const bankaddress= document.getElementById("bankaddress").value;
  const fdno= document.getElementById("fdno").value;
  const fdamt= document.getElementById("fdamt").value;
  const maturityamt= document.getElementById("maturityamt").value;
  const fddate= document.getElementById("fddate").value;
  const maturitydate= document.getElementById("maturitydate").value;
  const paymentby= document.getElementById("paymentby").value;
  const remarks= document.getElementById("remarks").value;
  
  if (fddeposit === '') {
    alert("FD Deposit Cannot be Empty.");
    return false;
  }

  if (misdeposit === '') {
    alert("Mis Deposit Cannot be Empty.");
    return false;
  }

  if (rddeposit === '') 
  { 
   alert("RD/DRD Deposit Cannot be Empty.");
   return false;
  } 
  
  if (savingsdeposit === '') 
  { 
   alert("Savings Deposit Cannot be Empty.");
   return false;
  } 
  
  if (savingswithdrawal === '') 
  { 
   alert("Savings Withdrawal Cannot be Empty.");
   return false;
  } 
  
  if (flexideposit === '') 
  { 
   alert("Flexi Deposit Cannot be Empty.");
   return false;
  } 
  
  if (flexiwithdrawal === '') 
  {  
   alert("Flexi Withdrawal Cannot be Empty.");
   return false;
  } 
  
  if (maturityprincipal === '') 
  { 
   alert("Maturity Principal Cannot be Empty.");
   return false;
  } 
  
  if (totaldeposit === '') 
  { 
   alert("Total Deposit Cannot be Empty.");
   return false;
  } 
  
  if (totalwithdrawal === '') 
  { 
   alert("Total Withdrawal Cannot be Empty.");
   return false;
  } 
  
  if (totalbalance === '') 
  { 
   alert("Total Balance Cannot be Empty.");
   return false;
  } 
  
  if (previousfddeposited === '') 
  { 
   alert("Previous Fd Deposited Cannot be Empty.");
   return false;
  } 
  
  if (unencumbered === '') 
  { 
   alert("Unencumbered Cannot be Empty.");
   return false;
  } 
  
  if (unencumberedamount === '') 
  { 
   alert("Unencumbered Amount Cannot be Empty.");
   return false;
  } 
  
  if (bankname === '') 
  { 
   alert("Bank Name Cannot be Empty.");
   return false;
  } 
  
  if (bankaddress === '') 
  { 
   alert("Bank Address Cannot be Empty.");
   return false;
  } 
  
  if (fdno === '') 
  { 
   alert("FD No Cannot be Empty.");
   return false;
  } 
  
  if (fdamt === '') 
  { 
   alert("FD Amount Cannot be Empty.");
   return false;
  } 
  
  if (maturityamt === '') 
  {  
   alert("Maturity Amount Cannot be Empty.");
   return false;
  } 
  
  if (fddate === '') 
  { 
   alert("Select Fd Date.");
   return false;
  } 
  
  if (maturitydate === '') 
  { 
   alert("Select Maturity Date.");
   return false;
  } 
  
  if (paymentby === '') 
  { 
   alert("Payment Cannot be Empty.");
   return false;
  } 
  
  if (remarks === '') 
  { 
    alert("Remarks Cannot be Empty.");
    return false;
  } 
  
  return true;
}

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
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- <script src="dist/js/MandateDepositToBank.js"></script> -->
	<script src="dist/js/FetchRecord.js"></script>
</body>

<!-- Dk/Admin/UnencumberedTermDeposit.aspx by <!-----EDB------>
-->
</html>
