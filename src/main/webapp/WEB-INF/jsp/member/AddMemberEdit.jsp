<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.RelativeRelationMaster"%>
<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   String status = (String)request.getAttribute("status");
   if(status!=null &&  status.equals("saved")){
   	%>
<script>
   alert("Added Successfully");
</script>

<script>
function check()
{
    var mobile = document.getElementById('introMCode');
    var message = document.getElementById('message');
    var goodColor = "#0C6";
    var badColor = "#FF9B37";
  
    if(mobile.value.length!=10){
       
        mobile.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "required 10 digits, match requested format!"
    }}
</script>
<%
   } 
   %>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="AddMemberAjax(); RelativeRelationDropdown(); NomineeRelationDropdown();shareAllFromList();branchNameList(); ">
	
	<script type="text/javascript">
      function calculateAge() {
       const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
       const age = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
       document.getElementById("ageId").value = age; // set the calculated age in the age input field
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

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Client</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Member</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Client Details</h3>
							</div>
							<form id="fileUploadForm">
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div id="ContentPlaceHolder1_idverify" class="form-group row">
												<label class="col-sm-4 control-label" style="color: green;">Client
													NO<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="clientNo" " type="text" maxlength="6"
														id="clientNo" class="form-control" readonly="readonly" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Registration
													Date <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input " name="registrationDate" type="date"
															id="registrationDate" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
													<span id="ContentPlaceHolder1_RequiredFieldValidator5"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Registration Date</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Client Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-3">
													<select name="memberNamePrefix" id="memberNamePrefix"
														class="form-control" style="width: 100%;">
														<option value="Mr.">Mr.</option>
														<option value="Ms.">Ms.</option>
														<option value="Mrs.">Mrs.</option>
														<option value="Smt.">Smt.</option>
														<option value="Md.">Md.</option>
													</select>
												</div>
												<div class="col-sm-5">
													<input name="memberName" type="text" id="memberName"
														class="form-control" Placeholder="Enter Member Name" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator2"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Applicant Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtRelativeName" class="col-sm-4 control-label">Relative
													Name</label>
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
														<option value="">Select Relative Relation</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpGender" class="col-sm-4 control-label">Gender</label>
												<div class="col-sm-8">
													<select name="gender" id="ContentPlaceHolder1_ddlGender"
														class="form-control" style="width: 100%;">
														<option>Select The Gender</option>
														<option value="Male">Male</option>
														<option value="Female">Female</option>
													</select>
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
															onkeypress="" id="dob" class="form-control"
															data-inputmask="" data-mask="" />
													</div>
												</div>
												<div class="col-sm-3">
													<input name="age" type="text" maxlength="2" id="ageId"
														class="form-control" Placeholder="Enter Age" onkeypress=""
														autocomplete="off" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator12"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Age</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Martial Status</label>
												<div class="col-sm-8">
													<select name="maritalStatus" id="maritalStatus"
														class="form-control" style="width: 100%;">
														<option value="">Select Martial Status</option>
														<option value="Married">Married</option>
														<option value="Unmarried">Unmarried</option>
														<option value="Widow">Widow</option>
														<option value="Divorce">Divorce</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAddress" class="col-sm-4 control-label">Address
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<textarea name="address"
														id="ContentPlaceHolder1_txtAddress" class="form-control"
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
														id="ContentPlaceHolder1_txtDistrict" class="form-control"
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
													<select value="" name="state" id="state"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">--Select--</option>
														<option value="ANDRA PRADESH">ANDRA PRADESH</option>
														<option value="ARUNACHAL PRADESH">ARUNACHAL
															PRADESH</option>
														<option value="ASSAM">ASSAM</option>
														<option value="BIHAR">BIHAR</option>
														<option value="CHHATTISGARH">CHHATTISGARH</option>
														<option value="DELHI">DELHI</option>
														<option value="GUJARAT">GUJARAT</option>
														<option value="HARYANA">HARYANA</option>
														<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
														<option value="JAMMU AND KASHMIR">JAMMU AND
															KASHMIR</option>
														<option value="JHARKHAND">JHARKHAND</option>
														<option value="KARNATAKA">KARNATAKA</option>
														<option value="KERALA">KERALA</option>
														<option value="MADYA PRADESH">MADYA PRADESH</option>
														<option value="MAHARASHTRA">MAHARASHTRA</option>
														<option value="MANIPUR">MANIPUR</option>
														<option value="MEGHALAYA">MEGHALAYA</option>
														<option value="MIZORAM">MIZORAM</option>
														<option value="NAGALAND">NAGALAND</option>
														<option value="ODISSA">ODISSA</option>
														<option value="PUNJAB">PUNJAB</option>
														<option value="RAJASTHAN">RAJASTHAN</option>
														<option value="SIKKIM">SIKKIM</option>
														<option value="TAMIL NADU">TAMIL NADU</option>
														<option value="TRIPURA">TRIPURA</option>
														<option value="UTTAR PRADESH">UTTAR PRADESH</option>
														<option value="UTTARAKHAND">UTTARAKHAND</option>
														<option value="WEST BENGAL">WEST BENGAL</option>
													</select> <span id="ContentPlaceHolder1_RequiredFieldValidator11"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														State</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Branch Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="branchName" id="branchName1"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Branch Name</option>
													</select>
												</div>
											</div>
											<h3 style="font-weight: bold;">Internet Banking</h3>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Login
													ID <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="loginID" type="text" maxlength="6"
														id="loginID" class="form-control"
														Placeholder="Enter Login ID" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Password
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="password" type="text" id="password"
														class="form-control" Placeholder="Enter Password" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Member
													Income <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="memberIncome" type="text" id="memberIncome"
														class="form-control" Placeholder="Enter Member Income" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Pin
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="pinCode" type="text" maxlength="6"
														id="ContentPlaceHolder1_txtPin" class="form-control"
														Placeholder="Enter Pincode" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator4"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PIN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Aadhar
													No. <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="aadharNo" type="text" maxlength="12"
														id="ContentPlaceHolder1_txtAadharNo" class="form-control"
														Placeholder="Enter Aadhar No."
														onkeypress="return isNumberOnlyKey(this, event);"
														autocomplete="off" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator9"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Aadhar No</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">PAN
													No.</label>
												<div class="col-sm-6">
													<input name="pan" type="text" maxlength="10"
														id="ContentPlaceHolder1_txtPAN" class="form-control"
														Placeholder="Enter PAN No." autocomplete="off" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator15"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PAN No</span>
													<div id="ContentPlaceHolder1_Div_PanPart"
														style="display: none;">&nbsp;</div>
												</div>
												<div class="col-sm-2">
													<input type="submit"
														name="ctl00$ContentPlaceHolder1$btnPANverify"
														value="Verify"
														onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnPANverify&quot;, &quot;&quot;, true, &quot;P&quot;, &quot;&quot;, false, false))"
														id="ContentPlaceHolder1_btnPANverify"
														class="btn btn-danger verify pull-right" disabled />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Voter
													No.</label>
												<div class="col-sm-6">
													<input name="voterNo" type="text" maxlength="10"
														id="ContentPlaceHolder1_txtVoterNo" class="form-control"
														Placeholder="Enter Voter No." autocomplete="off" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator16"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Voter No</span>
													<div id="ContentPlaceHolder1_Div_VoterPart"
														style="display: none;">&nbsp;</div>
												</div>
												<div class="col-sm-2">
													<input type="submit"
														name="ctl00$ContentPlaceHolder1$btnvoterverify"
														value="Verify"
														onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnvoterverify&quot;, &quot;&quot;, true, &quot;K&quot;, &quot;&quot;, false, false))"
														id="ContentPlaceHolder1_btnvoterverify"
														class="btn btn-danger verify pull-right" disabled />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
													No <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="phoneno" type="text" maxlength="10"
														id="ContentPlaceHolder1_txtPhoneno" class="form-control"
														Placeholder="Enter Mobile No" autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator8"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Phone No</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEmailid" class="col-sm-4 control-label">Email
													ID </label>
												<div class="col-sm-8">
													<input name="emailid" type="text"
														id="ContentPlaceHolder1_txtEmailid" class="form-control"
														Placeholder="Enter Email ID" /> <span
														id="ContentPlaceHolder1_Reg1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Invalid
														Email ID</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
												<div class="col-sm-8">
													<input name="occupation" type="text"
														id="ContentPlaceHolder1_txtOccupation"
														class="form-control" Placeholder="Enter Occupation" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEducation" class="col-sm-4 control-label">Education</label>
												<div class="col-sm-8">
													<input name="education" type="text"
														id="ContentPlaceHolder1_txtEducation" class="form-control"
														Placeholder="Enter Education" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtIntroMCode" class="col-sm-4 control-label">Client
													Purpose<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="clientPurpose" id="clientPurpose" type="text"
														class="form-control" Placeholder="Enter Client Purpose" />
													<span id="message"></span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtIntroMCode" class="col-sm-4 control-label">Passport
													Number<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="passportNumber" id="passportNumber"
														type="text" class="form-control"
														Placeholder="Enter Passport Number" /> <span id="message"></span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Caste Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="casteName" id="casteName"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Caste Name</option>
														<option value="A">A</option>

													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Religion Name
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="religionName" id="religionName"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Religion Name</option>
														<option value="A">A</option>

													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Category Name
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="categoryName" id="categoryName"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Category Name</option>
														<option value="A">A</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Risk Category
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="riskCategory" id="riskCategory"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Risk Category</option>
														<option value="A">A</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Nationality <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="nationality" id="nationality"
														class="form-control select2" style="width: 100%;">
														<option value="">Select Nationality Name</option>
														<option value="A">A</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtIntroMName" class="col-sm-4 control-label">Photo(with
													aadhar)</label>
												<div class="col-sm-8">
													<img id="preview" name="preview" class="profile-user-img"
														src="data:image/png;base64,${aadharPhoto}"
														style="width: 110px;" /> <input type="file"
														name="filetag" id="filetag" />
													<!--                                     onchange="uploadFile('aadharPhoto','addMember')"  -->
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
						<div class="box box-danger">
							<div class="box-header with-border">
								<h3 class="box-title">Nominee Details</h3>
							</div>
							<div class="form-horizontal">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="nomineeName" type="text"
													id="ContentPlaceHolder1_txtNomineeName"
													class="form-control" Placeholder="Enter Nominee Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator7"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Nominee Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpNomineeRelation"
												class="col-sm-4 control-label">Nominee Relation</label>
											<div class="col-sm-8">
												<select name="nRelation" id="nRelation" class="form-control"
													style="width: 100%;">
													<option>Select Nominee Relation</option>
													<option value="SISTER">SISTER</option>
													<option value="BROTHER">BROTHER</option>
													<option value="FATHER">FATHER</option>
													<option value="MOTHER">MOTHER</option>
													<option value="SON">SON</option>
													<option value="DAUGTHER">DAUGTHER</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeAddress" class="col-sm-4 control-label">Nominee
												Address</label>
											<div class="col-sm-8">
												<input name="nomineeAddress" type="text"
													id="ContentPlaceHolder1_txtNomineeAddress"
													class="form-control" Placeholder="Enter Nominee Address" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeKycNumber"
												class="col-sm-4 control-label">Nominee KYC No.</label>
											<div class="col-sm-8">
												<input name="nomineeKycNumber" type="text"
													id="ContentPlaceHolder1_txtNomineeKycNumber"
													class="form-control" Placeholder="Enter Nominee KYC No." />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtNomineeMobileNo"
												class="col-sm-4 control-label">Nominee Mobile No.</label>
											<div class="col-sm-8">
												<input name="nomineeMobileNo" type="text" maxlength="10"
													id="ContentPlaceHolder1_txtNomineeMobileNo"
													class="form-control" Placeholder="Enter Nominee Mobile No." />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeAge" class="col-sm-4 control-label">Nominee
												Age.</label>
											<div class="col-sm-8">
												<input name="nomineeAge" type="text" maxlength="2"
													id="ContentPlaceHolder1_txtNomineeAge" class="form-control"
													Placeholder="Enter Nominee Age" />
											</div>
										</div>
										<div class="form-group row">
											<label for="TxtNomineePanNo" class="col-sm-4 control-label">Nominee
												Pan No.</label>
											<div class="col-sm-8">
												<input name="nomineePanNo" type="text" maxlength="10"
													id="ContentPlaceHolder1_TxtNomineePanNo"
													class="form-control" Placeholder="Enter Nominee Pan No." />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpNomineeKycType" class="col-sm-4 control-label">Nominee
												KYC Type</label>
											<div class="col-sm-8">
												<select name="nomineeKycType" id="nomineeKycType"
													class="form-control" style="width: 100%;">
													<option>Select Nominee KYC Type</option>
													<option value="Online">Online</option>
													<option value="Offline">Offline</option>
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
					<div class="col-md-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Fees/Setting Details</h3>
							</div>
							<div class="form-horizontal">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtMemberJoiningFess"
												class="col-sm-4 control-label">Client Fees (if any)
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberJoiningFess" type="text"
													id="ContentPlaceHolder1_txtMemberJoiningFess"
													class="form-control" placeholder="Enter Member Fees" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator6"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member Fees (if any)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtShareAllotmentFrom"
												class="col-sm-4 control-label">Share Alloted From <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="shareAllotedfrm" id="shareAllotedfrm1"
													class="form-control select2" style="width: 100%;">
													<option value="">Select Share Alloted From</option>

												</select> <span id="ContentPlaceHolder1_RequiredFieldValidator13"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Alloted From</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNoOfShared" class="col-sm-4 control-label">No.
												of Share <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="noOfShared" type="text" onchange=""
													id="ContentPlaceHolder1_txtNoOfShared" class="form-control"
													placeholder="Enter No. of Share" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator10"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													No of Share</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Share Amount <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="enterShareAmount" type="text"
													id="ContentPlaceHolder1_txtEnterShareAmount"
													class="form-control" placeholder="Enter Share Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator14"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Share Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymode" id="paymode" class="form-control"
													style="width: 100%;">
													<option>Select Payment By</option>
													<option value="Cash">Cash</option>
													<option value="Online">Online</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<textarea name="remarks" rows="2" cols="20"
													id="ContentPlaceHolder1_txtRemarks" class="form-control"
													Placeholder="Enter Remarks if any">
            </textarea>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Client Status </label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="ContentPlaceHolder1_chkisactive" type="checkbox"
													name="memberStatusIsActive" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Mobile Banking
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="ContentPlaceHolder1_chkmobile" type="checkbox"
													name="chkmobile" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Net Banking </label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="ContentPlaceHolder1_chknetBanking" type="checkbox"
													name="chknetBanking" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">SMS Send </label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="ContentPlaceHolder1_chkisSms" type="checkbox"
													name="chkisSms" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Is Minor </label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="ContentPlaceHolder1_chkMinor" type="checkbox"
													name="chkMinor" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnPrint"
											value="Print" id="ContentPlaceHolder1_btnPrint"
											class="btn btn-info pull-right margin-r-5"
											onclick="printTable()" /> <input type="button"
											name="ctl00$ContentPlaceHolder1$btnSave" value="Save"
											onclick="" id="ContentPlaceHolder1_btnSave"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
		</div>
		</section>
	</div>
	<!-- /.content-wrapper -->
	<%-- <jsp:include page="../footer.jsp" /> --%>
	<script src="dist/js/AddMember.js"></script>
	<script src="dist/js/RelativeRelation.js"></script>
	<script src="dist/js/memberSection.js"></script>

	<script>
      var fileTag = document.getElementById("filetag"),
          preview = document.getElementById("preview");
          
      fileTag.addEventListener("change", function() {
        changeImage(this);
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
   </script>
   
   <script>
      function printTable() {
          const table = document.querySelector('table');
          const printWindow = window.open('', '', 'height=500,width=800');
          printWindow.document.write('<html><head><title>Print Table</title>');
          printWindow.document.write('</head><body>');
          printWindow.document.write(table.outerHTML);
          printWindow.document.write('</body></html>');
          printWindow.document.close();
          printWindow.focus();
          printWindow.print();
        }
   </script>

	<script>
        function uploadFile(str,module) {
        	//alert(str);
        	var fileInput;
        	if(str==='aadharPhoto'){
        		 fileInput = document.getElementById('filetag');
        	}
            
            var file = fileInput.files[0];
            var formData = new FormData();
            formData.append('file', file);//file object
            formData.append('type', str);//logo or signature
            formData.append('module', module);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/api/upload', true);
            xhr.onload = function() {
                if (xhr.status === 200) {
                    alert('File uploaded successfully');
                } else {
                	alert('File upload failed');
                }
            };
            xhr.send(formData);
        }
    </script>
    
	<script>
    function shareAllFromList(){
    const shareAllotedfrm = document.getElementById("shareAllotedfrm1");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.memberName);
				option.innerHTML = value.memberName
				shareAllotedfrm.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
	}
    
    function branchNameList(){
    	const selectBranchName = document.getElementById("branchName1");
    	$.ajax({
    		type: "get",
    		contentType: "application/json",
    		url: 'getAllBranch',
    		asynch: false,
    		success: function(data) {
    			data.forEach(value => {
    				//alert(value.name)
    				const option = document.createElement('option')
    				option.setAttribute('value', value.id);
    				option.innerHTML = value.name
    				selectBranchName.appendChild(option)
    			})
    		},
    		error: function() {
    			alert("Device control failed");
    		}
    	});
    }    
    </script>