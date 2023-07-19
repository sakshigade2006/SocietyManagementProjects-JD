<jsp:include page="../header.jsp"></jsp:include>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="addemployeeBranch();RelativeRelationDropdownforaddemployee();">
	<form method="post" action="saveEmployee" name="validationform"
		modelAttribute="emp" id="form1">
		
<script type="text/javascript">
   function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const age = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("ageId").value = age; // set the calculated age in the age input field
	 }
</script>

<script>
function validationFeilds() {
	  const DOJ= document.getElementById("doj"); 
	  const branch= document.getElementById("cspName"); 
	  const employename= document.getElementById("empName");
	  const dob= document.getElementById("dob");
	  const age= document.getElementById("age");
	  const phone= document.getElementById("phoneNo");
	  const address= document.getElementById("address");
	  const pan= document.getElementById("pan");
	  const designantion= document.getElementById("designation");
	  const department= document.getElementById("department");
	  const salary= document.getElementById("salary");
	  const fees= document.getElementById("advisorFees");
	  const PayMode= document.getElementById("payMode");
	  const empstatus= document.getElementById("isActive");
	  
	  if (DOJ.value === '') { 
		    var span = document.getElementById("DOJspan"); 
		    span.textContent = "Enter date of Joining."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (branch.value =="") { 
		    var span = document.getElementById("cspNamespan"); 
		    span.textContent = "Select the Branch."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (employename.value === '') { 
		    var span = document.getElementById("empNamespan"); 
		    span.textContent = "Enter Employee Name."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (dob.value === '') { 
		    var span = document.getElementById("DOBspan"); 
		    span.textContent = "Select Date of Birth."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (age.value === '') { 
		    var span = document.getElementById("agespan"); 
		    span.textContent = "Enter the Age."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (phone.value === '') { 
		    var span = document.getElementById("phoneNospan"); 
		    span.textContent = "Enter the Mobile Number."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (address.value === '') { 
		    var span = document.getElementById("addressspan"); 
		    span.textContent = "Enter Address."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (pan.value === '') { 
		    var span = document.getElementById("panspan"); 
		    span.textContent = "Enter Pan Number."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (designantion.value =="") { 
		    var span = document.getElementById("designationspan"); 
		    span.textContent = "Please Select Designation."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (department.value =="") { 
		    var span = document.getElementById("departmentspan"); 
		    span.textContent = "Please Select Desgination."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (salary.value === '') { 
		    var span = document.getElementById("salaryspan"); 
		    span.textContent = "Enter Salary."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (fees.value === '') { 
		    var span = document.getElementById("advisorFeesspan"); 
		    span.textContent = "Enter Fees."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (empstatus.value === '') { 
		    var span = document.getElementById("isActivespan"); 
		    span.textContent = " select Employe Status."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (PayMode.value === '') { 
		    var span = document.getElementById("payModespan"); 
		    span.textContent = " Please Select Paymode."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (status === true) { 
		     document.validationform.submit(); 
		     return true; 
		    } else { 
		     return false; 
		    } 
}
</script>

		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			
			<form method="post" action="saveEmployee" modelAttribute="emp"
				name="FormaddEmployee">
				<!-- Content Wrapper. Contains page content -->
				<div class="content-wrapper" style="min-height: 1105.75px;">

					<section class="content-header">
						<h1 id="ContentPlaceHolder1_IdHeader">Add Employee</h1>
						<ol class="breadcrumb">
							<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li class="active">Employee</li>
						</ol>
					</section>
					<section class="content">
						<div class="row">
							<div class="col-md-10">
								<div class="box box-info">
									<div class="box-header with-border">
										<h3 class="box-title">Employee Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Joining Date <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="doj" type="date" id="doj"
															class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
														<!--                                         <input name="DOJ" type="text" value="" id="DOJ" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" /> -->
														<span id="DOJspan"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Branch Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="cspName" id="cspName"
														class="form-control select2" style="width: 100%;">
														<option value="">Select</option>
													</select> <span id="cspNamespan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtRelativeName" class="col-sm-4 control-label">Employee
													Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="empName" type="text" id="empName"
														class="form-control" Placeholder="Enter Employee Name" />
													<span id="empNamespan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtDOB" class="col-sm-4 control-label">DOB
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-5">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="dob" type="date" value=""
															onchange="calculateAge()" id="dob" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" /> <span id="DOBspan"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
													</div>
												</div>
												<div class="col-sm-3">
													<input name="age" type="text" value="0" maxlength="2"
														id="ageId" class="form-control" Placeholder="Enter Age"
														autocomplete="off" /> <span id="agespan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Relative Name</label>
												<div class="col-sm-8">
													<input name="relativeName" type="text" id="relativeName"
														class="form-control" Placeholder="Enter Relative Name" />
												</div>
											</div>
											<div class="form-group row">
												<label for="drpRelativeRelation"
													class="col-sm-4 control-label">Relative Relation</label>
												<div class="col-sm-8">
													<select name="relativeRelation" id="relativeRelation"
														class="form-control" style="width: 100%;">
														<option value="">--Select--</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
													No <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="phoneNo" type="text" maxlength="10"
														id="phoneNo" class="form-control"
														Placeholder="Enter Mobile No" autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="phoneNospan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Phone No</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
													Name</label>
												<div class="col-sm-8">
													<input name="nomineeName" type="text" id="nomineeName"
														class="form-control" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
													Age</label>
												<div class="col-sm-8">
													<input name="nAge" type="text" maxlength="2" id="nAge"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="drpNomineeRelation"
													class="col-sm-4 control-label">Relation</label>
												<div class="col-sm-8">
													<select name="nRelation" id="nRelation"
														class="form-control" style="width: 100%;">
														<option>Select</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAddress" class="col-sm-4 control-label">Address
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<textarea name="address" rows="2" cols="20" id="address"
														class="form-control" Placeholder="Enter Addess">
</textarea>
													<span id="addressspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Address</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtDistrict" class="col-sm-4 control-label">PAN
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="pan" type="text" maxlength="10" id="pan"
														class="form-control" Placeholder="Enter PAN" /> <span
														id="panspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PAN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpState" class="col-sm-4 control-label">Bank
													A/C</label>
												<div class="col-sm-8">
													<input name="bankAc" type="text" maxlength="20" id="bankAc"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">IFSC
													Code</label>
												<div class="col-sm-8">
													<input name="ifsc" type="text" maxlength="16" id="ifsc"
														class="form-control" Placeholder="Enter IFSC Code" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtOccupation" class="col-sm-4 control-label">Exp.
													Details</label>
												<div class="col-sm-8">
													<input name="expDetails" type="text" id="expDetails"
														class="form-control" Placeholder="Enter Exp. Details" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEducation" class="col-sm-4 control-label">Qualification</label>
												<div class="col-sm-8">
													<input name="education" type="text" id="education"
														class="form-control" Placeholder="Enter Qualification" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Designation Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Designation <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="designation" id="designation"
														class="form-control" style="width: 100%;">
														<option value="">Select</option>
														<option value="101">Officer</option>
														<option value="102">Collector</option>
														<option value="103">Cashier</option>
														<option value="104">Test</option>
														<option value="105">Manager</option>
														<option value="106">Advisor</option>
														<option value="107">Supervisor</option>
														<option value="108">Asst Manager</option>
														<option value="109">General Manager</option>
														<option value="110">HR Manager</option>
														<option value="111">Chairman</option>
														<option value="112">COLLECTOR</option>
														<option value="113">COLLECTOR</option>
														<option value="114">COLLECTOR</option>
														<option value="115">OFFICE BOY</option>
														<option value="116">Cashier</option>
													</select> <span id="designationspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Department <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="department" id="department"
														class="form-control" style="width: 100%;">
														<option value="">Select</option>
														<option value="1001">Field Officer</option>
														<option value="1002">Accounts</option>
														<option value="1003">Sales</option>
														<option value="1004">Loan</option>
														<option value="1005">Cash</option>
														<option value="1006">General</option>
														<option value="1007">Collection</option>
														<option value="1008">HR</option>
														<option value="1009">Marketing</option>
														<option value="1010">FIELD OFFICER</option>
														<option value="1011">FIELD OFFICER</option>
														<option value="1012">Sales PERSON</option>
														<option value="1013">Accounts</option>
													</select> <span id="departmentspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Salary <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="salary" type="text" id="salary"
														class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);"
														autocomplete="off" /> <span id="salaryspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Net Salary</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">SB Account No.</label>
												<div class="col-sm-8">
													<input name="bankAccount" type="text" id="bankAccount"
														class="form-control" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10">
								<div class="box box-info">
									<div class="box-header with-border">
										<h3 class="box-title">Payment Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Fees (if any)
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorFees" type="text" value=""
														id="advisorFees" class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="advisorFeesspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor Fees (if any)</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
													By <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="payMode"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="payMode" class="form-control" style="width: 100%;">
														<option value="">Select</option>
														<option value="Cash">Cash</option>
														<option value="Cheque">Cheque</option>
														<option value="Online">Online</option>
														<option value="NEFT">NEFT</option>
													</select> <span id="payModespan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor Fees (if any)</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Remarks</label>
												<div class="col-sm-8">
													<textarea name="remarks" rows="2" cols="20" id="remarks"
														class="form-control" Placeholder="Enter Remarks if any">
</textarea>
													<span id="remarksspan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Emp. Status <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<label class="switch"> <input id="isActive"
														type="checkbox" name="isActive" checked="checked" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input type="submit" name="ctl00$ContentPlaceHolder1$btnNew"
												value="New" id="ContentPlaceHolder1_btnNew"
												class="btn btn-info pull-right margin-r-5" />
											<button type="submit"
												name="ctl00$ContentPlaceHolder1$btnSave" value="Save"
												onclick="return validationFeilds();"
												id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5">Save</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				
				<!-- /.content-wrapper -->
				<%-- <jsp:include page="../footer.jsp" /> --%>

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
				<script src="dist/js/EmpolyeeSection.js"></script>
				<!-- Select2 -->
				<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
				
			</form>