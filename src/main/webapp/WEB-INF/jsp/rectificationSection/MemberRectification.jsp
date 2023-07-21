<jsp:include page="../header.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="retrieveCodeAfterSoftDelete(); ShareAllotedFromInDropdown(); BranchNameInDropdown(); DepositAccNoInDropdown()">
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
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Member</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Member</li>
				</ol>
			</section>
			<form id="myForm" name="myForm" enctype="multipart/form-data">
				<section class="content">
					<input type="hidden" id="id123" name="id123">
					<div id="" class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by Code<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="id"
														onchange="getDataBySearchCode()" id="id"
														class="form-control select2" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
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
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Member Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group">
												<label class="col-sm-4 control-label">Registration
													Date <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="registrationDate" type="date" value=""
															id="registrationDate" class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
													<span id="registrationDateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Registration Date</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Member Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-3">
													<select name="memberNamePrefix" id="memberNamePrefix"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="Mr.">Mr.</option>
														<option value="Ms.">Ms.</option>
														<option value="Mrs.">Mrs.</option>
														<option value="Smt.">Smt.</option>
														<option value="Md.">Md.</option>
													</select>
												</div>
												<div class="col-sm-5">
													<input name="memberName" type="text" value=""
														id="memberName" class="form-control"
														Placeholder="Enter Member Name" /> <span
														id="memberNameMsg"
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
														<option value="--Select--" selected="selected">--Select--</option>
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
												<label for="drpGender" class="col-sm-4 control-label">Gender</label>
												<div class="col-sm-8">
													<select name="gender" id="gender" class="form-control"
														style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
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
														<input name="dob" type="date" id="dob"
															class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
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
												<label class="col-sm-4 control-label">Martial Status</label>
												<div class="col-sm-8">
													<select name="maritalStatus" id="maritalStatus"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="--Select--">--Select--</option>
														<option value="Married">Married</option>
														<option value="Separated">Separated</option>
														<option value="Divorced">Divorced</option>
														<option value="Widow">Widow</option>
														<option value="Unmarried">Unmarried</option>
														<option value="Single">Single</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAddress" class="col-sm-4 control-label">Address
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<textarea name="address" rows="2" cols="20" id="address"
														class="form-control" Placeholder="Enter Addess"> </textarea>
													<span id="addressMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Address</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtDistrict" class="col-sm-4 control-label">District
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="district" type="text" value="" id="district"
														class="form-control" Placeholder="Enter District" /> <span
														id="districtMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														District</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpState" class="col-sm-4 control-label">State
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="state" id="state"
														class="form-control select2" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
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
													</select> <span id="stateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														State</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Branch Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="branchName" id="branchName"
														class="form-control select2" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Pin
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="pinCode" type="text" value="" maxlength="6"
														id="pinCode" class="form-control"
														Placeholder="Enter Pincode" /> <span id="pinCodeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PIN</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Aadhar
													No. <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="aadharNo" type="text" value="" maxlength="12"
														id="aadharNo" class="form-control"
														Placeholder="Enter Aadhar No."
														onkeypress="return isNumberOnlyKey(this, event);"
														autocomplete="off" /> <span id="aadharNoMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Aadhar No</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">PAN
													No.</label>
												<div class="col-sm-6">
													<input name="pan" type="text" value="" maxlength="10"
														id="pan" class="form-control" Placeholder="Enter PAN No."
														autocomplete="off" /> <span id="panMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														PAN No</span>
													<div id="ContentPlaceHolder1_Div_PanPart"
														style="display: none;">&nbsp;</div>
												</div>
												<div class="col-sm-2"></div>
											</div>
											<div class="form-group row">
												<label for="txtPin" class="col-sm-4 control-label">Voter
													No.</label>
												<div class="col-sm-6">
													<input name="voterNo" type="text" maxlength="10"
														id="voterNo" class="form-control"
														Placeholder="Enter Voter No." autocomplete="off" /> <span
														id="voterNoMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Voter No</span>
													<div id="ContentPlaceHolder1_Div_VoterPart"
														style="display: none;">&nbsp;</div>
												</div>
												<div class="col-sm-2"></div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
													No <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="phoneno" type="text" value="" maxlength="10"
														id="phoneno" class="form-control"
														Placeholder="Enter Mobile No" autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="phonenoMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Phone No</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEmailid" class="col-sm-4 control-label">Email
													ID </label>
												<div class="col-sm-8">
													<input name="emailid" type="text" value="" id="emailid"
														class="form-control" Placeholder="Enter Email ID" /> <span
														id="emailidMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Invalid
														Email ID</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
												<div class="col-sm-8">
													<input name="occupation" type="text" id="occupation"
														class="form-control" Placeholder="Enter Occupation" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtEducation" class="col-sm-4 control-label">Education</label>
												<div class="col-sm-8">
													<input name="education" type="text" id="education"
														class="form-control" Placeholder="Enter Education" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtIntroMCode" class="col-sm-4 control-label">Intro.M
													Code</label>
												<div class="col-sm-8">
													<input name="introMCode" type="text" onchange=""
														onkeypress="" id="introMCode" class="form-control"
														Placeholder="Enter Intro Member Code" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtIntroMName" class="col-sm-4 control-label">Intro.M
													Name</label>
												<div class="col-sm-8">
													<input name="introMName" type="text" readonly="readonly"
														id="introMName" class="form-control"
														Placeholder="Enter Intro Member Name" />
												</div>
											</div>
											<div class="form-group row">
                                    			<label for="txtIntroMName" class="col-sm-4 control-label">Photo(with 
                                    			aadhar)</label>
                                    			<div class="col-sm-8">
                                       				<img id="preview" name="preview" class="profile-user-img" 
                                       				src="data:image/png;base64,${aadharPhoto}" style="height:70px;width:115px;" />
                                       			<input type="file" name="filetag" id="filetag" />
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
													<input name="nomineeName" type="text" id="nomineeName"
														class="form-control" Placeholder="Enter Nominee Name" />
													<span id="nomineeNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Nominee Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpNomineeRelation"
													class="col-sm-4 control-label">Nominee Relation</label>
												<div class="col-sm-8">
													<select name="nRelation" id="nRelation"
														class="form-control" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
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
												<label for="txtNomineeAddress"
													class="col-sm-4 control-label">Nominee Address</label>
												<div class="col-sm-8">
													<input name="nomineeAddress" type="text"
														id="nomineeAddress" class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtNomineeKycNumber"
													class="col-sm-4 control-label">Nominee KYC No.</label>
												<div class="col-sm-8">
													<input name="nomineeKycNumber" type="text"
														id="nomineeKycNumber" class="form-control" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="txtNomineeMobileNo"
													class="col-sm-4 control-label">Nominee Mobile No.</label>
												<div class="col-sm-8">
													<input name="nomineeMobileNo" type="text" maxlength="10"
														id="nomineeMobileNo" class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtNomineeAge" class="col-sm-4 control-label">Nominee
													Age.</label>
												<div class="col-sm-8">
													<input name="nomineeAge" type="text" value="0"
														maxlength="2" id="nomineeAge" class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);" />
												</div>
											</div>
											<div class="form-group row">
												<label for="TxtNomineePanNo" class="col-sm-4 control-label">Nominee
													Pan No.</label>
												<div class="col-sm-8">
													<input name="nomineePanNo" type="text" maxlength="10"
														id="nomineePanNo" class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="drpNomineeKycType"
													class="col-sm-4 control-label">Nominee KYC Type</label>
												<div class="col-sm-8">
													<select name="nomineeKycType" id="nomineeKycType"
														class="form-control" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
														<option value="Aadhar">Aadhar</option>
														<option value="Voter">Voter</option>
														<option value="Ration Card">Ration Card</option>
														<option value="Driving Licence">Driving Licence</option>
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
													class="col-sm-4 control-label">Member Fees (if any)
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="memberJoiningFess" type="text" value="0"
														id="memberJoiningFess" class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="memberJoiningFessMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Member Fees (if any)</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtShareAllotmentFrom"
													class="col-sm-4 control-label">Share Alloted From <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="shareAllotedfrm" id="shareAllotedfrm"
														class="form-control select2" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
													</select> <span id="shareAllotedfrmMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Alloted From</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtNoOfShared" class="col-sm-4 control-label">No.
													of Share <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="noOfShared" type="text" value=""
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtNoOfShared\&#39;,\&#39;\&#39;)&#39;, 0)"
														onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
														id="noOfShared" class="form-control" /> <span
														id="noOfSharedMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														No of Share</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Share Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="enterShareAmount" type="text" value=""
														readonly="readonly" id="enterShareAmount"
														class="form-control" /> <span id="enterShareAmountMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Share Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
													By <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="paymode"
														onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)"
														id="paymode" class="form-control" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
														<option value="Cash">Cash</option>
														<option value="Cheque">Cheque</option>
														<option value="Online">Online</option>
														<option value="NEFT">NEFT</option>
													</select>
												</div>
											</div>
											<div id="ContentPlaceHolder1_pnlcheque">
												<div class="form-group row">
													<label class="col-sm-4 control-label">Cheque No.</label>
													<div class="col-sm-8">
														<input name="chkNo" type="text" maxlength="10" id="chkNo"
															class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Cheque Date</label>
													<div class="col-sm-8">
														<div class="input-group date">
															<div class="input-group-addon">
																<i class="fa fa-calendar"></i>
															</div>
															<input name="chkDate" type="date" value="" id="chkDate"
																class="form-control"
																data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
																data-mask="" />
														</div>
													</div>
												</div>
											</div>
											<div id="ContentPlaceHolder1_idbankAC" class="form-group row">
												<label class="col-sm-4 control-label">Deposit A/C</label>
												<div class="col-sm-8">
													<select name="depositAcc" onchange="" id="depositAcc"
														class="form-control" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Remarks</label>
												<div class="col-sm-8">
													<textarea name="remarks" rows="2" cols="20" id="remarks"
														class="form-control" Placeholder="Enter Remarks if any"></textarea>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Member Status
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<label class="switch"> <input
														id="memberStatusIsActive" type="checkbox"
														name="memberStatusIsActive" checked="checked" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Mobile Banking
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<label class="switch"> <input id="chkmobile"
														type="checkbox" name="chkmobile" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Net Banking <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<label class="switch"> <input id="chknetBanking"
														type="checkbox" name="chknetBanking" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">SMS Send <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<label class="switch"> <input id="chkisSms"
														type="checkbox" name="chkisSms" checked="checked" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Is Minor <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<label class="switch"> <input id="chkMinor"
														type="checkbox" name="chkMinor" /> <span
														class="slider round"></span>
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
												value="Update" id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5" />
										
			</form>
			<input type="button" name="btndelete" value="Delete"
				onclick="softDeleteIntegrations();" id="btndelete"
				class="btn btn-danger pull-right" /> 
			<input type="submit"
				name="btnprint" value="Print" id="btnprint"
				class="btn btn-info pull-right margin-r-5" onclick="printTable1()" />
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
	
<!-- Print Operation -->
<script>
      function printTable1() {
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

<!--  Update Operation -->
<script>
	//alert("hi")
	$(document).ready(function() {
	$("#myForm").submit(function(e) {
   	e.preventDefault(); // prevent default form submit action
   	var formData = new FormData($(this)[0]); // create new FormData object from form data
   	
   //console.log(formData);
   //alert("hi")
   
   if ($("#filetag").val() == "") {
		             alert("Select THe Photo !!!");
		             return;
   }
   $.ajax({
       url: "updateMemberRectification",
       type: "POST",
       data: formData,
       processData: false,
       contentType: false,
       success: function(data) {
    	
    	   alert("Data Updated")
    	   window.location.href = "getMemberRectification";
       },
       error: function(error) {
    	   alert(error)
           console.log(error);
       }
   });
});
});	
</script>

<script>
      var fileTag = document.getElementById("filetag"),
          preview = document.getElementById("preview")
      
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
	<!-- Member Rectification JS -->
	<script src="dist/js/MemberRectificationJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</form>
</body>
</html>
