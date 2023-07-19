<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="java.util.List"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveEmployeeMasterData"
		name="saveEmployeeMasterData" modelAttribute="saveEmployeeMasterData"
		id="form1" enctype="multipart/form-data">
		<%
   String status = (String)request.getAttribute("status");
   if(status!=null &&  status.equals("success")){
   	%>
		<script>
   alert("Saved Successfully");
</script>
		<%
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
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Employee Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Employee Master</li>
					</ol>
				</section>
				<%
				List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
				%>
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
											<label class="col-sm-4 control-label">Emp.Type <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="empType" id="empType" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="">Select Emp
														Type</option>
													<option value="New">New</option>
													<option value="Existing">Existing</option>
												</select> <span id="empTypeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Joining Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="DOJ" type="date" value="01/08/2022" id=DOJ
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="DOJMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="cspName" id="cspName" class="form-control"
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
												</select> <span id="cspNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Employee
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName" type="text" id="memberName"
													class="form-control" Placeholder="Enter Employee Name" />
												<span id="memberNameMsg"
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
													<input name="DOB" type="date" value="01/08/2022" id="DOB"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="DOBMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text" value="0" maxlength="2"
													id="age" class="form-control" Placeholder="Enter Age"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" /> <span id="ageMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
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
													<option value="--Select--">--Select--</option>
													<option value="Father">Father</option>
													<option value="Mother">Mother</option>
													<option value="Son">Son</option>
													<option value="Daughter">Daughter</option>
													<option value="Spouse(Husband/Wife)">Spouse(Husband/Wife)</option>
													<option value="Husband">Husband</option>
													<option value="Wife">Wife</option>
													<option value="Brother">Brother</option>
													<option value="Sister">Sister</option>
													<option value="Daughter in Law">Daughter in Law</option>
													<option value="Brother in Law">Brother in Law</option>
													<option value="Grand Daughter">Grand Daughter</option>
													<option value="Grand Son">Grand Son</option>
													<option value="Other">Other</option>
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
													id="phoneNoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>
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
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Email ID</label>
											<div class="col-sm-8">
												<input name="emailID" type="text" maxlength="50"
													id="emailID" class="form-control"
													Placeholder="Enter Email ID" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20" id="address"
													class="form-control" Placeholder="Enter Addess"></textarea>
												<span id="addressMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">PAN <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="pan" type="text" maxlength="10" id="pan"
													class="form-control" Placeholder="Enter PAN" /> <span
													id="panMsg"
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
											<label class="col-sm-4 control-label">Designation <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="designation" id="designation"
													class="form-control" style="width: 100%;">
													<option value="">Select Designation</option>
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
												</select> <span id="designationMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Department <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="department" id="department"
													class="form-control" style="width: 100%;">
													<option value="">Select Department</option>
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
												</select> <span id="departmentMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Photo</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<div class="text-center">
												<img id="ContentPlaceHolder1_imgphoto"
													class="profile-user-img" src="dist/img/photo.jpg"
													style="width: 110px;" />
											</div>
										</div>
										<div class="form-group">
											<div class="text-center">
												<input type="file"
													name="ctl00$ContentPlaceHolder1$filePhoto"
													id="ContentPlaceHolder1_filePhoto" />
												<script type="text/javascript">
                                       function readURL2(input) {
                                           if (input.files && input.files[0]) {
                                               var reader = new FileReader();
                                       
                                               reader.onload = function (e) {
                                                   $('#ContentPlaceHolder1_imgphoto').attr('src', e.target.result);
                                               }
                                       
                                               reader.readAsDataURL(input.files[0]);
                                           }
                                       }
                                       $("#ContentPlaceHolder1_filePhoto").change(function () {
                                           readURL2(this);  
                                       });
                                    </script>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="ContentPlaceHolder1_uppnlQualification">
							<div class="col-md-10">
								<div class="box box-warning">
									<div class="box-header with-border">
										<h3 class="box-title">Qualification Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-8">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Degree </label>
												<div class="col-sm-8">
													<input name="degree" type="text" id="degree"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">College</label>
												<div class="col-sm-8">
													<input name="college" type="text" id="college"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Year of Pass</label>
												<div class="col-sm-8">
													<input name="year" type="text" id="year"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Grade</label>
												<div class="col-sm-4">
													<input name="grade" type="text" id="grade"
														class="form-control" />
												</div>
												<!-- <div class="col-sm-4">
                                       <input type="submit" name="ctl00$ContentPlaceHolder1$btnAddQua" value="Add Queue" id="ContentPlaceHolder1_btnAddQua" class="btn btn-success pull-right" />
                                    </div> -->
											</div>
										</div>
									</div>
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div id="ContentPlaceHolder1_pnlData"
											style="height: 100px; overflow-y: scroll;">
											<div></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="ContentPlaceHolder1_uppnlexperience">
							<div class="col-md-10">
								<div class="box box-warning">
									<div class="box-header with-border">
										<h3 class="box-title">Experience Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-8">
											<div class="form-group row">
												<label class="col-sm-4 control-label">CompanyName </label>
												<div class="col-sm-8">
													<input name="comName" type="text" id="comName"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Post</label>
												<div class="col-sm-8">
													<input name="post" type="text" id="post"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Tot. Exp</label>
												<div class="col-sm-8">
													<input name="exp" type="text" id="exp" class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Salary</label>
												<div class="col-sm-4">
													<input name="lastSalary" type="text" id="lastSalary"
														class="form-control" />
												</div>
												<!-- <div class="col-sm-4">
                                       <input type="submit" name="ctl00$ContentPlaceHolder1$btnAddExp" value="Add Queue" id="ContentPlaceHolder1_btnAddExp" class="btn btn-success pull-right" />
                                    </div> -->
											</div>
										</div>
									</div>
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div id="ContentPlaceHolder1_Panel1"
											style="height: 100px; overflow-y: scroll;">
											<div></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10">
							<div class="box box-info">
								<div class="box-body"></div>
								<div class="box-footer">
									<div class="row col-md-12">
										<!-- <button type="button" name="new" value="New" id="new" class="btn btn-info pull-right margin-r-5">New</button> -->
										<button type="button" name="save" value="Save" id="save"
											class="btn btn-success pull-right margin-r-5"
											onclick="return validateEmployeeMaster()">Save</button>
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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"));
         //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
         ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtDOJ";
         ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Registration Date";
         ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtMemberName";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Employee Name";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
         ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
         ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
         ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
         ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
         ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
         ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
         ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
         ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
         ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtPAN";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter PAN";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         //]]>
      </script>
	</form>
</body>
<!-- Dk/Admin/EmployeeMaster.aspx EDB D 09:27:22 GMT -->
</html>