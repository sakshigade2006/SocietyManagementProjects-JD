<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="accountLegMaster1" id="ValidateLegerMaster"
		name="myForm" modelAttribute="accountlegmodelattribute">

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
					<h1 id="ContentPlaceHolder1_IdHeader">Ledger Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Ledger Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-5">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Add Ledger Master</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-12">
											<div class="form-group row">
												<label for="txtLedgerName" class="col-sm-4 control-label">Ledger
													Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="ledgername" type="text" id=ledgername
														class="form-control" /> <span id="ledgerNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Ledger Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlLegers" class="col-sm-4 control-label">Select
													Group <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="selectgroup" onchange="" id="selectgroup"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="509">Bank A/C
														</option>
														<option value="Capital">Capital</option>
														<option value="Cash In Hand">Cash In Hand</option>
														<option value="Current Assets">Current Assets</option>
														<option value="Current Liabilities">Current Liabilities</option>
														<option value="Direct Expense">Direct Expense</option>
														<option value="Direct Income">Direct Income</option>
														<option value="Indirect Expense">Indirect Expense</option>
														<option value="Indirect Income">Indirect Income</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<div class="col-sm-8"></div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<button type="reset" name="clearbtn" value="Clear"
												id="clearbtn" class="btn btn-info pull-right margin-r-5">Clear</button>
											<button onclick="return validateFormFields();" type="submit"
												name="savebtn" value="Save" id="savebtn"
												class="btn btn-success pull-right margin-r-5">Save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-7">
							<div class="box box-success">
								<div class="form-horizontal">
									<div class="box-body">
										<div id="ContentPlaceHolder1_pnllist"
											style="height: 400px; overflow-y: scroll;">
											<div>
	</form>

	<form action="accountLegMaster2" method="get">

		<table cellspacing="0" rules="all"
			class="display nowrap table table-hover table-striped table-bordered"
			border="1" id="ContentPlaceHolder1_gvLedgers"
			style="width: 100%; border-collapse: collapse;">
			<caption>Ledger List</caption>
			<tr style="color: White; background-color: #008385;">
				<th scope="col">Ledger Name</th>
				<th scope="col">Group Name</th>
				<th scope="col">View</th>
			</tr>

			<c:forEach items="${list}" var="row">
				<tr>
					<!-- <td>${row.id }</td>  -->
					<td>${row.ledgername }</td>
					<td>${row.selectgroup }</td>
					<td><img src="https://cdn.pixabay.com/photo/2017/06/09/18/06/eye-2387853_640.png" height="30" width="30"></td>
				</tr>
			</c:forEach>
		</table>

		<button type="submit">Search All</button>

	</form>

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
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<script src="dist/js/AccountLegMaster.js"></script>

</body>

</html>
