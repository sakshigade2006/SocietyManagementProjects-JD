<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="skin-blue sidebar-mini" onload="GetLedgerMasterInTheDropDown()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="get" action="getAllLedgerReport" id="form1"
		modelAttribute="LedgerModelAttribute"> -->

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
					<h1 id="ContentPlaceHolder1_IdHeader">Ledger Report</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Ledger Report</li>
					</ol>
				</section>

				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Search Information</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Select Ledger</label> <select name="selectledger"
												id="selectledger" class="form-control select2"
												style="width: 100%;">
												<option value="" selected="selected">Select Ledger</option>
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
											<label></label> <input type="submit" name="btnsubmit"
												value="View" id="btnsubmit" onclick="getLedgerReport();"
												class="btn btn-success margin-20" />
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="box box-success">
										<div class="box-header with-border">
											<div class="box-tools pull-right"></div>
										</div>
										<div class="box-body">
											<div class="clearfix margin-bottom-10"></div>
											<div>
												<h3 style="text-align: center; font-weight: bold;">EQFI
													NIDHI LIMITED</h3>
												<h4 style="text-align: center;">PLOT NO 36 DATE LAYOUT
													JAYTALA ROAD NAGPUR - MAHARASHTRA - 440036</h4>
												<p>
													<b>Ledger On</b> Cash A/C
												</p>
												<p>
													<b>Branch :</b>Main Office
												</p>

												<table cellspacing="0" cellpadding="3" rules="all" 
                              						class="display nowrap table table-hover table-striped table-bordered" 
                              						border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;"
                              						id="shareCertificate">
													<tr style="color:White;background-color:#008385;">

														<th scope="col">Date</th>
														<th scope="col">Receipt No</th>
														<th scope="col">Narration</th>
														<th scope="col">Code</th>
														<th scope="col">Debit</th>
														<th scope="col">Credit</th>

													</tr>
													 <tbody id="tableBody1">
      							 					</tbody>
												</table>
											</div>
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
		<script src="dist/js/PaymentryEntryjs.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	<!-- </form> -->
</body>

<!-- Dk/Admin/FinancialLedgerReport.aspx by <!-----EDB------>
-->
</html>
