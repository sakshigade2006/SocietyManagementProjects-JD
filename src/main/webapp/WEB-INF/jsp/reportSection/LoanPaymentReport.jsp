<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini" onload="GetBranchNameInTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--  <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/LoanPaymentReport.aspx" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Loan Payment Report</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Loan Report</li>
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
										<label>Branch</label> <select name="selectbranch"
											id="selectbranch" class="form-control" style="width: 100%;">
											<option>All Branch</option>
										</select>
									</div>
								</div>
								<div class="col-md-2">
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
								<div class="col-md-2">
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
								<div class="col-md-2">
									<div class="form-group">
										<label></label>
										<button type="submit" id="btnSearch"
											class="btn btn-success margin-20"
											onclick="LoanPaymentReportAjax();">
											<span class="fa fa-search"></span> SEARCH
										</button>
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
								<!--Table Starts Here  -->
								<div>
									<h5
										style="text-align: center; font-weight: bold; text-decoration: underline;">LOAN
										PAYMENT REPORT</h5>

									<table cellspacing="1" cellpadding="1" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="5" style="width: 100%; border-collapse: collapse;">

										<tr style="color: White; background-color: #008385;">
											<th scope="col">SlNo</th>
											<th scope="col">Loan ID</th>
											<th scope="col">Member Code</th>
											<th scope="col">Member Name</th>
											<th scope="col">Loan Date</th>
											<th scope="col">Branch</th>
											<th scope="col">Loan Name</th>
											<th scope="col">Loan Amount</th>
											<th scope="col">Term</th>
											<th scope="col">Mode</th>
											<th scope="col">ROI</th>
											<th scope="col">App Date</th>
											<th scope="col">Pay Date</th>
											<th scope="col">Pay Mode</th>
											<th scope="col">Pay Details</th>
										</tr>

										<tbody id="table">

										</tbody>
									</table>

								</div>
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
	<script src="dist/js/LoanPaymentReport.js"></script>
	<script src="dist/js/GetAllBranch.js"></script>
	<!-- </form> -->
</body>

<!-- Dk/Admin/LoanPaymentReport.aspx EDB D 09:27:21 GMT -->
</html>
