<jsp:include page="../header.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body
	onload="getTheValueInTheDropDown(); retrieveCodeAfterSoftDeleteSearchMemberCode()"
	class="skin-blue sidebar-mini"
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
		<script type="text/javascript">
			//<![CDATA[
			Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1',
					'form1', [], [], [], 90, 'ctl00');
			//]]>
		</script>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">


			<form id="fileUploadForm">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Edit SB Account</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Add Saving</li>
					</ol>
				</section>
				<section class="content">
					<div id="ContentPlaceHolder1_idSearch" class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by
													Account No.<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select
														onchange="getthevalueinthegiveninputFieldsfofSavingAcoount()"
														name="accountNo" id="accountNo"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">-- Select
															Account No. --</option>
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
									<h3 class="box-title">Saving Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-5 control-label">Opening Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="opDate" type="date" id="opDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Select by
												Member <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="searchMemberCode" id="searchMemberCode"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">--Select
														Member--</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-5 control-label">Member
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="memberName" type="text" readonly="readonly"
													id="memberName" class="form-control"
													Placeholder="Enter Member Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDOB" class="col-sm-5 control-label">DOB
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-4">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="dOB" type="text" readonly="readonly" id="dOB"
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
											<label class="col-sm-5 control-label">Relative
												Details</label>
											<div class="col-sm-7">
												<input name="relativeName" type="text" readonly="readonly"
													id="relativeName" class="form-control"
													Placeholder="Enter Relative Name &amp; Relation" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPhoneno" class="col-sm-5 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
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
											<label for="txtNomineeName" class="col-sm-5 control-label">Nominee
												Name</label>
											<div class="col-sm-7">
												<input name="nomineeName" type="text" id="nomineeName"
													placeholder="Enter Nominee Name" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-5 control-label">Nominee
												Age</label>
											<div class="col-sm-7">
												<input name="nage" type="text" maxlength="2" id="nage"
													placeholder="Enter Nominee Age" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpNomineeRelation"
												class="col-sm-5 control-label">Nominee Relation</label>
											<div class="col-sm-7">
												<select name="nRelation" id="nRelation" class="form-control"
													style="width: 100%;">
													<option>--Select Nominee Relation--</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAddress" class="col-sm-5 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
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
											<label for="txtDistrict" class="col-sm-5 control-label">District
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="district" type="text" readonly="readonly"
													id="district" class="form-control"
													Placeholder="Enter District" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													District</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="ddlBranch" class="col-sm-5 control-label">Branch
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="cSPName" id="cSPName" class="form-control"
													style="width: 100%;">
													<option>--Select Branch Name--</option>
												</select>
											</div>
										</div>

										<div class="form-group row">
											<label for="drpState" class="col-sm-5 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="state" type="text" readonly="readonly"
													placeholder="Enter State" id="state" class="form-control" />
												<span id="ContentPlaceHolder1_RequiredFieldValidator11"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													State</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPin" class="col-sm-5 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="pin" type="text" maxlength="6"
													readonly="readonly" id="pin" class="form-control"
													Placeholder="Enter Pincode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlBranch" class="col-sm-5 control-label">Mode
												Of Operation <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="modeOfOp" id="modeOfOp" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="">--Select--</option>
													<option value="Single">Single</option>
													<option value="Joint">Joint</option>
													<option value="Survivor">Survivor</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-5 control-label">Joint/Survivor Code</label>
											<div class="col-sm-7">
												<input name="jointCode" type="text" id="jointCode"
													placeholder="Enter Survivor code" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-5 control-label">Joint/Survivor Name</label>
											<div class="col-sm-7">
												<input name="jointName" type="text" readonly="readonly"
													placeholder="Enter Survivor Nmae" id="jointName"
													class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpJointMembersRelativeRelation"
												class="col-sm-5 control-label">Relation</label>
											<div class="col-sm-7">
												<select name="jointRelation" id="jointRelation"
													class="form-control" style="width: 100%;">
													<option value="">--Select--</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeName" class="col-sm-5 control-label">Select
												Plan <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="sBPlan" id="sBPlan" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="">--Select--</option>
													<option value="100">Basic SB Account</option>
													<option value="101">Standard SB Account</option>
													<option value="102">Advantage SB Account</option>
													<option value="103">Elite SB Account</option>
													<option value="104">Royal SB Account</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Opening Amount
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="openingAmount" type="text"
													placeholder="Enter Opening Amount" id="openingAmount"
													class="form-control" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Opening Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Advisor/Collector<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="advisorCode" type="text" id="advisorCode"
													class="form-control"
													placeholder="Enter Advisor/Collector Code" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
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
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Advisor/Collector Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtOpeningFees" class="col-sm-5 control-label">Opening
												Fees (if any)</label>
											<div class="col-sm-7">
												<input name="opFees" type="text" id="opFees"
													placeholder="Enter Opening Fees" class="form-control"
													onkeypress="return isNumberOnlyKey(this, event);" />
											</div>
										</div>
									</div>
								</div>
							</div>
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
													<option>--Select--</option>
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
											<label class="col-sm-4 control-label">Account Status
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input id="chkisactive"
													type="checkbox" name="chkisactive" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">SMS Send <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="chkisSms"
													type="checkbox" value="1" name="chkisSms" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Debit Card
												Issue <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input id="chkdebitcard"
													type="checkbox" name="chkdebitcard" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input
											onclick="softdeleteintegrationforSavingRectificationDelete()"
											type="button" name="ctl00$ContentPlaceHolder1$btnDelete"
											value="Delete" id="ContentPlaceHolder1_btnDelete"
											class="btn btn-danger pull-right" /> <input
											onclick="redirectThePageToNew()" type="button"
											name="ctl00$ContentPlaceHolder1$btnNew" value="New"
											id="ContentPlaceHolder1_btnNew"
											class="btn btn-info pull-right margin-r-5" /> <input
											type="button" name="submitBtnUpdate" value="Update"
											id="submitBtnUpdate"
											class="btn btn-success pull-right margin-r-5" />
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
												<img id="imageApplicant" class="profile-user-img"
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
												<img id="imageSignature" class="profile-user-img"
													style="height: 70px; width: 115px;" /> <input type="file"
													name="secondfiletag" id="secondfiletag" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Joint Photo</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<div class="text-center">
												<img id="imgJointPhoto" class="profile-user-img"
													style="height: 70px; width: 115px;" /> <input type="file"
													name="thirdfiletag" id="thirdfiletag" />
											</div>
										</div>
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
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<script type="text/javascript">
		function redirectThePageToNew() {

			window.location.href = "addSaving";

		}
	</script>

	<script type="text/javascript">
		//Soft delete integration for Saving Rectification Delete
		function softdeleteintegrationforSavingRectificationDelete() {
			var accountNo = document.getElementById("accountNo").value;
			var input = {
				"accountNo" : accountNo,
			}
			var myJson = JSON.stringify(input);
			//alert(id)
			if (!accountNo) {
				alert("Please select account Numbeer!!!!!")
			} else {
				$.ajax({
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(input),
					url : 'softDeleterectificationofsavingrectification',
					asynch : false,
					success : function(data) {
						alert("Soft Delete Successfully...!!!")
						window.location.href = "AddSavingbbb6";
					},
					error : function() {
						alert("Device control failed");
					}
				});
			}
		}
	</script>

	<script type="text/javascript">
		var fileTag = document.getElementById("filetag"), imageApplicant = document
				.getElementById("imageApplicant"), secondfiletag = document
				.getElementById("secondfiletag"), imageSignature = document
				.getElementById("imageSignature");
		thirdfiletag = document.getElementById("thirdfiletag"),
				imgJointPhoto = document.getElementById("imgJointPhoto");

		fileTag.addEventListener("change", function() {
			changeImage(this);
		});

		secondfiletag.addEventListener("change", function() {
			changeImage2(this);
		});

		thirdfiletag.addEventListener("change", function() {
			changeImage3(this);
		});

		function changeImage(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					imageApplicant.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage2(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					imageSignature.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage3(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					imgJointPhoto.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#submitBtnUpdate').click(function() {
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url : 'UpdatetheSavingREctification',
					type : 'POST',
					enctype : 'multipart/form-data',
					data : data,
					processData : false,
					contentType : false,
					cache : false,
					success : function(response) {
						alert(response)
						window.location.href = "AddSavingbbb6";
						console.log(response);
					},
					error : function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>

	<script>
		$(function() {
			//Initialize Select2 Elements
			$('.select2').select2();
			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
			//Datemask2 mm/dd/yyyy
			$('#datemask2').inputmask('mm/dd/yyyy', {
				'placeholder' : 'mm/dd/yyyy'
			})
			//Date range picker
			$('#reservation').daterangepicker()
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				locale : {
					format : 'MM/DD/YYYY hh:mm A'
				}
			})
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#daterange-btn span').html(
								start.format('DD/MM/YYYY') + ' - '
										+ end.format('DD/MM/YYYY'))
					})
			//Date picker
			$('#datepicker').datepicker({
				autoclose : true
			})
			//Money Euro
			$('[data-mask]').inputmask()

			//iCheck for checkbox and radio inputs
			$('span[type="checkbox"].minimal').iCheck({
				checkboxClass : 'icheckbox_minimal-blue',
				radioClass : 'iradio_minimal-blue'
			})

		})
	</script>

	<script type="text/javascript">
		//<![CDATA[
		var Page_Validators = new Array(
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"),
				document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"));
		//]]>
	</script>

	<script type="text/javascript">
		//<![CDATA[
		var ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode");
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.controltovalidate = "ContentPlaceHolder1_ddlSearchMemberCode";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.errormessage = "Select Member Code";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
		ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
		ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
		ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
		ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
		ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
		ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
		ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
		ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
		ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
		ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtDistrict";
		ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter District";
		ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
		ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_txtState";
		ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Select State";
		ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
		ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtPin";
		ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter PIN";
		ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount");
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.controltovalidate = "ContentPlaceHolder1_txtOpeningAmount";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.errormessage = "Enter Opening Amount";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
		ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtAdvisorCode";
		ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Advisor/Collector Code";
		ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
		var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"]
				: document
						.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
		ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtAdvisorName";
		ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
		ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Advisor/Collector Name";
		ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
		ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
		ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
		//]]>
	</script>

	<script type="text/javascript">
		//<![CDATA[

		var Page_ValidationActive = false;
		if (typeof (ValidatorOnLoad) == "function") {
			ValidatorOnLoad();
		}

		function ValidatorOnSubmit() {
			if (Page_ValidationActive) {
				return ValidatorCommonOnSubmit();
			} else {
				return true;
			}
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
		}

		document
				.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
		}

		document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
			Array
					.remove(
							Page_Validators,
							document
									.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
		}
		//]]>
	</script>
	
	</form>
</body>
</html>
