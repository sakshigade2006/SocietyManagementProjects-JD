<jsp:include page="../header.jsp" />
<body onload="getAllEmployeeData();" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveEmployeeLeaveMaster"
		name="saveEmployeeLeaveMaster"
		modelAttribute="saveEmployeeLeaveMaster" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Leave Adjustment</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Leave Adjustment</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Employee Information</h3>
								</div>
								<input type="hidden" id="id" name="empCode" />
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-4">
											<div class="form-group row">
												<label for="ddlEmployeeCode" class="col-sm-5 control-label">Employee
													Code<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-7">
													<select name="searchEmpCode" id="searchEmpCode"
														onchange="getEmpByIdForEmpLeave(this.value)"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value=""></option>
													</select> <span id="searchEmpCodeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<input type="hidden" name="idVal" id="id">
										<div class="col-md-4">
											<div class="form-group row">
												<label for="txtEmployeeName" class="col-sm-5 control-label">Employee
													Name<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-7">
													<input name="employeeName" type="text" readonly="readonly"
														id="employeeName" class="form-control"
														PlaceHolder="Enter Employee Name" /> <span
														id="employeeNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group row">
												<label for="txtJoiningDate" class="col-sm-5 control-label">Joining
													Date<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-7">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="DOJ" type="date" value="01/08/2022"
															readonly="readonly" id="DOJ" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
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
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Leave Information</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-4">
											<div class="form-group row">
												<label for="txtCL" class="col-sm-5 control-label">Total
													CL</label>
												<div class="col-sm-7">
													<input name="cl" type="text" value="0" readonly="readonly"
														id="CL" class="form-control" PlaceHolder="CL" />
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group row">
												<label for="txtSL" class="col-sm-5 control-label">Total
													SL </label>
												<div class="col-sm-7">
													<input name="sl" type="text" value="0" readonly="readonly"
														id="SL" class="form-control" PlaceHolder="SL" />
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group row">
												<label for="txtPL" class="col-sm-5 control-label">Total
													EL/PL</label>
												<div class="col-sm-7">
													<input name="el" type="text" value="0" readonly="readonly"
														id="EL" class="form-control" PlaceHolder="El/PL" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="col-md-5">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Remaining Leave Info.</h3>
									</div>
									<div class="form-horizontal">
										<div class="box-body">
											<div class="col-md-12">
												<div class="form-group row mb12">
													<div class="col-sm-6">
														<label for="txtCL" class="control-label pull-right">CL</label>
													</div>
													<div class="col-sm-6">
														<input name="RM_CL" type="text" value="0"
															readonly="readonly" id="RM_CL" title="Remaining CL"
															class="form-control" PlaceHolder="Remaining CL" />
													</div>
												</div>
												<div class="form-group row mb12">
													<div class="col-sm-6">
														<label for="txtSL" class="control-label pull-right">SL
														</label>
													</div>
													<div class="col-sm-6">
														<input name="RM_SL" type="text" value="0"
															readonly="readonly" id="RM_SL" title="Remaining SL"
															class="form-control" PlaceHolder="Remaining SL" />
													</div>
												</div>
												<div class="form-group row mb12">
													<div class="col-sm-6">
														<label for="txtPL" class="control-label pull-right">EL/PL</label>
													</div>
													<div class="col-sm-6">
														<input name="RM_PL" type="text" value="0"
															readonly="readonly" id="RM_PL" title="Remaining El/PL"
															class="form-control" PlaceHolder="Remaining El/PL" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-7">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Leave Apply</h3>
									</div>
									<div class="form-horizontal">
										<div class="box-body">
											<div class="col-md-12">
												<div class="form-group row">
													<div class="col-sm-6">
														<table id="ContentPlaceHolder1_rdbLeaveApply" class="rbl">
															<tr>
																<td><input id="cl" type="radio" name="cl"
																	 /><label
																	for="ContentPlaceHolder1_rdbLeaveApply_0">CL</label></td>
															</tr>
															<tr>
																<td><input id="SL" type="radio" name="sl" /><label
																	for="ContentPlaceHolder1_rdbLeaveApply_1">SL</label></td>
															</tr>
															<tr>
																<td><input id="EL" type="radio" name="el" /><label
																	for="ContentPlaceHolder1_rdbLeaveApply_2">EL/PL</label></td>
															</tr>
														</table>
													</div>
													<div class="col-md-6">
														<div class="form-group row">
															<div class="col-sm-12">
																<input name="cl" type="text" maxlength="2" id="CL"
																	title="Enter Apply CL" class="form-control mb12 "
																	PlaceHolder="Enter CL" min="0" autocomplete="off" /> <span
																	style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Please
																	Enter CL Leave Value</span> <span id="clMsg" class="col-md-12"
																	style="color: Red; display: none;">CL field
																	Accepts only Numbers.</span>
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-12">
																<input name="sl" type="text" maxlength="2" id="SL"
																	title="Enter Apply SL" class="form-control mb12"
																	PlaceHolder="Enter SL" min="0" autocomplete="off" /> <span
																	id="slMsg"
																	style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Please
																	Enter SL Leave Value</span> <span id="slMsg" class="col-md-12"
																	style="color: Red; display: none;">SL field
																	Accepts only Numbers.</span>
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-12">
																<input name="el" type="text" maxlength="2" id="EL"
																	title="Enter Apply El/PL" class="form-control mb12"
																	PlaceHolder="Enter El/PL" min="0" autocomplete="off" />
																<span id="elMsg"
																	style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Please
																	Enter El/PL Leave Value</span> <span id="elMsg"
																	class="col-md-12" style="color: Red; display: none;">El/PL
																	field Accepts only Numbers.</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Leave Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-12">
											<div class="form-group row">
												<label for="txtLeaveDate" class="col-sm-4 control-label">Leave
													Date<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="leaveDate" type="date" value="01/08/2022"
															id="leaveDate" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
													<span
														id="ContentPlaceHolder1_RequiredFieldValidatorLeaveDate"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Leave Date</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPurpose" class="col-sm-4 control-label">Purpose<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<textarea name="LeavePurpose" rows="2" cols="20"
														id="leavePurpose" class="form-control"
														PlaceHolder="Enter Purpose"></textarea>
													<span id="leavePurposeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Purpose</span>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<button type="submit"
												name="ctl00$ContentPlaceHolder1$btnSubmit" value="Submit"
												id="ContentPlaceHolder1_btnSubmit" class="aspNetDisabled"
												class="btn btn-success pull-right margin-r-5">Submit</button>
											<button type="reset"
												name="ctl00$ContentPlaceHolder1$btnClear" value="Clear"
												id="ContentPlaceHolder1_btnClear"
												class="btn btn-success pull-right margin-r-5">Clear</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Leave Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="margin">
											<div>
												<table cellspacing="0" cellpadding="3" rules="all"
													class="display nowrap table table-hover table-striped table-bordered"
													border="1" style="width: 100%; border-collapse: collapse;">
													<tr style="color: White; background-color: #008385;">
														<th scope="col">Slno</th>
														<th scope="col">Code</th>
														<th scope="col">EMp Name</th>
														<th scope="col">SL</th>
														<th scope="col">CL</th>
														<th scope="col">EL</th>
													</tr>
												</table>
												<table cellspacing="0" cellpadding="3" rules="all"
													class="display nowrap table table-hover table-striped table-bordered"
													border="1" id="ContentPlaceHolder1_gvSalary"
													style="width: 100%; border-collapse: collapse;">
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
		<script type="text/javascript">
         //<![CDATA[
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RegularExpressionValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RegularExpressionValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RegularExpressionValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLeaveDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPurpose"));
         //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode");
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.controltovalidate = "ContentPlaceHolder1_ddlEmployeeCode";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.errormessage = "Select Employee Code";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtApply_CL";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Please Enter CL Leave Value";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.enabled = "False";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         var ContentPlaceHolder1_RegularExpressionValidator1 = document.all ? document.all["ContentPlaceHolder1_RegularExpressionValidator1"] : document.getElementById("ContentPlaceHolder1_RegularExpressionValidator1");
         ContentPlaceHolder1_RegularExpressionValidator1.controltovalidate = "ContentPlaceHolder1_txtApply_CL";
         ContentPlaceHolder1_RegularExpressionValidator1.errormessage = "CL field Accepts only Numbers.";
         ContentPlaceHolder1_RegularExpressionValidator1.display = "Dynamic";
         ContentPlaceHolder1_RegularExpressionValidator1.validationGroup = "AB";
         ContentPlaceHolder1_RegularExpressionValidator1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
         ContentPlaceHolder1_RegularExpressionValidator1.validationexpression = "^[0-9]*$";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtApply_SL";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Please Enter SL Leave Value";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.enabled = "False";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
         var ContentPlaceHolder1_RegularExpressionValidator2 = document.all ? document.all["ContentPlaceHolder1_RegularExpressionValidator2"] : document.getElementById("ContentPlaceHolder1_RegularExpressionValidator2");
         ContentPlaceHolder1_RegularExpressionValidator2.controltovalidate = "ContentPlaceHolder1_txtApply_SL";
         ContentPlaceHolder1_RegularExpressionValidator2.errormessage = "SL field Accepts only Numbers.";
         ContentPlaceHolder1_RegularExpressionValidator2.display = "Dynamic";
         ContentPlaceHolder1_RegularExpressionValidator2.validationGroup = "AB";
         ContentPlaceHolder1_RegularExpressionValidator2.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
         ContentPlaceHolder1_RegularExpressionValidator2.validationexpression = "^[0-9]*$";
         var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
         ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtApply_PL";
         ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Please Enter El/PL Leave Value";
         ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator3.enabled = "False";
         ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
         var ContentPlaceHolder1_RegularExpressionValidator3 = document.all ? document.all["ContentPlaceHolder1_RegularExpressionValidator3"] : document.getElementById("ContentPlaceHolder1_RegularExpressionValidator3");
         ContentPlaceHolder1_RegularExpressionValidator3.controltovalidate = "ContentPlaceHolder1_txtApply_PL";
         ContentPlaceHolder1_RegularExpressionValidator3.errormessage = "El/PL field Accepts only Numbers.";
         ContentPlaceHolder1_RegularExpressionValidator3.display = "Dynamic";
         ContentPlaceHolder1_RegularExpressionValidator3.validationGroup = "AB";
         ContentPlaceHolder1_RegularExpressionValidator3.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
         ContentPlaceHolder1_RegularExpressionValidator3.validationexpression = "^[0-9]*$";
         var ContentPlaceHolder1_RequiredFieldValidatorLeaveDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLeaveDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLeaveDate");
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.controltovalidate = "ContentPlaceHolder1_txtLeaveDate";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.errormessage = "Enter Leave Date";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorLeaveDate.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorPurpose = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPurpose"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPurpose");
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.controltovalidate = "ContentPlaceHolder1_txtPurpose";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.errormessage = "Enter Purpose";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.validationGroup = "AB";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorPurpose.initialvalue = "";
         //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[
         
         var Page_ValidationActive = false;
         if (typeof(ValidatorOnLoad) == "function") {
             ValidatorOnLoad();
         }
         
         function ValidatorOnSubmit() {
             if (Page_ValidationActive) {
                 return ValidatorCommonOnSubmit();
             }
             else {
                 return true;
             }
         }
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEmployeeCode'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RegularExpressionValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RegularExpressionValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RegularExpressionValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RegularExpressionValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
         }
         
         document.getElementById('ContentPlaceHolder1_RegularExpressionValidator3').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RegularExpressionValidator3'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLeaveDate').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLeaveDate'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPurpose').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPurpose'));
         }
         //]]>
      </script>
	</form>
</body>
<!-- Dk/Admin/LeaveAdjustment.aspx EDB D 09:27:23 GMT -->
</html>