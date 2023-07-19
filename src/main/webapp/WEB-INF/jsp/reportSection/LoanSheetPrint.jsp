<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/LoanCollectionsheetPrint.aspx" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Loan Sheet Print</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Sheet Print</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Search Box</h3>
							</div>
							<div class="box-body">
								<div class="col-md-2">
									<div class="form-group">
										<label>Plan</label> <select name="plan" id="plan"
											class="form-control" style="width: 100%;">
											<option>All</option>
											<option value="DRD ADVANTAGE">DRD ADVANTAGE</option>
											<option value="GROW">GROW</option>
											<option value="GROW+">GROW+</option>
											<option value="MIS-12">MIS-12</option>
											<option value="ROYAL+">ROYAL+</option>
											<option value="ROYAL FI">ROYAL FI</option>
											<option value="ROYAL FIX">ROYAL FIX</option>
											<option value="WEALTH 1">WEALTH 1</option>
											<option value="WEALTH 3">WEALTH 3</option>
											<option value="WEALTH 5">WEALTH 5</option>
										</select>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>Advisor Code</label> <input name="advisorCode" placeholder="Enter Advisor Code"
											type="text" id="advisorCode" class="form-control" />
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>Till Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="tillDate" type="date" value="01/08/2022"
												id="tillDate" class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label></label>
										 <button type="submit" onclick="LoanSheetPrint();"
											class="btn btn-success pull-right margin-20">Search</button>
									</div>
								</div>
								<div class="clearfix margin-bottom-10"></div>
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
								<div>
									<h4
										style="text-align: center; font-weight: bold; text-decoration: underline;">
										<b>Collection Sheet</b>
									</h4>
									<div style="font-weight: bold;">
										<p class="inline">Collector Code :</p>
										<p class="inline" id="AdvisorCode"></p>
										<p class="inline">Collector Name :</p>
										<p class="inline" id="AdvisorName"></p>
									</div>
									<hr>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption></caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">LOAN ID</th>
											<th scope="col">LOAN TYPE</th>
											<th scope="col">APP. NAME</th>
											<th scope="col">ADDRESS</th>
											<th scope="col">MOBILE LOAN DATE</th>
											<th scope="col">LOAN AMOUNT</th>
											<th scope="col">TOTAL RETURN TOTAL PAID</th>
											<th scope="col">BALANCE</th>
											<th scope="col">PAY DATE</th>
											<th scope="col">EMI AMOUNT</th>
											<th scope="col">TERM MODE</th>
											<th scope="col">OVER DUE</th>
											<th scope="col">ADVANCE</th>
											<th scope="col">EMI DUE</th>
											<th scope="col">REMARKS</th>
											<th scope="col">SIGN</th>
										</tr>
										<tbody id="table">

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
	<script src="dist/js/LoanSheetPrint.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
	<!-- </form> -->
</body>

<!-- Dk/Admin/LoanCollectionsheetPrint.aspx EDB D 09:27:21 GMT -->
</html>
