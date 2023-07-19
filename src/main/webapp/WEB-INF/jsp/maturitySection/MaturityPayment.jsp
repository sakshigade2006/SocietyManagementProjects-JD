<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- Sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="getBranchName();PolNoDropdown(); ">
	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/MaturityPayment.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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

			<form id="myForm" name="myForm">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Maturity Payment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Maturity Payment</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Search Box</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group">
											<label>Policy No. :</label> <select name="id" id="id"
												onchange="SearchTHePolicyNumber();"
												class="form-control select2" style="width: 100%;">
												<option value="">Select</option>
											</select> <span id="policyNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Policy No</span>
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Policy Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Policy No. :</label> <input name="policyNo1"
												type="text" readonly="readonly" id="policyNo1"
												class="form-control" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Policy No</span>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Applicant Name :</label> <input name="ApplicantName"
												type="text" readonly="readonly" id="ApplicantName"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Name :</label> <input name="planName" type="text"
												readonly="readonly" id="planName" class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Code :</label> <input name="planCode" type="text"
												readonly="readonly" id="planCode" class="form-control" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Term :</label> <input name="term" type="text"
												readonly="readonly" id="term" class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Policy Amount :</label> <input name="policyAmount"
												type="text" readonly="readonly" id="policyAmount"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Actual Maturity :</label> <input name="actualMaturity"
												type="text" readonly="readonly" id="actualMaturity"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Maturity Date :</label> <input name="MaturityDate"
												type="text" readonly="readonly" id="MaturityDate"
												class="form-control" />
										</div>
									</div>

									<div class="clearfix margin-bottom-10"></div>

									<div class="col-md-3">
										<div class="form-group">
											<label>Sys. Payable :</label> <input name="sysPayable"
												type="text" readonly="readonly" id="sysPayable"
												class="form-control" style="color: Red; font-weight: bold;" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Deduction (-) :</label> <input name="deduction"
												type="text" readonly="readonly" id="deduction"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Adjustment (+) :</label> <input name="adjusment"
												type="text" readonly="readonly" id="adjusment"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Net Payable :</label> <input name="netPayable"
												type="text" readonly="readonly" id="netPayable"
												class="form-control"
												style="color: Green; font-weight: bold;" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Approval Branch :</label> <input name="approvalBranch"
												type="text" readonly="readonly" id="approvalBranch"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Approval Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="approvalDate" type="text" readonly="readonly"
													id="approvalDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Approve Remarks :</label> <input name="approveRemarks"
												type="text" readonly="readonly" id="approveRemarks"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Approve User :</label> <input name="approveUser"
												type="text" readonly="readonly" id="approveUser"
												class="form-control" />
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
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Payment Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="paymentDate" type="date" id="paymentDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Pay Branch :</label> <select name=branchName
												id="branchName" class="form-control" style="width: 100%;">
												<option value="">Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Payment By <strong style="color: Red">*</strong></label>
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
												<option value="">Select</option>
												<option value="Cash">Cash</option>
												<option value="Cheque">Cheque</option>
												<option value="Online">Online</option>
												<option value="NEFT">NEFT</option>
												<option value="SBAccount">SBAccount</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Pay Remarks :</label> <input name="remarks"
												type="text" id="remarks" class="form-control" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="col-md-3"></div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="text-center">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnAdd"
											value="Update" id="ContentPlaceHolder1_btnAdd"
											class="btn btn-success pull-right margin-r-5" />
			</form>
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
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				console.log(formData);

				$.ajax({
					url : "MaturityPaymentUpdate",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Updated Successfully")
						window.location.href = "addMaturityPayment";
					},
					error : function(error) {
						alert(error)
						console.log(error);
					}
				});
			});
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
	<!--  Maturity Account  -->
	<script src="dist/js/MaturitySectionSearch.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/MaturityPayment.aspx EDB D 09:27:20 GMT -->
</html>