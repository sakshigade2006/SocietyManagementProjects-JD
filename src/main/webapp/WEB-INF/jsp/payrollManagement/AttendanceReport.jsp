<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- 	<form method="post" action="" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Attendance Report</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Attendance Report</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Select Month Year</h3>
							</div>
							<div class="box-body">
								<div class="col-md-3">
									<div class="form-group">
										<label> </label> <input name="fDate" type="date" id="fDate"
											class="form-control"
											data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
											data-mask="" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
											<label> </label> <input name="tDate" type="date" id="tDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
									</div>
								</div>
								<div class="col-md-3">
										<div class="form-group">
											<!-- 											<label></label> <a id="ContentPlaceHolder1_btnSearch" -->
											<!-- 												class="btn btn-success margin-20"> -->
											<!-- 												<span class="fa fa-search" ></span> SEARCH -->
											<!-- 											</a> -->
											<button class="btn btn-success margin-20"
												onclick=" getDPayrollData();">SEARCH</button>
										</div>
									</div>
									
								    <!-- 									<div class="col-md-4"> -->
									<!-- 										<label> </label> -->
									<!-- 										<button type="button" name="ctl00$ContentPlaceHolder1$btnPrev" -->
									<!-- 											value="Previous Month" id="ContentPlaceHolder1_btnPrev" -->
									<!-- 											class="btn btn-warning margin-20 margin-r-5">Previous -->
									<!-- 											Month</button> -->
									<!-- 										<button type="button" name="ctl00$ContentPlaceHolder1$btnNext" -->
									<!-- 											value="Next Month" id="ContentPlaceHolder1_btnNext" -->
									<!-- 											class="btn btn-warning margin-20">Next Month</button> -->
									<!-- 									</div> -->
									
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
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" id="ContentPlaceHolder1_gdvData"
										style="width: 100%; border-collapse: collapse;"
										id="shareCertificate">
										<caption>Share Data List</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">Employee ID</th>
											<th scope="col">Leave Date</th>
											<th scope="col">Leave Type</th>
										</tr>
										<tbody id="tableBody">

										</tbody>
									</table>
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
	<script src="dist/js/payroll.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- 	</form> -->
</body>
</html>