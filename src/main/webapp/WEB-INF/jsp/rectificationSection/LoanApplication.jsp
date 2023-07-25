<jsp:include page="../header.jsp" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js">
  </script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="skin-blue sidebar-mini"
	onload="getRetrieveDataInSelectByLoanID(); GetSearchMemberInDropdownFromDp(); GetLoanPlanNameInDropdownFromDp();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/LoanApplication.aspx?IsModification=true" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Loan Application</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Loan Details</li>
				</ol>
			</section>

			<!-- <form  id="myForm" name="myForm" modelAttribute="user"  enctype="multipart/form-data"> -->

			<form id="fileUploadForm">
				<input type="hidden" name="id123" id="id123">
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
													LoanID <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="id" id="id" class="form-control select2"
														onchange="RetrieveLoanMasterId();" style="width: 100%;">
														<option>Select Loan ID</option>
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
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Loan Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="loanDate" type="date" id="loanDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Search Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="memberName"
													onchange="javascript:DataretrivalfromSearchMember()"
													id="memberName" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value="">Select Member
														Name</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative
												Details <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" readonly="readonly"
													id="relativeRelation" class="form-control"
													PlaceHolder="Enter Relative Name &amp; Relation" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorBranchCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Relative Name & Relation</span>
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
											<label for="txtSMSStatus" class="col-sm-4 control-label">SMS
												Status </label>
											<div class="col-sm-8">
												<input name="status" type="text" readonly="readonly"
													id="status" class="form-control"
													PlaceHolder="Enter SMS Status" />

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
											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pinCode" type="text" maxlength="6"
													readonly="readonly" id="pinCode" class="form-control"
													Placeholder="Enter Pincode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
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
													<option selected="selected" value="">Select Branch
														Name</option>
												</select>
											</div>
										</div>
										<div id="ContentPlaceHolder1_updtpnl">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Loan Plan Name
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="loanPlanName"
														onchange="javascript:DataretrivalfromLoanPlanName()"
														id="loanPlanName" class="form-control"
														style="width: 100%;">
														<option selected="selected" value="">Select Loan
															Plan Name</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLoanROI" class="col-sm-4 control-label">Loan
													Type <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="loanType" type="text" readonly="readonly"
														id="loanType" class="form-control"
														PlaceHolder="Enter Loan Type" />
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlPlanTerm" class="col-sm-4 control-label">Plan
													Term <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="planTerm"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPlanTerm\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="planTerm" class="form-control" style="width: 100%;">
														<option selected="selected" value="">Select Loan
															Plan Term</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlLoanMode" class="col-sm-4 control-label">Loan
													Mode <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-3">
													<input name="mode" type="text" readonly="readonly"
														id="mode" class="form-control" PlaceHolder="Enter Mode" />
													<span id="ContentPlaceHolder1_RequiredFieldValidator1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Mode</span>
												</div>
												<label class="col-sm-2 control-label">ROI(%)</label>
												<div class="col-sm-3">
													<input name="loanROI" type="text" readonly="readonly"
														id="loanROI" class="form-control"
														PlaceHolder="Enter Loan ROI" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorLoanROI"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan ROI</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Loan Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="loanAmount" type="text"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtLoanAmount\&#39;,\&#39;\&#39;)&#39;, 0)"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberKey(this, event);"
														id="loanAmount" class="form-control"
														PlaceHolder="Enter Loan Amount" onpaste="return false"
														autocomplete="off" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorLoanAmount"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtROIType" class="col-sm-4 control-label">ROI
													Type <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="roitype" type="text" readonly="readonly"
														id="roitype" class="form-control"
														PlaceHolder="Enter ROI Type" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtROIType"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														ROI Type</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEMIAmount" class="col-sm-4 control-label">EMI
													Amount <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="emiAmount" type="text" readonly="readonly"
														id="emiAmount" class="form-control"
														PlaceHolder="Enter EMI Amount" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														EMI Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtLoanPurpose" class="col-sm-4 control-label">Loan
												Purpose <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="loanPurpose" type="text" id="loanPurpose"
													class="form-control" PlaceHolder="Enter Loan Purpose" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Purpose</span>
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
													class="profile-user-img"
													style="height: 70px; width: 115px;" /> <input type="file"
													name="secondfiletag" id="secondfiletag" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="ContentPlaceHolder1_upnlLAD"></div>
					<div class="row">
						<div class="col-md-10">
							<div class="box box-success">
								<div class="box-body">
									<div id="ContentPlaceHolder1_upguardian">
										<div class="col-md-6">
											<div class="form-group row text-center">
												<div class="box-header with-border">
													<h3 class="box-title">Guarantor Details</h3>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtGuarantorMember2"
													class="col-sm-4 control-label">Member Code </label>
												<div class="col-sm-8">
													<select name="searchMemberCode"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPlanTerm\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="searchMemberCode" class="form-control"
														style="width: 100%;">
														<option selected="selected" value="">Select
															Member Code</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtMembersRelativesNameRelationGu"
													class="col-sm-4 control-label">Guarantor Name </label>
												<div class="col-sm-8">
													<input name="guarantorName" type="text" readonly="readonly"
														id="guarantorName" class="form-control"
														placeholder="Enter Nmae" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAddressGuarantor"
													class="col-sm-4 control-label">Address </label>
												<div class="col-sm-8">
													<input name="addressGuarantor" type="text"
														readonly="readonly" id="addressGuarantor"
														class="form-control" Placeholder="Enter Address" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPincodeGuarantor"
													class="col-sm-4 control-label">Pin Code </label>
												<div class="col-sm-8">
													<input name="pincodeGuarantor" type="text"
														readonly="readonly" id="pincodeGuarantor"
														class="form-control" PlaceHolder="Enter Pin Code" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtphone" class="col-sm-4 control-label">Phone
												</label>
												<div class="col-sm-8">
													<input name="phone" type="text" readonly="readonly"
														id="phone" class="form-control" Placeholder="Enter Phone" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Security Type
												</label>
												<div class="col-sm-8">
													<select name="securityType" id="securityType"
														class="form-control" style="width: 100%;">
														<option value="Select">Select</option>
														<option value="Loan Against Cheque">Loan Against
															Cheque</option>
														<option value="Loan Against Gold">Loan Against
															Gold</option>
														<option value="Loan Against Silver">Loan Against
															Silver</option>
														<option value="Loan Against Deposit">Loan Against
															Deposit</option>
														<option value="Any Others">Any Others</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div id="ContentPlaceHolder1_upcoap">
										<div class="col-md-6">
											<div class="form-group row text-center">
												<div class="box-header with-border">
													<h3 class="box-title">Co-Applicant Details</h3>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtCoApplicantName"
													class="col-sm-4 control-label">Member Code </label>
												<div class="col-sm-8">
													<select name="coApplicantCode"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPlanTerm\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="coApplicantCode" class="form-control"
														style="width: 100%;">
														<option selected="selected" value="">Select
															Member Code</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtMemberRelativesName"
													class="col-sm-4 control-label">Name</label>
												<div class="col-sm-8">
													<input name="memberRelativesName" type="text"
														readonly="readonly" id="memberRelativesName"
														class="form-control" Placeholder="Enter Co-Applicant Name" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAddressco" class="col-sm-4 control-label">Address
												</label>
												<div class="col-sm-8">
													<input name="addressco" type="text" readonly="readonly"
														id="addressco" class="form-control"
														Placeholder="Enter Address" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPincodeco" class="col-sm-4 control-label">Pincode
												</label>
												<div class="col-sm-8">
													<input name="pincodeco" type="text" readonly="readonly"
														id="pincodeco" class="form-control"
														Placeholder="Enter Pincode" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneco" class="col-sm-4 control-label">Phone</label>
												<div class="col-sm-8">
													<input name="phoneco" type="text" readonly="readonly"
														id="phoneco" class="form-control"
														Placeholder="Enter Phone" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtSecurityDetails"
													class="col-sm-4 control-label">Security Details</label>
												<div class="col-sm-8">
													<input name="securityDetails" type="text"
														id="securityDetails" class="form-control"
														Placeholder="Enter Security Details" />
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
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Deduction Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_uppnlde">
											<div class="form-group row">
												<label for="txtProcessingFee" class="col-sm-4 control-label">Processing
													Fee<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="processingFee" type="text" readonly="readonly"
														id="processingFee" class="form-control"
														placeholder="Enter Processing Fee" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLegalAmt" class="col-sm-4 control-label">Legal
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="legalAmt" type="text" readonly="readonly"
														id="legalAmt" class="form-control"
														placeholder="Enter Legal Amount" />
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnkad">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Advisor/Collector
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorCode" type="text"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtAdvisorCode\&#39;,\&#39;\&#39;)&#39;, 0)"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
														id="advisorCode" class="form-control"
														placeholder="Enter Advisor/Collector Code" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator6"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Code</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_upduc">
											<div class="form-group row">
												<label for="txtGST" class="col-sm-4 control-label">GST<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="gst" type="text" readonly="readonly" id="gst"
														class="form-control" placeholder="Enter GST" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="insuranceAmt" type="text" readonly="readonly"
														id="insuranceAmt" class="form-control"
														placeholder="Enter Insurance Amount" />
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnladname">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Advisor/Collector
													Name <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorName" type="text" readonly="readonly"
														id="advisorName" class="form-control"
														placeholder="Enter Advisor/Collector Name" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator7"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Name</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button"
											name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete"
											onclick="softDeleteForSelectByLoanID();"
											id="ContentPlaceHolder1_btnDelete"
											class="btn btn-danger pull-right" /> <input type="submit"
											name="ctl00$ContentPlaceHolder1$btnNew" value="New"
											id="ContentPlaceHolder1_btnNew"
											onclick="redirectThePageToLoan();"
											class="btn btn-info pull-right margin-r-5" /> <input
											type="button" name="updatebtn" value="Update" id="updatebtn"
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

	<script>
		$(document).ready(function() {
			$('#updatebtn').click(function() {
				
				if ($("#id123").val() == "") {
		             alert("Select the particular loan Id");
		             return;
		         }
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'updateLoanMaster',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response)
						window.location.href = "loanRectification";
						//console.log(response);
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>

	<script type="text/javascript">
        
        function redirectThePageToLoan(){
        	
        	window.location.href = "LoanApplication";
			
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
	<script src="dist/js/rectificationSection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/LoanApplication.aspx?IsModification=true EDB D 09:27:15 GMT -->
</html>