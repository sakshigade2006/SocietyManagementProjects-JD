<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.SalaryMaster"%>
<body onload="getAllEmployeeData()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveSalarySetupMaster"
		name="saveSalarySetupMaster" modelAttribute="saveSalarySetupMaster"
		id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Salary Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Salary Master</li>
					</ol>
				</section>
				<input type="hidden" id="id" name="empCode" />
				<section class="content">
					<div class="row" id="idSearch">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by Code<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="searchEmpCode"
														onchange="getEmpByIdForEmpLeave(this.value)"
														id="searchEmpCode" class="form-control select2"
														style="width: 100%;">
														<option selected="selected" value=""></option>
													</select> <span id="searchEmpCodeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Code</span>
												</div>
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
									<h3 class="box-title">Employee Salary Details</h3>
								</div>
								<div id="ContentPlaceHolder1_uppnlSalary">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Basic <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="basic" type="text" id="basic"
														class="form-control" Placeholder="Enter Basic"
														autocomplete="off" /> <span id="basicMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Basic</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">HRA <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="hra" type="text" id="hra" class="form-control"
														Placeholder="Enter HRA" autocomplete="off" /> <span
														id="HRAMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														HRA</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">DA <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="da" type="text" id="da" class="form-control"
														Placeholder="Enter DA" autocomplete="off" /> <span
														id="DAMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														DA</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">TA <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="ta" type="text" id="ta" class="form-control"
														Placeholder="Enter TA" autocomplete="off" /> <span
														id="TAMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														TA</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Allowance <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="allowance" type="text" id="allowance"
														class="form-control" Placeholder="Enter Allowance"
														autocomplete="off" /> <span id="allowanceMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Allowance</span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Others <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="others" type="text" id="others"
														class="form-control" Placeholder="Enter Other Allowance"
														autocomplete="off" /> <span id="othersMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Other Allowance</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Gross Pay <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="grossPay" type="text" readonly="readonly"
														id="grossPay" class="form-control"
														Placeholder="Enter Gross Pay" autocomplete="off" /> <span
														id="grossPayMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Gross Pay</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">PF <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="PF" type="text" id="PF" class="form-control"
														Placeholder="Enter PF" autocomplete="off" /> <span
														id="PFMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PF</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">ESI <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="ESI" type="text" id="ESI" class="form-control"
														Placeholder="Enter ESI" autocomplete="off" /> <span
														id="ESIMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														ESI</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Net Pay <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="netPay" type="text" readonly="readonly"
														id="netPay" class="form-control"
														Placeholder="Enter Net Pay" autocomplete="off" /> <span
														id="netPayMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Net Pay</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<button type="submit" name="save" value="Save"
											onclick="return validateEmployeeSalaryDetails()" id="save"
											class="btn btn-success pull-right margin-r-5">Save</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Salary Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="margin">
											<div>
												<%
												List<SalaryMaster> salaryList = (List<SalaryMaster>) request.getAttribute("salaryList");
												%>
												<%
												if (salaryList != null) {
												%>
												<table cellspacing="0" cellpadding="3" rules="all"
													class="display nowrap table table-hover table-striped table-bordered"
													border="1" style="width: 100%; border-collapse: collapse;">
													<tr style="color: White; background-color: #008385;">
														<th scope="col">Slno</th>
														<th scope="col">Emp Code</th>
														<th scope="col">HRA</th>
														<th scope="col">DA</th>
														<th scope="col">TA</th>
													</tr>
													<%
													for (SalaryMaster salarymaster : salaryList) {
													%>
													<tr>
														<th scope="col"><%=salarymaster.getId()%></th>
														<th scope="col"><%=salarymaster.getEmpCode()%></th>
														<th scope="col"><%=salarymaster.getHra()%></th>
														<th scope="col"><%=salarymaster.getDa()%></th>
														<th scope="col"><%=salarymaster.getTa()%></th>
														<%
														}
														%>
													</tr>
												</table>
												<%
												} else {
												%>
												<table cellspacing="0" cellpadding="3" rules="all"
													class="display nowrap table table-hover table-striped table-bordered"
													border="1" id="ContentPlaceHolder1_gvSalaryMod"
													style="width: 100%; border-collapse: collapse;">
													<caption>Salary Data List</caption>
													<tr>
														<td>No Receord Found</td>
													</tr>
												</table>
												<%
												}
												%>
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
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator9"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator10"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"));
			//]]>
		</script>
		<script type="text/javascript">
			//<![CDATA[
			var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
			ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_ddlSearchEmpCode";
			ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Select Code";
			ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
			ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtBasic";
			ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter Basic";
			ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
			ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtHRA";
			ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter HRA";
			ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
			ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtDA";
			ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter DA";
			ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator9 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator9"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator9");
			ContentPlaceHolder1_RequiredFieldValidator9.controltovalidate = "ContentPlaceHolder1_txtTA";
			ContentPlaceHolder1_RequiredFieldValidator9.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator9.errormessage = "Enter TA";
			ContentPlaceHolder1_RequiredFieldValidator9.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator9.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator9.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator9.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator10 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator10"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator10");
			ContentPlaceHolder1_RequiredFieldValidator10.controltovalidate = "ContentPlaceHolder1_txtAllowance";
			ContentPlaceHolder1_RequiredFieldValidator10.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator10.errormessage = "Enter Allowance";
			ContentPlaceHolder1_RequiredFieldValidator10.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator10.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator10.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator10.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
			ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtOthers";
			ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Other Allowance";
			ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
			ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtGrossPay";
			ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Gross Pay";
			ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
			ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPF";
			ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter PF";
			ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
			ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_txtESI";
			ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Enter ESI";
			ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
			ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtNetPay";
			ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Net Pay";
			ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
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
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
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

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator9').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator9'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator10').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator10'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
			}
			//]]>
		</script>
	</form>
</body>
<!-- Dk/Admin/SalarySetupMaster.aspx EDB D 09:27:22 GMT -->
</html>