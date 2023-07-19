<%@page import="java.util.List"%>
<%@page import="com.society.application.model.Member"%>
<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="com.society.application.model.Employee"%>
<jsp:include page="../header.jsp" />
<body onload="getAllGroupMaster();" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveGroupMaster" id="form1"
		name="myFormGroupMaster" modelAttribute="saveGroupMaster"
		enctype="multipart/form-data">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Group Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"> <i class="fa fa-dashboard"></i>Home
						</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Group Master</li>
					</ol>
				</section>
				<%
				List<Member> memberList = (List<Member>) request.getAttribute("memberList");
				%>
				<%
				List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
				%>
				<%
				List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
				%>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Group Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-5 control-label">Group
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="groupName" type="text" id="groupName"
													class="form-control" Placeholder="Enter Group Name" /> <span
													id="groupNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Op. Date <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="opDate" type="date" value="01/08/2022"
														id="opDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="opDateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Group Name</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Group Branch <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="csp" id="csp" class="form-control"
													style="width: 100%;">
													<option value="">Select Branch</option>
													<%
													if (branchList != null && !branchList.isEmpty()) {
														for (BranchMaster branch : branchList) {
													%>
													<option value="<%=branch.getId()%>"><%=branch.getName()%></option>
													<%
													}
													}
													%>
												</select> <span id="cspMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Group Leader
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="grLeaderName" type="text" id="grLeaderName"
													class="form-control" /> <span id="grLeaderNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Mobile No. <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="mobile" type="text" maxlength="10" id="mobile"
													class="form-control" /> <span id="mobileMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile No.</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Group Address <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="grAddr" type="text" id="grAddr"
													class="form-control" /> <span id="grAddrMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Assign Employee
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="employee" id="employee" class="form-control"
													style="width: 100%;">
													<option value="">Select Employee</option>
													<%
													if (employeeList != null && !employeeList.isEmpty()) {
														for (Employee emp : employeeList) {
													%>
													<option value="<%=emp.getId()%>"><%=emp.getMemberName()%></option>
													<%
													}
													}
													%>

												</select> <span id="employeeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Collection Day
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="cDay" id="cDay" class="form-control"
													style="width: 100%;">
													<option value="Monday">Monday</option>
													<option value="Tuesday">Tuesday</option>
													<option value="Wednesday">Wednesday</option>
													<option value="Thursday">Thursday</option>
													<option value="Friday">Friday</option>
													<option value="Saturday">Saturday</option>
													<option value="Sunday">Sunday</option>
												</select> <span id="cDayMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Collection Time
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="cTime" id="cTime" class="form-control"
													style="width: 100%;">
													<option value="12:00 AM">12:00 AM</option>
													<option value="12:10 AM">12:10 AM</option>
													<option value="12:20 AM">12:20 AM</option>
													<option value="12:30 AM">12:30 AM</option>
													<option value="12:40 AM">12:40 AM</option>
													<option value="12:50 AM">12:50 AM</option>
													<option value="1:00 AM">1:00 AM</option>
													<option value="1:10 AM">1:10 AM</option>
													<option value="1:20 AM">1:20 AM</option>
													<option value="1:30 AM">1:30 AM</option>
													<option value="1:40 AM">1:40 AM</option>
													<option value="1:50 AM">1:50 AM</option>
													<option value="2:00 AM">2:00 AM</option>
													<option value="2:10 AM">2:10 AM</option>
													<option value="2:20 AM">2:20 AM</option>
													<option value="2:30 AM">2:30 AM</option>
													<option value="2:40 AM">2:40 AM</option>
													<option value="2:50 AM">2:50 AM</option>
													<option value="3:00 AM">3:00 AM</option>
													<option value="3:10 AM">3:10 AM</option>
													<option value="3:20 AM">3:20 AM</option>
													<option value="3:30 AM">3:30 AM</option>
													<option value="3:40 AM">3:40 AM</option>
													<option value="3:50 AM">3:50 AM</option>
													<option value="4:00 AM">4:00 AM</option>
													<option value="4:10 AM">4:10 AM</option>
													<option value="4:20 AM">4:20 AM</option>
													<option value="4:30 AM">4:30 AM</option>
													<option value="4:40 AM">4:40 AM</option>
													<option value="4:50 AM">4:50 AM</option>
													<option value="5:00 AM">5:00 AM</option>
													<option value="5:10 AM">5:10 AM</option>
													<option value="5:20 AM">5:20 AM</option>
													<option value="5:30 AM">5:30 AM</option>
													<option value="5:40 AM">5:40 AM</option>
													<option value="5:50 AM">5:50 AM</option>
													<option value="6:00 AM">6:00 AM</option>
													<option value="6:10 AM">6:10 AM</option>
													<option value="6:20 AM">6:20 AM</option>
													<option value="6:30 AM">6:30 AM</option>
													<option value="6:40 AM">6:40 AM</option>
													<option value="6:50 AM">6:50 AM</option>
													<option value="7:00 AM">7:00 AM</option>
													<option value="7:10 AM">7:10 AM</option>
													<option value="7:20 AM">7:20 AM</option>
													<option value="7:30 AM">7:30 AM</option>
													<option value="7:40 AM">7:40 AM</option>
													<option value="7:50 AM">7:50 AM</option>
													<option value="8:00 AM">8:00 AM</option>
													<option value="8:10 AM">8:10 AM</option>
													<option value="8:20 AM">8:20 AM</option>
													<option value="8:30 AM">8:30 AM</option>
													<option value="8:40 AM">8:40 AM</option>
													<option value="8:50 AM">8:50 AM</option>
													<option value="9:00 AM">9:00 AM</option>
													<option value="9:10 AM">9:10 AM</option>
													<option value="9:20 AM">9:20 AM</option>
													<option value="9:30 AM">9:30 AM</option>
													<option value="9:40 AM">9:40 AM</option>
													<option value="9:50 AM">9:50 AM</option>
													<option value="10:00 AM">10:00 AM</option>
													<option value="10:10 AM">10:10 AM</option>
													<option value="10:20 AM">10:20 AM</option>
													<option value="10:30 AM">10:30 AM</option>
													<option value="10:40 AM">10:40 AM</option>
													<option value="10:50 AM">10:50 AM</option>
													<option value="11:00 AM">11:00 AM</option>
													<option value="11:10 AM">11:10 AM</option>
													<option value="11:20 AM">11:20 AM</option>
													<option value="11:30 AM">11:30 AM</option>
													<option value="11:40 AM">11:40 AM</option>
													<option value="11:50 AM">11:50 AM</option>
													<option value="12:00 PM">12:00 PM</option>
													<option value="12:10 PM">12:10 PM</option>
													<option value="12:20 PM">12:20 PM</option>
													<option value="12:30 PM">12:30 PM</option>
													<option value="12:40 PM">12:40 PM</option>
													<option value="12:50 PM">12:50 PM</option>
													<option value="1:00 PM">1:00 PM</option>
													<option value="1:10 PM">1:10 PM</option>
													<option value="1:20 PM">1:20 PM</option>
													<option value="1:30 PM">1:30 PM</option>
													<option value="1:40 PM">1:40 PM</option>
													<option value="1:50 PM">1:50 PM</option>
													<option value="2:00 PM">2:00 PM</option>
													<option value="2:10 PM">2:10 PM</option>
													<option value="2:20 PM">2:20 PM</option>
													<option value="2:30 PM">2:30 PM</option>
													<option value="2:40 PM">2:40 PM</option>
													<option value="2:50 PM">2:50 PM</option>
													<option value="3:00 PM">3:00 PM</option>
													<option value="3:10 PM">3:10 PM</option>
													<option value="3:20 PM">3:20 PM</option>
													<option value="3:30 PM">3:30 PM</option>
													<option value="3:40 PM">3:40 PM</option>
													<option value="3:50 PM">3:50 PM</option>
													<option value="4:00 PM">4:00 PM</option>
													<option value="4:10 PM">4:10 PM</option>
													<option value="4:20 PM">4:20 PM</option>
													<option value="4:30 PM">4:30 PM</option>
													<option value="4:40 PM">4:40 PM</option>
													<option value="4:50 PM">4:50 PM</option>
													<option value="5:00 PM">5:00 PM</option>
													<option value="5:10 PM">5:10 PM</option>
													<option value="5:20 PM">5:20 PM</option>
													<option value="5:30 PM">5:30 PM</option>
													<option value="5:40 PM">5:40 PM</option>
													<option value="5:50 PM">5:50 PM</option>
													<option value="6:00 PM">6:00 PM</option>
													<option value="6:10 PM">6:10 PM</option>
													<option value="6:20 PM">6:20 PM</option>
													<option value="6:30 PM">6:30 PM</option>
													<option value="6:40 PM">6:40 PM</option>
													<option value="6:50 PM">6:50 PM</option>
													<option value="7:00 PM">7:00 PM</option>
													<option value="7:10 PM">7:10 PM</option>
													<option value="7:20 PM">7:20 PM</option>
													<option value="7:30 PM">7:30 PM</option>
													<option value="7:40 PM">7:40 PM</option>
													<option value="7:50 PM">7:50 PM</option>
													<option value="8:00 PM">8:00 PM</option>
													<option value="8:10 PM">8:10 PM</option>
													<option value="8:20 PM">8:20 PM</option>
													<option value="8:30 PM">8:30 PM</option>
													<option value="8:40 PM">8:40 PM</option>
													<option value="8:50 PM">8:50 PM</option>
													<option value="9:00 PM">9:00 PM</option>
													<option value="9:10 PM">9:10 PM</option>
													<option value="9:20 PM">9:20 PM</option>
													<option value="9:30 PM">9:30 PM</option>
													<option value="9:40 PM">9:40 PM</option>
													<option value="9:50 PM">9:50 PM</option>
													<option value="10:00 PM">10:00 PM</option>
													<option value="10:10 PM">10:10 PM</option>
													<option value="10:20 PM">10:20 PM</option>
													<option value="10:30 PM">10:30 PM</option>
													<option value="10:40 PM">10:40 PM</option>
													<option value="10:50 PM">10:50 PM</option>
													<option value="11:00 PM">11:00 PM</option>
													<option value="11:10 PM">11:10 PM</option>
													<option value="11:20 PM">11:20 PM</option>
													<option value="11:30 PM">11:30 PM</option>
													<option value="11:40 PM">11:40 PM</option>
													<option value="11:50 PM">11:50 PM</option>
												</select> <span id="cTimeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Group Address</span>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<button type="button" name="save"
											onclick="return validateGroupMaster()" value="Save" id="save"
											class="btn btn-success pull-right margin-r-5">Save</button>
									</div>
								</div>
							</div>
						</div>

						<!--  -->

					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Detail Search List</h3>
								</div>
								<div class="box-body">
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvDataR"
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
	</form>
</body>
<!-- Dk/Admin/LoanGroupMaster.aspx EDB D 09:27:12 GMT -->
</html>