<jsp:include page="../header.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body class="skin-blue sidebar-mini"
	onload="getAllLoanIDAfterSoftDeleteOperation(); getAllMemberinDropdown(); getLoanPlanNameinDropdown(); getAllBranchName(); getAllPlanTerm(); getAllkarat(); getAllItemName(); getAllLockerLoc(); getAllPurity();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--  <form method="post"  id="form1" enctype="multipart/form-data"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Edit Gold Loan
					Application</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Loan Details</li>
				</ol>
			</section>

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
														<option selected="selected" value="">--SELECT
															LOAN ID--</option>
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
													<input name="loanDate" type="date" value="" id="loanDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="loanDateMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="memberName" id="memberName"
													onchange="retrieveUsingMemberName()"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">--SELECT
														MEMBER--</option>
												</select> <span id="memberNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative
												Details <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="relativeRelation" type="text"
													readonly="readonly" id="relativeRelation"
													class="form-control"
													PlaceHolder="Enter Relative Name &amp; Relation" /> <span
													id="relativeRelationMsg"
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
													<input name="dob" type="date" value="" readonly="readonly"
														id="dob" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text" value="0" maxlength="2"
													readonly="readonly" id="age" class="form-control"
													Placeholder="Enter Age"
													onkeypress="return isNumberOnlyKey(this, event);"
													autocomplete="off" /> <span id="ageMsg"
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
													id="phonenoMsg"
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
												<span id="addressMsg"
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
													Placeholder="Enter Pincode" /> <span id="pinCodeMsg"
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
													<option value="" selected="selected">--Select
														Branch Name--</option>
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
														onchange="retrieveUsingLoanPlanName();" id="loanPlanName"
														class="form-control" style="width: 100%;">
														<option value="" selected="selected">--Select
															Loan Plan Name--</option>
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
													<select name="planTerm" onchange=" " id="planTerm"
														class="form-control" style="width: 100%;">
														<option>--Select Plan Term--</option>
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
													<span id="modeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Mode</span>
												</div>
												<label class="col-sm-2 control-label">ROI(%)</label>
												<div class="col-sm-3">
													<input name="loanROI" type="text" readonly="readonly"
														id="loanROI" class="form-control"
														PlaceHolder="Enter Loan ROI" /> <span id="loanROIMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan ROI</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Loan Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="loanAmount" type="text" onchange=""
														onkeypress="" id="loanAmount" class="form-control"
														PlaceHolder="Enter Loan Amount" onpaste="return false"
														autocomplete="off" /> <span id="loanAmountMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Loan Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtROIType" class="col-sm-4 control-label">ROI
													Type <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="roiType" type="text" readonly="readonly"
														id="roiType" class="form-control"
														PlaceHolder="Enter ROI Type" /> <span id="roiTypeMsg"
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
														PlaceHolder="Enter EMI Amount" /> <span id="emiAmountMsg"
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
													id="loanPurposeMsg"
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
												<img id="photo" name="photo" class="profile-user-img"
													style="height: 110px; width: 110px;" /> <input type="file"
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
												<img id="signature" name="signature"
													class="profile-user-img"
													style="height: 110px; width: 110px;" /> <input type="file"
													name="preview" id="preview" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div id="ContentPlaceHolder1_uppnlGold">
							<div class="col-md-10">
								<div class="box box-warning">
									<div class="box-header with-border">
										<h3 class="box-title">Gold/Silver Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Karat <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="karat" onchange="getAllkarat();" id="karat"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="">--Select
															Karta--</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Item Type <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-4">
													<select name="itemType" onchange="" id="itemType"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="">--Select
															Item Type--</option>
														<option value="Gold">Gold</option>
														<option value="Silver">Silver</option>
													</select>
												</div>
												<div class="col-sm-4">
													<input name="todayRate" type="text" value=""
														placeholder="Enter" readonly="readonly" id="todayRate"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Item Name <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="itemName" id="itemName" class="form-control"
														style="width: 100%;">
														<option selected="selected" value="">--Select
															Item Name--</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Locker
													Location <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="lockerLoc" id="lockerLoc"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="">--Select
															Locker Location--</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtPhoneno" class="col-sm-4 control-label">Purity
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="purity" onchange="" id="purity"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="">--Select
															Purity--</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Item Qty. <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-2">
													<input name="itemQty" type="text" onchange="" onkeypress=""
														id="itemQty" class="form-control" onpaste="return false" />
												</div>
												<label class="col-sm-3 control-label">Item Wt. <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-3">
													<input name="itemWt" type="text" onchange="" onkeypress=""
														id="itemWt" class="form-control" onpaste="return false"
														autocomplete="off" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Gross Wt. <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-2">
													<input name="grossWt" type="text" readonly="readonly"
														id="grossWt" class="form-control" onpaste="return false"
														onkeypress="return isNumberKey(this, event);"
														autocomplete="off" />
												</div>
												<label class="col-sm-3 control-label">Stone Wt. <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-3">
													<input name="stonewt" type="text" onchange="" onkeypress=""
														id="stonewt" class="form-control" onpaste="return false"
														autocomplete="off" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Net Wt. <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="netWt" type="text" readonly="readonly"
														id="netWt" class="form-control" onpaste="return false"
														placeholder="Enter Net. Wt."
														onkeypress="return isNumberKey(this, event);"
														autocomplete="off" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Market
													Valuation</label>
												<div class="col-sm-8">
													<input name="marketValuation" type="text"
														placeholder="Enter Market Valuation" readonly="readonly"
														id="marketValuation" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberKey(this, event);"
														autocomplete="off" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Eligible Loan<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-4">
													<input name="eligibleLoan" type="text" readonly="readonly"
														placeholder="Enter Eligible Loan" id="eligibleLoan"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberKey(this, event);"
														autocomplete="off" />
												</div>
											</div>
										</div>
									</div>
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div id="ContentPlaceHolder1_pnlData"
											style="height: 160px; overflow-y: scroll;">
											<div></div>
										</div>
									</div>
									<div class="box-body">
										<div class="col-md-3">
											<div class="form-group">
												<label>Net Qty.</label> <input name="netQty" type="text"
													placeholder="Enter" readonly="readonly" id="netQty"
													class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Total Item Wt.</label> <input name="totItemWt"
													placeholder="Enter" type="text" readonly="readonly"
													id="totItemWt" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Total Net Wt.</label> <input name="totalNetWt"
													placeholder="Enter" type="text" readonly="readonly"
													id="totalNetWt" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Eligible Loan</label> <input name="totalEligibleAmt"
													placeholder="Enter" type="text" readonly="readonly"
													id="totalEligibleAmt" class="form-control" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Gold Item</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<div class="text-center">
												<img id="goldImg" name="goldImg" class="profile-user-img"
													style="height: 110px; width: 110px;" />
												<!--  <input type="file" name="imgGold" id="imgGold" />  -->
											</div>
										</div>
										<div class="form-group">
											<div class="text-center">
												<input type="file" name="imgGold" id="imgGold" />
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
													<input name="searchMemberCode" id="searchMemberCode"
														type="text" class="form-control"
														Placeholder="Enter Guarantor Member 2" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtMembersRelativesNameRelationGu"
													class="col-sm-4 control-label">Guarantor Name </label>
												<div class="col-sm-8">
													<input name="guarantorName" type="text" readonly="readonly"
														placeholder="Enter Guarantor Name" id="guarantorName"
														class="form-control" />
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
														<option value="Select"-->Select Security Type--</option>
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
													<input name="coApplicantCode" type="text"
														id="coApplicantCode" class="form-control"
														Placeholder="Enter Co-Applicant Member Code" />
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
														placeholder="Enter Processing Fee" id="processingFee"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLegalAmt" class="col-sm-4 control-label">Legal
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="legalAmt" type="text" readonly="readonly"
														placeholder="Enter Legal Amt" id="legalAmt"
														class="form-control" />
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnkad">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Advisor/Collector
													Code <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="advisorCode" type="text" id="advisorCode"
														class="form-control"
														placeholder="Enter Advisor/Collector Code" /> <span
														id="advisorCodeMsg"
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
														placeholder="Enter GST" class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance
													Amt<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="insuranceAmt" type="text" readonly="readonly"
														placeholder="Enter Insurance Amt" id="insuranceAmt"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtInsuranceAmt" class="col-sm-4 control-label">Valuation
													Fees<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="vFeesAmt" type="text" id="vFeesAmt"
														placeholder="Enter Valuation Fees" class="form-control" />
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
														id="advisorNameMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Advisor/Collector Name</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button" name="btnDelete" value="Delete"
											id="btnDelete" onclick="softDeleteIntegrations();"
											class="btn btn-danger pull-right" /> <input type="submit"
											name="ctl00$ContentPlaceHolder1$btnNew" value="New"
											onclick="redirectThePageToGoldLoan();"
											id="ContentPlaceHolder1_btnNew"
											class="btn btn-info pull-right margin-r-5" /> <input
											type="button" name="updatebtnGold" value="Update"
											id="updatebtnGold"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
		</div>
		<div class="control-sidebar-bg"></div>
	</div>

	<script>
		$(document).ready(function() {
			$('#updatebtnGold').click(function() {
				if ($("#id123").val() == "") {
					alert("Select the particular loan Id");
					return;
				}

				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url : 'updateCodeUsingLoanIds',
					type : 'POST',
					enctype : 'multipart/form-data',
					data : data,
					processData : false,
					contentType : false,
					cache : false,
					success : function(response) {
						if (response === 'DATA UPDATED SUCCESSFULLY') {
							alert(response);
							window.location.href = "getGoldLoanRectification";
						} else {
							alert('Failed to update data: ' + response);
						}
						console.log(response);
					},
					error : function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>

	<script type="text/javascript">
		function redirectThePageToGoldLoan() {

			window.location.href = "goldLoanApplication";

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
	<!-- Gold Loan Rectification JS -->
	<script src="dist/js/GoldLoanRectificationJS.js"></script>
	<script src="dist/js/rectificationSection.js"></script>

	<script>
		var fileTag = document.getElementById("filetag"), // this is for file 
		photo = document.getElementById("photo"), //this is for preview
		preview = document.getElementById("preview"), signature = document
				.getElementById("signature"), imgGold = document
				.getElementById("imgGold"), goldImg = document
				.getElementById("goldImg");

		fileTag.addEventListener("change", function() { // this is for file
			changeImage(this);
		});

		preview.addEventListener("change", function() {
			changeImage2(this);
		});

		imgGold.addEventListener("change", function() {
			changeImage3(this);
		});

		function changeImage(input) { // this is for preview
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					photo.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage2(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					signature.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage3(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					goldImg.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/GoldLoanApplication.aspx?IsModification=true EDB D 09:27:16 GMT -->
</html>
