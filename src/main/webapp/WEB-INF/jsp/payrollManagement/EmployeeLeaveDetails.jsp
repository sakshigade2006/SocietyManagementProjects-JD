<jsp:include page="../header.jsp" />
<body onload="getAllEmployeeData()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveEmployeeLeaveMaster123"
		name="saveEmployeeLeaveMaster"
		th:object="${saveEmployeeLeaveMaster123}" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Employee Leave Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Leave Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row" id="idSearch">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<!-- <input type="hidden" id="id" name="id" /> -->
								<input type="hidden" th:field="*{id}" id="id" name="id" />
								<div class="box-body">
									<div class="col-md-5">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select by Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="searchEmpCode" id="searchEmpCode"
													onchange="getEmpById(this.value)"
													class="form-control select2" style="width: 100%;">
													<option value=""></option>
												</select> <span id="searchEmpCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Financial Year<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="financialYear" id="financialYear"
													class="form-control" style="width: 100%;">
													<option value="2020-2021">2020-2021</option>
													<option value="2021-2022">2021-2022</option>
													<option value="2022-2023">2022-2023</option>
													<option value="2022-2023">2023-2024</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group row">
											<label class="col-sm-4 control-label"></label>
											<div class="col-sm-8">
												<button type="button" name="search" value="Search"
													id="search" class="btn btn-success pull-right"
													onclick="return validateEmployeeLeaveDetails()">Search</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Employee Leave Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-5">
										<div class="form-group row">
											<label class="col-sm-4 control-label">CL <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="cl" type="text" id="cl" class="form-control"
													Placeholder="Enter CL" autocomplete="off" /> <span
													id="clMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													CL</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">SL <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="sl" type="text" id="sl" class="form-control"
													Placeholder="Enter SL" autocomplete="off" /> <span
													id="slMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													SL</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">EL <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="el" type="text" id="el" class="form-control"
													Placeholder="Enter EL" autocomplete="off" /> <span
													id="elMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													EL</span>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group row">
											<label class="col-sm-4 control-label"></label>
											<div class="col-sm-8">
												<button type="button" name="save" value="Save"
													onclick="return validateEmployeeLeaveDetails2()" id="save"
													class="btn btn-success pull-right">Save</button>
												<!-- <button type="submit" name="save" value="Save" 
												class="btn btn-success pull-right">Save</button> -->
											</div>
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
									<h3 class="box-title">Leave Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="margin">
											<div>
												<table style="width: 100%;">

												</table>
												<table id="ContentPlaceHolder1_gvSalary"
													style="width: 100%;">
													<tr>
														<td>No Receord Found</td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
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
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})
			})
		</script>
		<script type="text/javascript">
			//<![CDATA[
			var Page_Validators = new Array(
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
			//]]>
		</script>
		<script type="text/javascript">
			//<![CDATA[
			var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
			ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtCL";
			ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter CL";
			ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
			ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtSL";
			ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter SL";
			ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
			ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtEL";
			ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter EL";
			ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
			//]]>
		</script>
		<script type="text/javascript">
			//<![CDATA[

			var Page_ValidationActive = false;
			if (typeof (ValidatorOnLoad) == "function") {
				ValidatorOnLoad();
			}

			function ValidatorOnSubmit() {
				if (Page_ValidationActive) {
					return ValidatorCommonOnSubmit();
				} else {
					return true;
				}
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
			}
			//]]>
		</script>
	</form>
</body>
<!-- Dk/Admin/EmployeeLeaveDetails.aspx EDB D 09:27:22 GMT -->
</html>