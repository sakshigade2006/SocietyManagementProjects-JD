<jsp:include page="../header.jsp" />
<body
	onload="setBranchInSelectOption();getAllBranchMasterForAddBank();getAllUserMaster()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="userCreation" modelAttribute="userCreation"
		name="userCreation" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">User Create</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">User Create</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-6">
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">User Information</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label>User ID <strong style="color: Red">*</strong></label>
											<input name="userId" type="text" id="userId"
												class="form-control" Placeholder="Enter User ID" /> <span
												id="userIdMsg" style="color: Red; display: none;">*</span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Password <strong style="color: Red">*</strong></label>
											<input name="password" type="text" id="password"
												class="form-control" Placeholder="Enter Password" /> <span
												id="passwordMsg" style="color: Red; display: none;">*</span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Full Name</label> <input name="fullName" type="text"
												id="fullName" class="form-control"
												Placeholder="Enter Full Name" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Email ID <strong style="color: Red">*</strong></label>
											<input name="email" type="text" id="email"
												class="form-control" Placeholder="Enter Email ID" /> <span
												id="emailMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Valid Mail ID</span> <span id="ContentPlaceHolder1_Reg1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Invalid
												Mail Id</span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Mobile No</label> <input name="mobile" type="text"
												id="mobile" class="form-control"
												Placeholder="Enter Mobile No" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Log In Branch</label> <select name="branchName"
												id="branchName" class="form-control" style="width: 100%;">
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Back Date</label> <select name="backDate"
												id="backDate" class="form-control" style="width: 100%;">
												<option value="NO">NO</option>
												<option value="0">0</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Re-Print</label> <select name="reprint" id="reprint"
												class="form-control" style="width: 100%;">
												<option value="YES">YES</option>
												<option value="NO">NO</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label>Delete Access</label> <select name="delAcc"
												id="delAcc" class="form-control" style="width: 100%;">
												<option value="YES">YES</option>
												<option value="NO">NO</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label" style="width: 100%;">User
												Status <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input id="isactive"
													type="checkbox" name="isactive" checked="checked" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<button type="button" name="save" value="Save" id="save"
											class="btn btn-success pull-right margin-r-5"
											onclick="validaeUser()">Save</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Branch Access</h3>
								</div>
								<div class="box-body">
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id=""
											style="width: 100%; border-collapse: collapse;">
											<caption>Branch Access List</caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">B.CODE</th>
												<th scope="col">B.NAME</th>
												<th scope="col"><input
													id="ContentPlaceHolder1_gdvBranch_chkSelectAllPlan"
													type="checkbox"
													name="ctl00$ContentPlaceHolder1$gdvBranch$ctl01$chkSelectAllPlan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$gdvBranch$ctl01$chkSelectAllPlan\&#39;,\&#39;\&#39;)&#39;, 0)" />
												</th>
											</tr>
											<tbody id="ContentPlaceHolder1_gdvBranchAddBank">
											</tbody>
										</table>
										<span id="mappedBranchMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="box box-danger"
								style="box-shadow: none; height: 250px; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Plan Access</h3>
								</div>
								<div class="box-body">
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gvrPlan"
											style="width: 100%; border-collapse: collapse;">
											<caption>PLan Access List</caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Plan Code</th>
												<th scope="col">TABLE</th>
												<th scope="col">Term</th>
												<th scope="col"><input
													id="ContentPlaceHolder1_gvrPlan_ChkAll1" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl01$ChkAll1"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$gvrPlan$ctl01$ChkAll1\&#39;,\&#39;\&#39;)&#39;, 0)" />
												</th>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_0">DRD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_0">DRD
														ADVANTAGE</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_0">365</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_0" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl02$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_1">FD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_1">WEALTH
														1</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_1">12</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_1" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl03$Check1" /></td>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_2">FD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_2">WEALTH
														3</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_2">36</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_2" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl04$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_3">FD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_3">WEALTH
														5</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_3">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_3" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl05$Check1" /></td>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_4">FD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_4">ROYAL
														FI</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_4">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_4" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl06$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_5">FD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_5">ROYAL
														FIX</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_5">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_5" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl07$Check1" /></td>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_6">MIS</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_6">MIS-12</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_6">12</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_6" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl08$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_7">RD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_7">GROW</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_7">12</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_7" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl09$Check1" /></td>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_8">RD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_8">GROW
														+</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_8">36</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_8" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl10$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_9">RD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_9">ROYAL
														+</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_9">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_9" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl11$Check1" /></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-danger"
								style="box-shadow: none; height: 250px; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Access</h3>
								</div>
								<div class="box-body">
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gvrPlan"
											style="width: 100%; border-collapse: collapse;">
											<caption>Loan Access List</caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Loan Code</th>
												<th scope="col">Loan Name</th>
												<th scope="col">Term</th>
												<th scope="col"><input
													id="ContentPlaceHolder1_gvrPlan_ChkAll1" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl01$ChkAll1"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$gvrPlan$ctl01$ChkAll1\&#39;,\&#39;\&#39;)&#39;, 0)" />
												</th>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_4">4764C</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_4">ROYAL
														FI</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_4">12</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_4" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl06$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_5">7FEF4</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_5">SWARNA
														ADHAR 12</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_5">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_5" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl07$Check1" /></td>
											</tr>
											<tr>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_6">GL-12</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_6">SWARA
														SHAKTI 16</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_6">12</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_6" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl08$Check1" /></td>
											</tr>
											<tr style="color: #000333; background-color: #F3ACAF;">
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpc_9">RD</span>
												</td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpts_9">ROYAL
														+</span></td>
												<td><span id="ContentPlaceHolder1_gvrPlan_lblpt_9">60</span>
												</td>
												<td align="center" style="width: 30px;"><input
													id="ContentPlaceHolder1_gvrPlan_Check1_9" type="checkbox"
													name="ctl00$ContentPlaceHolder1$gvrPlan$ctl11$Check1" /></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="box-body">
									<div></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<caption>User Data List</caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">User ID</th>
												<th scope="col">User Type</th>
												<th scope="col">Login Branch</th>
												<th scope="col">Full Name</th>
												<th scope="col">Mobile No</th>
											</tr>
											<tbody id="ContentPlaceHolder1_gdvUser">
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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_Reg1"));
         //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtUserID";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "*";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtPassword";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "*";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
         ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtEmail";
         ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter Valid Mail ID";
         ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
         var ContentPlaceHolder1_Reg1 = document.all ? document.all["ContentPlaceHolder1_Reg1"] : document.getElementById("ContentPlaceHolder1_Reg1");
         ContentPlaceHolder1_Reg1.controltovalidate = "ContentPlaceHolder1_txtEmail";
         ContentPlaceHolder1_Reg1.focusOnError = "t";
         ContentPlaceHolder1_Reg1.errormessage = "Invalid Mail Id";
         ContentPlaceHolder1_Reg1.display = "Dynamic";
         ContentPlaceHolder1_Reg1.validationGroup = "A";
         ContentPlaceHolder1_Reg1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
         ContentPlaceHolder1_Reg1.validationexpression = "\\w+([-+.\']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
         }
         
         document.getElementById('ContentPlaceHolder1_Reg1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_Reg1'));
         }
         //]]>
      </script>
	</form>
</body>
<!-- Dk/Admin/UserCreate.aspx EDB D 09:26:49 GMT -->
</html>