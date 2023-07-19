<jsp:include page="../header.jsp" />
<body onload="tableOfIncentiveMasters();" class="skin-blue sidebar-mini" 
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="saveDataRegularEMIRepayment"
		onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ScriptManager1', 'form1', [], [], [], 90,
						'ctl00');
				//]]>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Incentive Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Incentive Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
					  <form method="post" action="saveIncentiveMaster" id="" 
						name="" modelAttribute="incentiveMaster">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Incentive Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Incentive
													Month <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="invmonth" type="text" id="invmonth"
														class="form-control" PlaceHolder="Enter Incentive Month" />
													<span id="monthMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Incentive Month</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">From Date <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="fDate"
															type="date" 
															id="fDate" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">To Date <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="tDate"
															type="date" 
															id="tDate" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Remarks</label>
												<div class="col-sm-8">
													<input name="remark"
														type="text" id="remark"
														class="form-control" PlaceHolder="Enter Remarks" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="box box-success"
												style="box-shadow: none; height: 250px; overflow: auto !important;">
												<div class="form-horizontal">
													<div class="box-body">
														<div>
															<table cellspacing="0" cellpadding="3" rules="all"
																class="display nowrap table table-hover table-striped table-bordered"
																border="1"
																style="width: 100%; border-collapse: collapse;">
																<caption></caption>
																<tr style="color: White; background-color: #008385;">
																	<th scope="col">S/N</th>
																	<th scope="col">Incentive Month</th>
																	<th scope="col">From Date</th>
																	<th scope="col">To Date</th>
																	<th scope="col">Remarks</th>
																</tr>
																<tbody id="shareTableBody">

																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<button type="submit"
												name="ctl00$ContentPlaceHolder1$btnSave" value="Save"
												id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5">Save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					  </form>
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
		<script src="dist/js/incentive.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	<!-- </form> -->
</body>

<!-- Dk/Admin/IncentiveMaster.aspx EDB D 09:27:18 GMT -->
</html>
