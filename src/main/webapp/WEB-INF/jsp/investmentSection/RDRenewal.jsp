<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="getAllPolicyNumber1(); GetTheSelectedTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

	<input id="id" name="id" type="hidden">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Monthly Renewal</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Mly. Renewal</li>
				</ol>
			</section>

			<form id="myForm" name="myForm" enctype="multipart/form-data">

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
													onchange="javascript:getByAddInvesmentCode()"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value=""></option>
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
													<input onchange="javascript:getByDateAddInvesmentCode()"
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
											<div class="col-sm-5">
												<select
													onchange="javascript:getByBranchNameAddInvesmentCode()"
													name="branchName" id="branchName" class="form-control"
													style="width: 100%;">
													<option value="" selected="selected">Select</option>

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
													<input name="policyDate1" type="text" readonly="readonly"
														id="policyDate1" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<input type="hidden" id="id" value="id" />
										<div class="form-group row">
											<label class="col-sm-4 control-label">Maturity Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="mDate" type="text" readonly="readonly"
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
												<input name="memberCode" type="text" readonly="readonly"
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
												<input name="applicantName" type="text" readonly="readonly"
													id="applicantName" class="form-control" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Applicant
													Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMembersMobileNo"
												class="col-sm-4 control-label">Mobile No<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="mobileNo" type="text" readonly="readonly"
													id="mobileNo" class="form-control" Placeholder="Mobile No" />
												<span id="mobileNo"
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
													Placeholder="Policy Amount"
													style="color: Red; font-weight: bold;" /> <span
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
													Placeholder="Scheme Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeTerm" class="col-sm-4 control-label">Scheme
												Term<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-4">
												<input name="schemeType" type="text" readonly="readonly"
													id="schemeType" class="form-control" Placeholder="Term" />
											</div>
											<div class="col-sm-4">
												<input name="mode" type="text" readonly="readonly" id="mode"
													class="form-control" Placeholder="Enter Mode" />
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
													id="totalDeposit" class="form-control"
													style="color: Red; font-weight: bold;" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMaturityAmountDue"
												class="col-sm-4 control-label">Amount Due<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="MaturityAmountDue" type="text"
													readonly="readonly" id="MaturityAmountDue"
													class="form-control" style="color: Red; font-weight: bold;" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSmsStatus" class="col-sm-4 control-label">SMS
												Status<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="chkisSms" type="text" readonly="readonly"
													id="chkisSms" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSmsStatus" class="col-sm-4 control-label">Advisor
												Code<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="advisorCode" type="text" readonly="readonly"
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
												<input name="lastInstPaid" type="text" readonly="readonly"
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
													<input name="dueDate" type="text" readonly="readonly"
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
													class="form-control"
													placeholder="Enter No. Installment Paid" autocomplete="off"
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
												<select name="Paymode" id="paymode" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
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
													id="advisorCode1"
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
										<!--                               <input type="submit" name="ctl00$ContentPlaceHolder1$btnPrint" -->
										<!--                                  value="Print" id="ContentPlaceHolder1_btnPrint" -->
										<!--                                  class="btn btn-info pull-right margin-r-5" />  -->

										<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Save" id="ContentPlaceHolder1_btnSave"
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
												<img id="preview" class="profile-user-img"
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
												<img id="secondpreview" class="profile-user-img"
													style="height: 70px; width: 115px;" /> <input type="file"
													name="secondfiletag" id="secondfiletag" />
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
	<script src="dist/js/investmentSection .js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

<!--       get the value in dropDwon -->
<script>
function GetTheSelectedTheDropDown(){
	
	//alert("hi")
  
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllBranch',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].name+"'>"+data[i].name +"</option>";
                    }
                    $("#branchName").append(appenddata1);
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}
</script>

<!--       Upload Photo Javascript -->
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

<!--       Update Operation -->
<script type="text/javascript">
	   $(document).ready(function() {
	   $("#myForm").submit(function(e) {
	   e.preventDefault(); // prevent default form submit action
		//alert("Hello")
	   var formData = new FormData($(this)[0]); // create new FormData object from form data
	   //console.log(formData);
	   
	   $.ajax({
	       url: "updateDataByPolicyInvestment",
	       type: "POST",
	       data: formData,
	       processData: false,
	       contentType: false,
	       success: function(data) {
	    	
	    	   alert("Data  Save Sucessfully !!!!!!!!!!!!!")
	    	   window.location.href = "dailyRenewalPayment";
	       },
	       error: function(error) {
	           console.log(error);
	       }
	   });
	});
	});
</script>

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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
         //]]>
      </script>
	<script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName");
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.controltovalidate = "ContentPlaceHolder1_ddlSearchbyPolicyNo";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.errormessage = "Select Policy No.";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtMemberCode";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Member Code";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName");
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.controltovalidate = "ContentPlaceHolder1_txtApplicantName";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.errormessage = "Applicant Name";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo");
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.controltovalidate = "ContentPlaceHolder1_txtMobileNo";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.errormessage = "Mobile No";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount");
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.controltovalidate = "ContentPlaceHolder1_txtPolicyAmount";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.errormessage = "Policy Amount";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtNoOfInstPaid";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter No. Installment Paid";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
         ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtAdvisorCode";
         ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter Advisor/Collector Code";
         ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
         ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtAdvisorName";
         ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Advisor/Collector Name";
         ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPolicyNoName'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembersRelativeRelationName'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtMembersMobileNo'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
         }
         //]]>
      </script>

</body>
<!-- Dk/Admin/RDRenewal.aspx EDB D 09:27:01 GMT -->
</html>