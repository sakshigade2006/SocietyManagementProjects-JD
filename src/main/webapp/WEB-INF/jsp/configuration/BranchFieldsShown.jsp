<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body onload="" class="skin-blue sidebar-mini"
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
				<h1 id="ContentPlaceHolder1_IdHeader">Add Branch</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Branch</li>
					<li class="active">view / edit</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Branch Details</h3>
							</div>
							<div class="box-body">
								<c:forEach var="row" items="${list}">
									<input type="hidden" name="id" id="id" value="${row.id}" />
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Code <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="code" type="text" value="${row.branchCode}"
													maxlength="10" id="code" class="form-control"
													placeholder="Enter Branch Code" autocomplete="off" disabled />
												<span id="branchCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="name" type="text" id="name" value="${row.name}"
													class="form-control" placeholder="Enter Branch Name"
													autocomplete="off" disabled /> <span id="branchNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Branch Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Opening Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<input name="openingDate" type="date" id="openingDate"
														value="${row.openingDate}" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" disabled />
												</div>
												<span id="openingDateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Opening Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20" id="address"
													class="form-control" placeholder="Enter Branch Address"
													autocomplete="off" disabled>${row.address}
                                    </textarea>
												<span id="addressMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtPin" class="col-sm-4 control-label">PIN
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pin" type="text" maxlength="7" id="pin"
													value="${row.pin}" class="form-control"
													onkeypress="return isNumberOnlyKey(this, event);" disabled />
												<span id="pinMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Pin</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlState" class="col-sm-4 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="state" id="state" class="form-control select2"
													style="width: 100%;" disabled>
													<option value="${row.state}">--Select--</option>
													<option name="ANDRA PRADESH"
														<c:if test="${row.state=='ANDRA PRADESH'}">selected="selected"</c:if>>ANDRA
														PRADESH</option>
													<option name="ARUNACHAL PRADESH"
														<c:if test="${row.state=='ARUNACHAL PRADESH'}">selected="selected"</c:if>>ARUNACHAL
														PRADESH</option>
													<option name="ASSAM"
														<c:if test="${row.state=='ASSAM'}">selected="selected"</c:if>>ASSAM</option>
													<option name="BIHAR"
														<c:if test="${row.state=='BIHAR'}">selected="selected"</c:if>>BIHAR</option>
													<option name="CHHATTISGARH"
														<c:if test="${row.state=='CHHATTISGARH'}">selected="selected"</c:if>>CHHATTISGARH</option>
													<option name="DELHI"
														<c:if test="${row.state=='DELHI'}">selected="selected"</c:if>>DELHI</option>
													<option name="GUJARAT"
														<c:if test="${row.state=='GUJARAT'}">selected="selected"</c:if>>GUJARAT</option>
													<option name="HARYANA"
														<c:if test="${row.state=='HARYANA'}">selected="selected"</c:if>>HARYANA</option>
													<option name="HIMACHAL PRADESH"
														<c:if test="${row.state=='HIMACHAL PRADESH'}">selected="selected"</c:if>>HIMACHAL
														PRADESH</option>
													<option name="JAMMU AND KASHMIR"
														<c:if test="${row.state=='JAMMU AND KASHMIR'}">selected="selected"</c:if>>JAMMU
														AND KASHMIR</option>
													<option name="JHARKHAND"
														<c:if test="${row.state=='JHARKHAND'}">selected="selected"</c:if>>JHARKHAND</option>
													<option name="KARNATAKA"
														<c:if test="${row.state=='KARNATAKA'}">selected="selected"</c:if>>KARNATAKA</option>
													<option name="KERALA"
														<c:if test="${row.state=='KERALA'}">selected="selected"</c:if>>KERALA</option>
													<option name="MADYA PRADESH"
														<c:if test="${row.state=='MADYA PRADESH'}">selected="selected"</c:if>>MADYA
														PRADESH</option>
													<option name="MAHARASHTRA"
														<c:if test="${row.state=='MAHARASHTRA'}">selected="selected"</c:if>>MAHARASHTRA</option>
													<option name="MANIPUR"
														<c:if test="${row.state=='MANIPUR'}">selected="selected"</c:if>>MANIPUR</option>
													<option name="MEGHALAYA"
														<c:if test="${row.state=='MEGHALAYA'}">selected="selected"</c:if>>MEGHALAYA</option>
													<option name="MIZORAM"
														<c:if test="${row.state=='MIZORAM'}">selected="selected"</c:if>>MIZORAM</option>
													<option name="NAGALAND"
														<c:if test="${row.state=='NAGALAND'}">selected="selected"</c:if>>NAGALAND</option>
													<option name="ODISSA"
														<c:if test="${row.state=='ODISSA'}">selected="selected"</c:if>>ODISSA</option>
													<option name="PUNJAB"
														<c:if test="${row.state=='PUNJAB'}">selected="selected"</c:if>>PUNJAB</option>
													<option name="RAJASTHAN"
														<c:if test="${row.state=='RAJASTHAN'}">selected="selected"</c:if>>RAJASTHAN</option>
													<option name="SIKKIM"
														<c:if test="${row.state=='SIKKIM'}">selected="selected"</c:if>>SIKKIM</option>
													<option name="TAMIL NADU"
														<c:if test="${row.state=='TAMIL NADU'}">selected="selected"</c:if>>TAMIL
														NADU</option>
													<option name="TRIPURA"
														<c:if test="${row.state=='TRIPURA'}">selected="selected"</c:if>>TRIPURA</option>
													<option name="UTTAR PRADESH"
														<c:if test="${row.state=='UTTAR PRADESH'}">selected="selected"</c:if>>UTTAR
														PRADESH</option>
													<option name="UTTARAKHAND"
														<c:if test="${row.state=='UTTARAKHAND'}">selected="selected"</c:if>>UTTARAKHAND</option>
													<option name="WEST BENGAL"
														<c:if test="${row.state=='WEST BENGAL'}">selected="selected"</c:if>>WEST
														BENGAL</option>
												</select> <span id="stateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													State</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Contact Person
											</label>
											<div class="col-sm-8">
												<input name="contactPerson" type="text" id="contactPerson"
													value="${row.contactPerson}" class="form-control"
													placeholder="Contact Person Name" autocomplete="off"
													disabled /> <span id="contactPersonMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Person Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Contact No.</label>
											<div class="col-sm-8">
												<input name="contactNo" type="text" maxlength="10"
													id="contactNo" value="${row.contactNo}"
													class="form-control"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" disabled /> <span id="contactNoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Contact No</span>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="box-footer">
								<div class="row col-md-12">

									<button type="button" name="editBtn" value="Edit"
										onclick="editBranchMaster();" id="editBtn"
										class="btn btn-success pull-right margin-r-5">Edit</button>

									<button type="button" name="updateBtn" value="update"
										onclick="updateBranchMasterById();" id="updateBtn"
										class="btn btn-success pull-right margin-r-5" disabled>Update</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- Branch Master Ajax -->
		<script src="dist/js/config.js"></script>
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
		<!-- Branch Master Ajax -->
		<script src="dist/js/config.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	</div>
</body>
</html>