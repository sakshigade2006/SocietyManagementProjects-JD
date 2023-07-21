<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const ageId = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("age").value = ageId; // set the calculated age in the age input field
	 }
</script>
<body class="skin-blue sidebar-mini"
	onload="getAllIDAfterSoftDeleteOperation(); SelectMemberAfterSoftDelete(); BranchNameInDropdown()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" 
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AddAdvisor.aspx?IsModification=true"
		onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->
	<div
		style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Advisor/Collector</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Advisor/Collector</li>
				</ol>
			</section>
			<section class="content">
				<div id="ContentPlaceHolder1_idSearch" class="row">
					<div class="col-md-12">
						<div class="box box-warning">
							<div class="box-header with-border">
								<h3 class="box-title">Search Details</h3>
								<div class="box-tools pull-right">
									<!-- <button type="button" name="BtnEdit" id="BtnEdit"
										onclick="enableDisabledFieldOfRectification();">
										<img src="dist/img/pen_paper_2-32.png" />
									</button> -->
								</div>
							</div>
							<div class="form-horizontal">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select by Code<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="id" onchange="searchById();" id="id"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">--select--</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<form id="myForm" name="myForm">
					<input id="id133" name="id133" type="hidden">
					<div class="row">
						<div class="col-md-10">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Advisor/Collector Details</h3>
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
													<input name="joiningDate" type="date" id="joiningDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Registration Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="selectMember" id="selectMember"
													class="form-control" style="width: 100%;">
													<option value="" selected="selected">--Select--</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Member
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName" type="text" 
													id="memberName" class="form-control"
													Placeholder="Enter Member Name" />
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
													<input name="dob" type="date" onchange="calculateAge()"
														id="dob" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text" maxlength="2"
													id="age" class="form-control"
													Placeholder="Enter Age" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator12"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative Name</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" 
													id="relativeName" class="form-control"
													Placeholder="Enter Relative Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpRelativeRelation"
												class="col-sm-4 control-label">Relative Relation</label>
											<div class="col-sm-8">

												<input name="relativeRelation" type="text"
													id="relativeRelation"
													Placeholder="Enter Relative Relation" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="mobileNo" type="text" maxlength="10"
													id="mobileNo" class="form-control"
													Placeholder="Enter Mobile No" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator8"
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
										<div class="form-group row">
											<label for="drpNomineeRelation"
												class="col-sm-4 control-label">Relation</label>
											<div class="col-sm-8">
												<select name="relation" id="relation" class="form-control"
													style="width: 100%;">
													<option value="Brother">Brother</option>
													<option value="Daughter">Daughter</option>
													<option value="Father">Father</option>
													<option value="Friend">Friend</option>
													<option value="Husband">Husband</option>
													<option value="Mother">Mother</option>
													<option value="Sister">Sister</option>
													<option value="Son">Son</option>
													<option value="Wife">Wife</option>
													<option value="Daughter in Law">Daughter in Law</option>
													<option value="Brother in Law">Brother in Law</option>
													<option value="Grand Daughter">Grand Daughter</option>
													<option value="Grand Son">Grand Son</option>
													<option value="Other">Other</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="branchName" id="branchName"
													class="form-control" style="width: 100%;">
													<option value="" selected="selected">--Select--</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Age</label>
											<div class="col-sm-8">
												<input name="nomineeAge" type="text" maxlength="2"
													id="nomineeAge" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20"
													id="address" class="form-control"
													Placeholder="Enter Addess">
