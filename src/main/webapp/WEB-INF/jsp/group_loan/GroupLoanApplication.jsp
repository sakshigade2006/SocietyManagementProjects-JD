<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.GroupMaster"%>
<jsp:include page="../header.jsp" />
<body onload="getAllGroupLoanApplication()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveGroupMasterApplication" name="form1"
		modelAttribute="saveGroupMasterApplication">
		<%
         String status = (String)request.getAttribute("status");
         if(status!=null && "success".equals(status)){
          %>
		<script>
         alert("Saved Successfully");
      </script>
		<%
         }else{
          
         }
         %>
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
			<%
			List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
			%>
			<%
			List<GroupMaster> allGroupMaster = (List<GroupMaster>) request.getAttribute("allGroupMaster");
			%>
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Group Loan Application</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Group Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Search by
													GroupID <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="searchGroupID" id="searchGroupID1"
														onchange="javascript:displayGroupLoanApplicationDetails()"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value=""></option>
														<%
														if (allGroupMaster != null && !allGroupMaster.isEmpty()) {
															for (GroupMaster group : allGroupMaster) {
														%>
														<option value="<%=group.getId()%>"><%=group.getId()%></option>
														<%
														}
														}
														%>
													</select> <span id="searchGroupIDMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
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
									<h3 class="box-title">Group Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-5 control-label">Loan Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="loanDate" type="date" value="01/08/2022"
														id="ContentPlaceHolder1_txtLoanDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="loanDateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-5 control-label">Group
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="groupName" type="text" readonly="readonly"
													id="groupName" class="form-control"
													Placeholder="Enter Group Name" /> <span id="groupNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Loan Branch <strong
												style="color: Red">*</strong></label>
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
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Group Leader
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="leaderName" type="text" readonly="readonly"
													id="leaderName" class="form-control" /> <span
													id="leaderNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Mobile No. <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="mobile" type="text" maxlength="10"
													readonly="readonly" id="mobile" class="form-control" /> <span
													id="mobileMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-5 control-label">Group Address <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="grAddr" type="text" readonly="readonly"
													id="grAddr" class="form-control" /> <span id="grAddrMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Assign Employee
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="employee" type="text" readonly="readonly"
													id="employee" class="form-control" /> <span
													id="employeeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Collection Day
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="cDay" type="text" readonly="readonly" id="cDay"
													class="form-control" /> <span id="cDayMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Collection Time
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="cTime" type="text" readonly="readonly"
													id="cTime" class="form-control" /> <span id="cTimeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Loan Purpose <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="loanPurpose" type="text" id="loanPurpose"
													class="form-control" /> <span id="purposeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="box-footer">
											<div class="row col-md-12">
												<button type="button"
													name="ctl00$ContentPlaceHolder1$btnSave"
													onclick="return validateGroupLoanApplication()"
													value="Save" id="button"
													class="btn btn-success pull-right margin-r-5">Save
												</button>
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
		<script src="dist/js/groupMasterUtilsJs.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	</form>
</body>

<!-- Dk/Admin/GroupLoanApplication.aspx EDB D 09:27:12 GMT -->
</html>
