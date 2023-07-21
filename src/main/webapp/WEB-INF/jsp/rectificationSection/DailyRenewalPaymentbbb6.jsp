<jsp:include page="../header.jsp" />
<body onload="getAllPolicyNumber1InTheDailyRenewalRectification(); BranchNameForAddInvestmentModule();"
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
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', ['tctl00$ContentPlaceHolder1$UpPopup','ContentPlaceHolder1_UpPopup','tctl00$ContentPlaceHolder1$uppnl','ContentPlaceHolder1_uppnl'], [], [], 90, 'ctl00');
//]]>
</script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Delete Daily Renewal</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Dly. Renewal</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Search Box</h3>
							</div>
							<div class="box-body">
								<div class="col-md-4">
									<div class="form-group row">
										<label for="ddlPolicyNoName" class="col-sm-4 control-label">Policy
											No.<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="searchbyPolicyNo" id="searchbyPolicyNo"
												onchange="javascript:getByAddInvesmentCodeDailyRenewalRectification()"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value="">--Select Policy No.--</option>
											</select> <span id="searchbyPolicyNo"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Policy No.</span>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group row">
										<label class="col-sm-5 control-label">Renewal Date<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input onchange="javascript:getByDateAddInvesmentCodeRenewalRectification()"
													name="renewalDate" type="date" id="renewalDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group row">
										<label for="txtBranchName" class="col-sm-5 control-label">Branch
											Name<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-7">
											<select
												onchange="javascript:getByBranchNameAddInvesmentCodesNow()"
												name="branchName" id="branchName" class="form-control"
												style="width: 100%;">
												<option value="" selected="selected">--Select--</option>
											</select>
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
												<input name="policyDate1" type="date" readonly="readonly"
													id="policyDate1" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
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
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Member Code<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="memberCode" type="text" readonly="readonly" placeholder="Enter Member Code"
												id="memberCode" class="form-control" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Member
												Code</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Applicant Name<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="applicantName" type="text" readonly="readonly" placeholder="Enter Applicant Name"
												id="applicantName" class="form-control" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Applicant
												Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtMembersMobileNo" class="col-sm-4 control-label">Mobile
											No<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="mobileNo" type="text" readonly="readonly"
												id="mobileNo" class="form-control"
												Placeholder="Enter Mobile No" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Mobile
												No</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPolicyAmount" class="col-sm-4 control-label">Policy
											Amount<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="PolicyAmount" type="text" readonly="readonly"
												id="PolicyAmount" class="form-control"
												Placeholder="Enter Policy Amount"
												style="color: Red; font-weight: bold;" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Policy
												Amount</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSchemeName" class="col-sm-4 control-label">Scheme
											Name<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="schemeName" type="text" readonly="readonly"
												id="schemeName" class="form-control"
												Placeholder="Enter Scheme Name" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSchemeTerm" class="col-sm-4 control-label">Scheme
											Term<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-4">
											<input name="schemeType" type="text" readonly="readonly"
												id="schemeType" class="form-control"
												Placeholder="Enter Schme Term" />
										</div>
										<div class="col-sm-4">
											<input name="mode" type="text" readonly="readonly" id="mode"
												class="form-control" Placeholder="Mode" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtMaturityAmount" class="col-sm-4 control-label">Maturity
											Amt.<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="maturityAmount" type="text" readonly="readonly"
												id="maturityAmount" class="form-control"
												Placeholder="Maturity Amount"
												style="color: Red; font-weight: bold;" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtTotalDepositedAmount"
											class="col-sm-4 control-label">Net Deposited<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="totalDeposit" type="text" readonly="readonly"
												id="totalDeposit" class="form-control" placeholder="Enter Net Deposite"
												style="color: Red; font-weight: bold;" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtMaturityAmountDue"
											class="col-sm-4 control-label">Amount Due<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="MaturityAmountDue" type="text" placeholder="Enter Amount Due"
												readonly="readonly" id="MaturityAmountDue"
												class="form-control" style="color: Red; font-weight: bold;" /> 
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSmsStatus" class="col-sm-4 control-label">SMS
											Status<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="chkisSms" type="text" readonly="readonly" placeholder="Enter SMS Status"
												id="chkisSms" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSmsStatus" class="col-sm-4 control-label">Advisor
											Code<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="advisorCode" type="text" readonly="readonly" placeholder="Enter Advisor Code"
												id="advisorCode" class="form-control" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-5 control-label">Last Inst. Paid
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-7">
											<input name="lastInstPaid" type="text" readonly="readonly" placeholder="Last Inst. Paid"
												id="lastInstPaid" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">Due Date <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="dueDate" type="date" readonly="readonly"
													id="dueDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">Late Fine <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<input name="latefine" type="text" value="0"
												readonly="readonly" id="latefine" class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">No. Installment
											Paid <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-7">
											<input name="NoOfInstPaid" type="text" id="NoOfInstPaid"
												class="form-control" placeholder="Enter No Of Inst. Paid"
												autocomplete="off" onpaste="return false"
												onkeypress="return isNumberOnlyKey(this, event);"
												style="color: Red; font-size: Large; font-weight: bold;" />
											<span id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												No. Installment Paid</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="drpPaymentBy" class="col-sm-5 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-7">
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
										<label class="col-sm-5 control-label">Advisor/Collector<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<input name="collectorCode" type="text" id="collectorCode"
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
												placeholder="Advisor/Collector Name" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator7"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-5 control-label">Remarks</label>
										<div class="col-sm-7">
											<textarea name="remarks" rows="2" cols="20" id="remarks"
												class="form-control" Placeholder="Enter Remarks if any">
</textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="box-footer">
								<div class="row col-md-12">
									<div id="ContentPlaceHolder1_UpPopup">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnView"
											value="View Installment" id="ContentPlaceHolder1_btnView"
											class="btn btn-warning pull-left margin-r-5"
											data-target="#modal-warning" data-toggle="modal" />
									</div>
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete"
										value="Delete Last Entry" onclick="softDeleteForThreeThings123()"
										id="ContentPlaceHolder1_btnDelete"
										class="btn btn-danger pull-right" />
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
				<div class="modal modal-warning fade" id="modal-warning">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">Renewal Payment List</h4>
							</div>
							<div class="modal-body">
								<div id="ContentPlaceHolder1_uppnl">
									<div style="box-shadow: none; overflow: auto;">
										<div></div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline pull-left"
									data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
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
	<script src="dist/js/Rectification.js"></script>
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
</body>
</html>