</textarea>
												<span id="ContentPlaceHolder1_RequiredFieldValidator3"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDistrict" class="col-sm-4 control-label">District
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="district" type="text" 
													id="district" class="form-control"
													Placeholder="Enter District" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													District</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpState" class="col-sm-4 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="state" type="text"
													Placeholder="Enter State" id="state" class="form-control" />
												<span id="state"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													State</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pinCode" type="text" maxlength="6"
													id="pinCode" class="form-control"
													Placeholder="Enter Pincode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
											<div class="col-sm-8">
												<input name="occupation" type="text" 
													id="occupation" class="form-control"
													Placeholder="Enter Occupation" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtEducation" class="col-sm-4 control-label">Education</label>
											<div class="col-sm-8">
												<input name="education" type="text" 
													id="education" class="form-control"
													Placeholder="Enter Education" />
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
                                    			<img name="preview" id="preview" class="profile-user-img" src="data:image/png;base64,${aadharPhoto}"
                                    			  style="height:70px;width:115px;" />
                                     			<input type="file"  name="filetag" id="filetag" />
                                			</div>
                            			</div>
                        			</div>
                    			</div>
							</div>
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Signature</h3>
								</div>
								<div class="box-body">
                        			<div class="col-md-3">
                            			<div class="form-group">
                                			<div class="text-center">
                                    			<img name="secondpreview" id="secondpreview" class="profile-user-img"  src="data:image/png;base64,${aadharPhoto}"
                                    			style="height:70px;width:115px;" />
                                     			<input type="file"  name="secondfiletag" id="secondfiletag" />
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
									<h3 class="box-title">Introducer Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Position
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectPosition" id="selectPosition"
													class="form-control" style="width: 100%;">
													<option value="1">1 - Advisor</option>
													<option value="2">2 - Sales Officer</option>
													<option value="3">3 - Development Officer</option>
													<option value="4">4 - Sr. Development Officer</option>
													<option value="5">5 - BSM</option>
													<option value="6">6 - ASM</option>
													<option value="7">7 - RSM</option>
													<option value="8">8 - STATE HEAD</option>
													<option value="9">9 - ZONAL HEAD</option>
													<option value="10">10 - DIRECTOR SALES</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Introducer
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="introducerCode" type="text" onchange=""
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="introducerCode" class="form-control"
													Placeholder="Enter Introducer Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator6"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Code</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Introducer Name</label>
											<div class="col-sm-8">
												<input name="introducerName" type="text" 
													id="introducerName" class="form-control"
													Placeholder="Enter Introducer Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator10"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Position <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="position" type="text" 
													Placeholder="Enter Position" id="position"
													class="form-control" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Position</span>
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
											<label class="col-sm-4 control-label">Fees (if any) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="feesIfAny" type="text" value="0" id="feesIfAny"
													class="form-control"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator7"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Advisor Fees (if any)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymentBy" onchange="" id="paymentBy"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<textarea name="remarks" rows="2" cols="20" id="remarks"
													class="form-control" Placeholder="Enter Remarks if any">
</textarea>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Advisor Status
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input id="advisorStatus"
													type="checkbox" name="advisorStatus" checked="checked" />
													<span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">SMS Send <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="smsSend"
													type="checkbox" name="smsSend" checked="checked" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button"
											name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete"
											onclick="softDeleteForAdvisorRectification();"
											id="ContentPlaceHolder1_btnDelete"
											class="btn btn-danger pull-right" /> 
									    <input type="button" name="ctl00$ContentPlaceHolder1$btnNew"  onclick="redirectThePageToAdvisorRectification()"
											value="New" id="ContentPlaceHolder1_btnNew" class="btn btn-info pull-right margin-r-5" /> 
										<input type="button" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Update"
											onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;A&quot;, &quot;&quot;, false, false))"
											id="updatebutton"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
						</div>
					</div>
			</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>
	
<script type="text/javascript">
        function redirectThePageToAdvisorRectification(){
        	window.location.href = "addAdvisor";
		}
</script>

<script>

      var fileTag = document.getElementById("filetag"),
          preview = document.getElementById("preview"),
          secondfiletag = document.getElementById("secondfiletag"),
          secondpreview = document.getElementById("secondpreview");
          
      fileTag.addEventListener("change", function() {
        changeImage(this);
      });
      
      secondfiletag.addEventListener("change", function() {
          changeImage2(this);
        });
      
      function changeImage(input) {
        var reader;

        if (input.files && input.files[0]) {
          reader = new FileReader();

          reader.onload = function(e) {
            preview.setAttribute('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }
      
      function changeImage2(input) {
          var reader;

          if (input.files && input.files[0]) {
            reader = new FileReader();

            reader.onload = function(e) {
            	secondpreview.setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
          }
        }
      
</script>

<script type="text/javascript">
function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const age = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("ageId").value = age; // set the calculated age in the age input field
	 }
 </script>

	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- InputMask -->
	<!-- <script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script> -->
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
	<script src="dist/js/rectificationSection.js"></script>
	<script src="dist/js/MemberRectificationJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- </form> -->
</body>
</html>