<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="fetchyear()">
	<form method="post" action="SaveIncentive"
		modelAttribute="SaveIncentive" name="SaveIncentive" id="SaveIncentive">

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
					<h1 id="ContentPlaceHolder1_IdHeader">Incentive Generate</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Generate</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Incentive Details</h3>
								</div>
								<table
									style="width: 100%; font-size: small; box-shadow: none; overflow: auto !important;">
									<tr>
										<td width="20px">&nbsp;</td>
										<td width="500px">&nbsp;&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="20px">&nbsp;</td>
										<td width="500px">
											<table style="width: 113%;">
												<tr>
													<td class="style4"><label>Incentive Month </label></td>
													<td colspan="3"><select name="invmonth" onchange=""
														id="invmonth" class="form-control" style="width: 350px;">
															<option>Select</option>
													</select></td>
												</tr>
												<tr>
													<td class="style4">&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td class="style2">&nbsp;</td>
												</tr>
												<tr>
													<td class="style4"><label>Incentive Date From
													</label></td>
													<td><input name="fDate" type="date" id="fDate"
														class="form-control" /></td>
													<td><strong>To</strong></td>
													<td class="style2"><input name="tDate" type="date"
														id="tDate" class="form-control" /></td>
												</tr>
												<tr>
													<td class="style4">&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td class="style2">&nbsp;</td>
												</tr>
												<tr>
													<td class="style4">&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td class="style2">&nbsp;</td>
												</tr>
											</table>
										</td>
										<td>
											<div style="margin: auto; width: 80px">
												<input type="submit"
													name="ctl00$ContentPlaceHolder1$btnGenerate"
													value="Generate" id="ContentPlaceHolder1_btnGenerate"
													class="btn btn-success pull-right margin-r-5" /> <span
													id="ContentPlaceHolder1_Timer1"
													style="visibility: hidden; display: none;"></span>
											</div>
										</td>
									</tr>
									<tr>
										<td width="20px">&nbsp;</td>
										<td width="500px">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
								<div id="ContentPlaceHolder1_UpdatePanel2">
									<div align="right">
										&nbsp;&nbsp;&nbsp;&nbsp; <span
											id="ContentPlaceHolder1_lblDate"></span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="control-sidebar-bg"></div>
								</div>
	</form>

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
	<script src="dist/js/IncentivePaymentReport.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

</body>

<!-- Dk/Admin/IncentiveGeneration.aspx EDB D 09:27:19 GMT -->
</html>