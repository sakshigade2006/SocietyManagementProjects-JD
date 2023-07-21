<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	onload="ForPolicynoDropdown(); BranchNameInDropdown(); retrieveCodeAfterSoftDelete()"
	cz-shortcut-listen="true">
	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AddInvestment.aspx?IsModification=true" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->
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
			Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1',
					'form1', [], [], [], 90, 'ctl00');
			//]]>
		</script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Investment</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Investment</li>
				</ol>
			</section>
			<section class="content">
				<div id="ContentPlaceHolder1_idSearch" class="row">
					<div class="col-md-12">
						<div class="box box-warning">
							<div class="box-header with-border">
								<h3 class="box-title">Search Details</h3>
							</div>
							<form id="myForm" name="myForm" enctype="multipart/form-data">
								<input type="hidden" name="id123" id="id123">
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by
													Policy No.<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="policyno" id="policyno"
														onchange="retrivigInvestmentAjax();"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">--Select
															Policy No. --</option>
													</select>
												</div>
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
								<h3 class="box-title">Policy Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Policy Date <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="policyDate" type="date" id="policyDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
											<span id="ContentPlaceHolder1_RequiredFieldValidator5"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Policy Date</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Select Member <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="searchMemberCode" id="id" class="form-control"
												style="width: 100%;">
												<option selected="selected" value="">--Select--</option>
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
												<input name="dob" type="date" readonly="readonly" id="dob"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
										<div class="col-sm-3">
											<input name="age" type="text" value="0" maxlength="2"
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
										<label class="col-sm-4 control-label">Relative Details</label>
										<div class="col-sm-8">
											<input name="relativeName" type="text" readonly="readonly"
												id="relativeName" class="form-control"
												Placeholder="Enter Relative Name" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
											No <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="phoneno" type="text" maxlength="10"
												readonly="readonly" id="phoneno" class="form-control"
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
												placeholder="Enter Nominee Name" class="form-control" />
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
										<label for="drpNomineeRelation" class="col-sm-4 control-label">Relation</label>
										<div class="col-sm-8">
											<select name="nomineeRelation" id="nomineeRelation"
												class="form-control" style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
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
									<div class="form-group row">
										<label for="txtAddress" class="col-sm-4 control-label">Address
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<textarea name="address" rows="2" cols="20"
												readonly="readonly" id="address" class="form-control"
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
											<input name="district" type="text" readonly="readonly"
												id="district" class="form-control"
												Placeholder="Enter District" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator4"
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
												placeholder="Enter State" id="state" class="form-control" />
											<span id="ContentPlaceHolder1_RequiredFieldValidator11"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												State</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPin" class="col-sm-4 control-label">Pin
											Code <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="pin" type="text" maxlength="6"
												readonly="readonly" id="pin" class="form-control"
												Placeholder="Enter Pincode" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												PIN</span>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label for="ddlBranch" class="col-sm-4 control-label">Branch
											Name <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="branchName" id="branchName"
												class="form-control select2" style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="ddlBranch" class="col-sm-4 control-label">Operation
											Mode<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="modeOfOp" id="modeOfOp" class="form-control"
												style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="Single">Single</option>
												<option value="Joint">Joint</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtJointMemberName" class="col-sm-4 control-label">Joint
											Mem.Code</label>
										<div class="col-sm-8">
											<input name="jointCode" type="text" id="jointCode"
												placeholder="Joint Mem. Code" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtJointMemberName" class="col-sm-4 control-label">Joint
											Name</label>
										<div class="col-sm-8">
											<input name="jointName" type="text" id="jointName"
												placeholder="Enter Joint Name" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Maturity Date <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="mDate" type="date" readonly="readonly"
													id="mDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
											<span id="ContentPlaceHolder1_RequiredFieldValidator2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Maturity Date</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Scheme Type <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="schemeType" id="schemeType"
												class="form-control" style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="RD">RD</option>
												<option value="MIS">MIS</option>
												<option value="FD">FD</option>
												<option value="DRD">DRD</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Scheme Name <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="schemeName" id="schemeName"
												class="form-control" style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="GROW">GROW</option>
												<option value="GROW+">GROW +</option>
												<option value="ROYAL+">ROYAL+</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSchemeName" class="col-sm-4 control-label">Scheme
											Term</label>
										<div class="col-sm-8">
											<input name="term" type="text" readonly="readonly"
												placeholder="Enter Scheme Term" id="term"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Scheme Mode <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="mode" id="mode" class="form-control"
												style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="Mly.">Mly.</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">MIS Mode <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="misMode" id="misMode" class="form-control"
												disabled="disabled" style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="cash">Cash</option>
												<option value="online">Online</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Policy Amount <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="policyAmount" type="text" id="policyAmount"
												placeholder="Enter Policy Amount" class="form-control"
												autocomplete="off"
												style="color: Red; font-size: Large; font-weight: normal;" />
											<span
												id="ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Policy Amount</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Deposit Amount <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="totalDeposit" type="text" readonly="readonly"
												placeholder="Enter Deposite Amount" id="totalDeposit"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Maturiy Amount <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="maturityAmount" type="text" readonly="readonly"
												placeholder="Enter Maturity Amount" id="maturityAmount"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">MIS Interest <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="mISInterest" type="text" readonly="readonly"
												placeholder="Enter MIS Interest" id="mISInterest"
												class="form-control" />
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
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Payment Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
												<option value="Cash">Cash</option>
												<option value="Cheque">Cheque</option>
												<option value="Online">Online</option>
												<option value="NEFT">NEFT</option>
												<option value="SBAccount">SBAccount</option>
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
										<label class="col-sm-5 control-label">Advisor/Collector<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<input name="advisorCode" type="text" id="advisorCode"
												class="form-control"
												placeholder="Enter Advisor/Collector Code" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator6"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Code</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">Name <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<input name="advisorName" type="text" readonly="readonly"
												id="advisorName" class="form-control"
												placeholder="Enter Advisor/Collector Name" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator7"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">SMS Send <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<label class="switch"> <input id="chkisSms"
												type="checkbox" name="chkisSms" checked="checked" /> <span
												class="slider round"></span>
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="box-footer">
								<div class="row col-md-12">
									<input type="submit" name="Update" value="Update" id="update"
										class="btn btn-success pull-right margin-r-5" />
									</form>
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete"
										value="Delete" id="ContentPlaceHolder1_btnDelete"
										onclick="softDeleteIntegrationForInvestment();"
										class="btn btn-danger pull-right" /> <input type="submit"
										name="ctl00$ContentPlaceHolder1$btnPrint" value="Print"
										id="ContentPlaceHolder1_btnPrint"
										class="btn btn-info pull-right margin-r-5" />
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

	<script>
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				console.log(formData);
				
				if ($("#filetag").val() == "") {
		             alert("Select THe Photo !!!");
		             return;
		         }
		         
		         if ($("#secondfiletag").val() == "") {
		             alert("Select THe Signature !!!");
		             return;
		         }
		         
				$.ajax({
					url : "updateInvestmentRectification",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Updated Successfully")
						window.location.href = "InvestmentRectification";
					},
					error : function(error) {
						alert(error)
						console.log(error);
					}
				});
			});
		});
	</script>

	<script>
		var fileTag = document.getElementById("filetag"), preview = document
				.getElementById("preview"), secondfiletag = document
				.getElementById("secondfiletag"), secondpreview = document
				.getElementById("secondpreview");

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

	<div class="control-sidebar-bg"></div>

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
	<script src="dist/js/Rectification.js"></script>
	<script src="dist/js/MemberRectificationJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>