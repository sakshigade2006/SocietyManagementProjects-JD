<jsp:include page="../header.jsp" />
<body
	onload="getAllRates();getAllItemMaster();getAllLockerMaster();getAllPurityMaster();"
	class="skin-blue sidebar-mini"
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
				<h1 id="ContentPlaceHolder1_IdHeader">Gold Loan Master</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Gold Master</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="box box-success box-solid">
							<div class="box-header with-border">
								<h3 class="box-title">Todays Rate</h3>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<form action="saveRates" method="post" name="myFormRateMaster"
								modelAttribute="saveRateMaster">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtDdPlaneName" class="col-sm-7 control-label">Karat
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-5">
												<select name="goldRateType" id="goldRateType"
													class="form-control" style="width: 100%;">
													<option value="" selected>Select Karat Type</option>
													<option value="24K">24K</option>
													<option value="22K">22K</option>
													<option value="20K">20K</option>
													<option value="18K">18K</option>
												</select> <span id="goldRateTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDdPlaneName" class="col-sm-7 control-label">Gold
												Rate/1 gm <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-5">
												<input name="goldRate" type="text" id="goldRate"
													class="form-control" autocomplete="off" /> <span
													id="goldRateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtDdPlaneName" class="col-sm-5 control-label">Silver
												Rate/1 gm <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-5">
												<input name="silverRate" type="text" id="silverRate"
													class="form-control" autocomplete="off" /> <span
													id="silverRateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
											<button type="button" class="btn btn-success pull-right"
												onclick="return goldLoanTodaysDate()" />
											Save
											</button>
										</div>

									</div>
							</form>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvGoldRate"
											style="width: 100%; border-collapse: collapse;">
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Karat</th>
												<th scope="col">Gold Rate</th>
												<th scope="col">Silver Rate</th>
												<th scope="col">Action</th>
											</tr>
											<tr>
												<td><span
													id="ContentPlaceHolder1_gdvGoldRate_lblICode_0">24K</span>
												</td>
												<td><span
													id="ContentPlaceHolder1_gdvGoldRate_lblIName_0">5200</span>
												</td>
												<td><span
													id="ContentPlaceHolder1_gdvGoldRate_lblIType_0">2500</span>
												</td>
												<td align="center" style="width: 50px;"><input
													type="image"
													name="ctl00$ContentPlaceHolder1$gdvGoldRate$ctl02$imgItemViewRate"
													id="ContentPlaceHolder1_gdvGoldRate_imgItemViewRate_0"
													src="dist/img/view-icon.png" /></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box box-danger box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Item Master</h3>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<form action="saveItemMaster" method="post" name="myFormItemMaster"
						modelAttribute="saveItemMaster">
						<div class="box-body">
							<div class="col-md-6">
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-5 control-label">Item
										Type <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-7">
										<select name="itemType" id="itemType" class="form-control"
											style="width: 100%;">
											<option value="Gold">Gold</option>
											<option value="Silver">Silver</option>
										</select> <span id="itemTypeMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-5 control-label">Item
										Name <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-5">
										<input name="itemName" type="text" maxlength="500"
											id="itemName" class="form-control" autocomplete="off" /> <span
											id="itemNameMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
									<button type="button" name="itemData" value="Save"
										id="itemData" onclick="return validateItemMaster()"
										class="btn btn-success pull-right">Save</button>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvItem"
											style="width: 100%; border-collapse: collapse;">
											<tr>
												<td>No Receord Found</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box box-warning box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Locker Master</h3>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<!-- <form action="saveLockerMaster" method="post"
						name="myFormLockerMaster" modelAttribute="savelockerMaster"> -->
						<form action="/saveLockerMaster" method="post" name="myFormLockerMaster" modelAttribute="savelockerMaster">
						<div class="box-body">
							<div class="col-md-6">
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-7 control-label">Locker
										Location <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-5">
										<input name="lockerLocation" type="text" id="lockerLocation"
											class="form-control" autocomplete="off" /> <span
											id="lockerLocationMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-5 control-label">Locker
										Address <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-5">
										<input name="lockerAddress" type="text" id="lockerAddress"
											class="form-control" autocomplete="off" /> <span
											id="lockerAddressMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
									<button type="submit"
										name="ctl00$ContentPlaceHolder1$btnLocker" value="Save"
										onclick="return validateLockerMaster()"
										id="ContentPlaceHolder1_btnLocker"
										class="btn btn-success pull-right">Save</button>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvLocker"
											style="width: 100%; border-collapse: collapse;">
											<tr>
												<td>No Receord Found</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="box box-info box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Purity Master</h3>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<form action="savePurityMaster" method="post"
						name="myFormPurityMaster" modelAttribute="savePurityMaster">
						<div class="box-body">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-7 control-label">Purity Name <strong
										style="color: Red">*</strong></label>
									<div class="col-sm-5">
										<input name="purityName" type="text" id="purityName"
											class="form-control" autocomplete="off" /> <span
											id="purityNameMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
								</div>
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-7 control-label">Item
										Type <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-5">
										<select name="purityType" id="purityType" class="form-control"
											style="width: 100%;">
											<option value="Gold">Gold</option>
											<option value="Silver">Silver</option>
										</select> <span id="purityTypeMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label for="txtDdPlaneName" class="col-sm-5 control-label">Purity
										(%) <strong style="color: Red">*</strong>
									</label>
									<div class="col-sm-5">
										<input name="maxLoanPerGram" type="text" id="maxLoanPerGram"
											class="form-control" autocomplete="off"
											onkeypress="return isNumberOnlyKey(this, event);" /> <span
											id="maxLoanPerGramMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
									<button type="button"
										name="ctl00$ContentPlaceHolder1$btnPurity" value="Save"
										id="ContentPlaceHolder1_btnPurity"
										onclick="return validatePurityMaster()"
										class="btn btn-success pull-right">Save</button>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvPurity"
											style="width: 100%; border-collapse: collapse;">
											<tr>
												<td>No Receord Found</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
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
	<script>
         $(function () {
             //Initialize Select2 Elements
             $('.select2').select2();
             //Datemask dd/mm/yyyy
             $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
             //Datemask2 mm/dd/yyyy
             $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
             //Date range picker
             $('#reservation').daterangepicker()
             //Date range picker with time picker
             $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
             $('#daterange-btn').daterangepicker(
              {
                  ranges: {
                      'Today': [moment(), moment()],
                      'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                      'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                      'This Month': [moment().startOf('month'), moment().endOf('month')],
                      'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                  },
                  startDate: moment().subtract(29, 'days'),
                  endDate: moment()
              },
              function (start, end) {
                  $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
              }
            )
             //Date picker
             $('#datepicker').datepicker({
                 autoclose: true
             })
             //Money Euro
             $('[data-mask]').inputmask()
         
             //iCheck for checkbox and radio inputs
             $('span[type="checkbox"].minimal').iCheck({
                 checkboxClass: 'icheckbox_minimal-blue',
                 radioClass: 'iradio_minimal-blue'
             })
         })
      </script>
	</form>
</body>
<!-- Dk/Admin/GoldLoanMaster.aspx EDB D 09:27:11 GMT -->
</html>