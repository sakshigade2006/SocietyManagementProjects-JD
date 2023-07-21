<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="selectCodeOfAdvisor(); selectCodeOfAdvisoridPosition(); getBranchName()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--     <form method="post" action="updateColectorPromotion"  modelAttribute="user" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Advisor Promotion</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Advisor Promotion</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Advisor Promotion</h3>
							</div>
							<div class="form-horizontal">
								<form id="myForm" name="myForm">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label for="collector" class="col-sm-4 control-label">Select
													Code<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="id" id="id"
														onchange="javascript:fetchBySelectedCode()"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value=""></option>
													</select> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorCollector"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Collector/Advisore Code</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="position" class="col-sm-4 control-label">Position
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="position" type="text" readonly="readonly"
														id="position" class="form-control"
														PlaceHolder="Enter Position" /> <span id="position"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Position</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtCollectorPosition"
													class="col-sm-4 control-label">Branch <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="branch" type="text" readonly="readonly"
														id="branch" class="form-control"
														PlaceHolder="Enter Branch" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Branch</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtSeniorCode" class="col-sm-4 control-label">Senior
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="seniorCode" type="text" readonly="readonly"
														id="seniorCode" class="form-control"
														PlaceHolder="Enter Senior Code" /> <span id="seniorCode"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Senior Code</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="seniorPosition" class="col-sm-4 control-label">Position
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="position1" type="text" readonly="readonly"
														id="position1" class="form-control"
														PlaceHolder="Enter Position" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorSeniorPosition"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Position</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtImmidiateSr" class="col-sm-4 control-label">Immidiate
													Sr. <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="immidiateSr" type="text" readonly="readonly"
														id="immidiateSr" class="form-control"
														PlaceHolder="Enter Immidiate Sr" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorImmidiateSr"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Immidiate Sr</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="immidiateSrPosition"
													class="col-sm-4 control-label">Sr. Position <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="srPosition" type="text" readonly="readonly"
														id="srPosition" class="form-control"
														PlaceHolder="Enter Position" /> <span
														id="immidiateSrPosition"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Position</span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="immidiateJunior" class="col-sm-4 control-label">Immidiate
													Jr.</label>
												<div class="col-sm-8">
													<input name="immidiateJr" type="text" readonly="readonly"
														id="immidiateJr" class="form-control"
														PlaceHolder="Enter Immidiate Junior" />
												</div>
											</div>
											<div class="form-group row">
												<label for="immidiateJuniorPosition"
													class="col-sm-4 control-label">Jr. Position </label>
												<div class="col-sm-8">
													<input name="jrPosition" type="text" readonly="readonly"
														id="jrPosition" class="form-control"
														PlaceHolder="Enter Position" />
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlBranch" class="col-sm-4 control-label">Select
													Branch <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="branchName" id="branchName"
														class="form-control" style="width: 100%;">
														<option value=""></option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlNewPosition" class="col-sm-4 control-label">New
													Position <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="selectPosition" id="selectPosition"
														class="form-control" style="width: 100%;">
														<option value=""></option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="newSenior" class="col-sm-4 control-label">New
													Senior <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="newSenior" type="text" id="newSenior"
														class="form-control" PlaceHolder="Enter New Senior" /> <span
														id="newSenior"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														New Senior</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="seniorName" class="col-sm-4 control-label">Senior
													Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="seniorName" type="text" readonly="readonly"
														id="seniorName" class="form-control"
														PlaceHolder="New Senior Name" /> <span id="seniorName"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Senior Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="seniorPosition1" class="col-sm-4 control-label">Senior
													Position <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="seniorPosition" type="text"
														readonly="readonly" id="seniorPosition"
														class="form-control"
														PlaceHolder="Enter New Senior Position" /> <span
														id="seniorPosition1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Senior Position</span>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<!-- <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew" onclick="this.disabled = true" value="New" id="ContentPlaceHolder1_btnNew" class="btn btn-danger pull-right" /> -->
											<input type="submit"
												name="ctl00$ContentPlaceHolder1$btnUpdate" value="Update"
												id="ContentPlaceHolder1_btnUpdate"
												class="btn btn-success pull-right margin-r-5" />
								</form>
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

	<script>
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				console.log(formData);

				$.ajax({
					url : "updateThroughSelectedCode",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Updated Successfully")
						window.location.href = "collectorPromotion";
					},
					error : function(error) {
						alert(error)
						console.log(error);
					}
				});
			});
		});
	</script>

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
	<script src="dist/js/AdvisorTeamCollection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- </form> -->
</body>
</html>