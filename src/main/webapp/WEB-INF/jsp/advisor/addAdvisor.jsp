<jsp:include page="../header.jsp" />
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
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload=" appendSelectMember(); RelativeRelationDropdown(); selectPosition(); branchNameList();">
	<!-- <form method="post" action="saveAdvisor" id="form1"
		modelAttribute="user"> -->
	
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
				<h1 id="ContentPlaceHolder1_IdHeader">Add Advisor/Collector</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Advisor/Collector</li>
				</ol>
			</section>
			<section class="content">
				<input name="memberId" type="hidden" id="memberId"
					class="form-control"
					data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
				<div class="row">
					<div class="col-md-10">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Advisor/Collector Details</h3>
							</div>
							<form id="fileUploadForm">
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
												<span id="joiningDate"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Registration Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="selectMember" id="selectMember"
													class="form-control select2" style="width: 100%;"
													onchange="fetchBySelectedMember()">
													<option selected="selected" value="">Select Member</option>
												</select> <span id="selectMember"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Member
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName" type="text" readonly="readonly"
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
													<input name="dob" type="text" readonly="readonly" id="dob"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text" maxlength="2"
													readonly="readonly" id="age" class="form-control"
													Placeholder="Enter Age"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator12"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative Name</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" readonly="readonly"
													id="relativeName" class="form-control"
													Placeholder="Enter Relative Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpRelativeRelation"
												class="col-sm-4 control-label">Relative Relation</label>
											<div class="col-sm-8">
												<input name="relativeRelation" type="text"
													readonly="readonly" id="relativeRelation"
													placeholder="Enter Relative Relation" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="mobileNo" type="text" maxlength="10"
													readonly="readonly" id="mobileNo" class="form-control"
													Placeholder="Enter Mobile No" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="mobileNo"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Name</label>
											<div class="col-sm-8">
												<input name="nomineeName" type="text" id="nomineeName"
													class="form-control" placeholder="Enter Nominee Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpNomineeRelation"
												class="col-sm-4 control-label">Relation</label>
											<div class="col-sm-8">
												<select name="relation" id="relation" class="form-control"
													style="width: 100%;">
													<option value="">Select Relation</option>
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
													<option value="">Select Branch Name</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Age</label>
											<div class="col-sm-8">
												<input name="nomineeAge" type="text" maxlength="2"
													placeholder="Enter Nominee Age" id="nomineeAge"
													class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20"
													readonly="readonly" id="address" class="form-control"
													Placeholder="Enter Addess">
												</textarea>
												<span id="address"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDistrict" class="col-sm-4 control-label">District
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="district" type="text" readonly="readonly"
													id="district" class="form-control"
													Placeholder="Enter District" /> <span id="district"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													District</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpState" class="col-sm-4 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="state" type="text" readonly="readonly"
													id="state" class="form-control" placeholder="Enter State" />
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
													readonly="readonly" id="pinCode" class="form-control"
													Placeholder="Enter Pincode" /> <span id="pinCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
											<div class="col-sm-8">
												<input name="occupation" type="text" readonly="readonly"
													id="occupation" class="form-control"
													Placeholder="Enter Occupation" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtEducation" class="col-sm-4 control-label">Education</label>
											<div class="col-sm-8">
												<input name="education" type="text" readonly="readonly"
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
											<img name="preview" id="preview" class="profile-user-img"
												style="height: 70px; width: 115px;" /> <input type="file"
												name="filetag" id="filetag" />
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
											<img name="secondpreview" id="secondpreview"
												class="profile-user-img" style="height: 70px; width: 115px;" />
											<input type="file" name="secondfiletag" id="secondfiletag" />
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
												class="form-control select2" style="width: 100%;">
												<option value="">Select Position</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtRelativeName" class="col-sm-4 control-label">Introducer
											Code <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="introducerCode" type="text" id="introducerCode"
												class="form-control" Placeholder="Enter Introducer Code" />
											<span id="introducerCode"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Introducer Code</span>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Introducer Name</label>
										<div class="col-sm-8">
											<input name="introducerName" type="text" readonly="readonly"
												id="introducerName" class="form-control"
												Placeholder="Enter Introducer Name" /> <span
												id="introducerName"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Introducer Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Position <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="position" type="text" readonly="readonly"
												placeholder="Enter Position" id="position"
												class="form-control" /> <span id="position"
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
											<input name="feesIfAny" type="text" id="feesIfAny"
												placeholder="Enter Fees" class="form-control" /> <span
												id="feesIfAny"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor Fees (if any)</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
												<option selected="selected" value="">Select Payment</option>
												<option value="Cash">Cash</option>
												<option value="Online">Online</option>
												<option value="Cheque">Cheque</option>
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
										<label class="col-sm-4 control-label">Advisor Status <strong
											style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<label class="switch"> <input id="advisorStatus"
												type="checkbox" name="advisorStatus" checked="checked" /> <span
												class="slider round"></span>
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
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnNew"
										value="New" id="ContentPlaceHolder1_btnNew"
										onclick="loadNewPage()"
										class="btn btn-info pull-right margin-r-5" /> <input
										type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
										value="Save" id="ContentPlaceHolder1_btnSave"
										class="btn btn-success pull-right margin-r-5" />
								</div>
							</div>
							</form>
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
	<script src="dist/js/AdvisorTeamCollection.js"></script>
	<script src="dist/js/RelativeRelation.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
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

<script>
		$(document).ready(function() {
			$('#ContentPlaceHolder1_btnSave').click(function() {
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'saveOperationForAddAdvisor',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response)
						window.location.href = "addAdvisor";
						//console.log(response);
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
</script>

<script>
    function loadNewPage() {
      // Perform page redirect
      window.location.href = "addAdvisor";
    }
</script>

<script type="text/javascript">
function branchNameList() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function (data) {

			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name +"</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}
</script>

	<!-- </form> -->
</body>
</html>