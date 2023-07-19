<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="savingAccounttable();">
	<!--  <script>
    // Fetch the data from the URL
    function getData(){
    	const xhr = new XMLHttpRequest();
    	xhr.open('GET', 'getAllSavingsAccount', true);

    	xhr.onload = function() {
    	  if (xhr.status >= 200 && xhr.status < 400) {
    	    const data = JSON.parse(xhr.responseText);
    	    // Process the response data here
    	    console.log(data);
    	    const table = document.createElement('table');

    	 // Create table header row
    	 const headerRow = document.createElement('tr');
    	 for (const key in data[0]) {
    	   if (data[0].hasOwnProperty(key)) {
    	     const headerCell = document.createElement('th');
    	     headerCell.textContent = key;
    	     headerRow.appendChild(headerCell);
    	   }
    	 }
    	 table.appendChild(headerRow);

    	 // Create table rows for each element in the array
    	 data.forEach(item => {
    	   const row = document.createElement('tr');
    	   for (const key in item) {
    	     if (item.hasOwnProperty(key)) {
    	       const value = item[key];
    	       const cell = document.createElement('td');
    	       cell.textContent = value;
    	       row.appendChild(cell);
    	     }
    	   }
    	   table.appendChild(row);
    	 });

    	 const container = document.getElementById('table-container');
    	 container.appendChild(table);
    	  } else {
    	    // Handle HTTP error
    	    console.error('HTTP error:', xhr.status);
    	  }
    	};

    	xhr.onerror = function() {
    	  // Handle network error
    	  console.error('Network error');
    	};

    	xhr.send();
    }
  </script>  -->
	<form method="post" action="saveSavingsAccount"
		model="saveSavingsAccount" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Saving Plan Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Saving Plan Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Saving Plan Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label for="txtSchemeName" class="col-sm-4 control-label">Scheme
													Name<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="schemeName" type="text" id="schemeName"
														class="form-control" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorSchemeName"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Scheme Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtAnnualInterestRate"
													class="col-sm-4 control-label">Annual R.O.I (%)<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="annualROI" type="text" id="annualROI"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Annual Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtMinOpeningAmount"
													class="col-sm-4 control-label">Min. Opening Amount<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="minOpeningAmount" type="text"
														id="minOpeningAmount" class="form-control"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Min. Opening Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtMinMonthlyAvgBalance"
													class="col-sm-4 control-label">Monthly Avg. Bal.<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="monthlyAvgBal" type="text" id="monthlyAvgBal"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Min. Monthly Avg. Balance</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtLockInBalance" class="col-sm-4 control-label">Lock
													In balance<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="lockInbalance" type="text" id="lockInbalance"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorLockInBalance"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Lock In balance</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtSmsChargesQarterly"
													class="col-sm-4 control-label">SMS Charges <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="smsCharges" type="text" id="smsCharges"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Sms Charges</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="ddlInterestCreditTime"
													class="col-sm-4 control-label">SMS Interval<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="smsInterval" id="smsInterval"
														class="form-control" style="width: 100%;">
														<option value="Monthly">Monthly</option>
														<option value="Quarterly">Quarterly</option>
														<option value="Half Yearly">Half Yearly</option>
														<option value="Yearly">Yearly</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Free IFSC
													Collection(p.m)<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="freeIfscCollectionpm" type="text"
														id="freeIfscCollectionpm" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Free
														IFSC Collection(p.m)</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Free
													Transfers(p.m)<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="freeTransferspm" type="text"
														id="freeTransferspm" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator2"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Free
														Transfers(p.m)</span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Single Txn.
													Limit<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="singleTxnLimit" type="text"
														id="singleTxnLimit" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator3"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Single
														Transaction Limit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Daily MAX
													Limit<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="dailyMAXLimit" type="text" id="dailyMAXLimit"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator4"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Daily
														MAX Limit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Weekly MAX
													Limit<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="weeklyMAXLimit" type="text"
														id="weeklyMAXLimit" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator5"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Weekly
														MAX Limit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Monthly MAX
													Limit<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="monthlyMAXLimit" type="text"
														id="monthlyMAXLimit" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator6"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Monthly
														MAX Limit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Service
													Charges <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="serviceCharges" type="text"
														id="serviceCharges" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator7"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Service Charges</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Service
													Interval<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="serviceInterval" id="serviceInterval"
														class="form-control" style="width: 100%;">
														<option value="Monthly">Monthly</option>
														<option value="Quarterly">Quarterly</option>
														<option value="Half Yearly">Half Yearly</option>
														<option value="Yearly">Yearly</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtCardCharge" class="col-sm-4 control-label">Card
													Charge<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="cardCharge" type="text" id="cardCharge"
														class="form-control" onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Card Charge</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtCardLimitMonthly"
													class="col-sm-4 control-label">Card Limit Monthly<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="cardLimitMonthly" type="text"
														id="cardLimitMonthly" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Card Limit Monthly</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtCardTotalLimitYearly"
													class="col-sm-4 control-label">Card Total Limit
													Yearly<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="cardTotalLimitYearly" type="text"
														id="cardTotalLimitYearly" class="form-control"
														onpaste="return false"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Card Total Limit Yearly</span>
												</div>
											</div>
										</div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
												value="Save" id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Scheme List</h3>
								</div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" style="width: 100%; border-collapse: collapse;">
									<tr style="color: White; background-color: #008385;">
										<th scope="col">S/N</th>
										<th scope="col">Scheme Name</th>
										<th scope="col">Annual ROI</th>
										<th scope="col">Min Opening Amount</th>
										<th scope="col">Monthly Avg Bal</th>
										<th scope="col">Lock In Balance</th>
										<th scope="col">SMS Charges</th>
										<th scope="col">SMS Interval</th>
										<th scope="col">Free IFSC</th>
										<th scope="col">Free Transfers</th>
										<th scope="col">Single Txn Limit</th>
										<th scope="col">Daily MAX Limit</th>
										<th scope="col">Weekly MAX Limit</th>
										<th scope="col">Monthly MAX Limit</th>
										<th scope="col">Service Charges</th>
										<th scope="col">Service Interval</th>
										<th scope="col">Card Charge</th>
										<th scope="col">Card Limit Monthly</th>
										<th scope="col">Card Total Limit Yearly</th>
									</tr>
									<tbody id="savingAccounttable">
									</tbody>
								</table>
								<!-- <div id="table-container"></div>
 -->
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
		<script src="dist/js/SavingsAccount.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorSchemeName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLockInBalance"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly"));
//]]>
</script>
		<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorSchemeName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorSchemeName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorSchemeName");
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.controltovalidate = "ContentPlaceHolder1_txtSchemeName";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.errormessage = "Enter Scheme Name";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorSchemeName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate");
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.controltovalidate = "ContentPlaceHolder1_txtAnnualInterestRate";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.errormessage = "Enter Annual Interest Rate";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount");
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.controltovalidate = "ContentPlaceHolder1_txtMinOpeningAmount";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.errormessage = "Enter Min. Opening Amount";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance");
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.controltovalidate = "ContentPlaceHolder1_txtMinMonthlyAvgBalance";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.errormessage = "Enter Min. Monthly Avg. Balance";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorLockInBalance = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLockInBalance"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLockInBalance");
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.controltovalidate = "ContentPlaceHolder1_txtLockInBalance";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.errormessage = "Enter Lock In balance";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorLockInBalance.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly");
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.controltovalidate = "ContentPlaceHolder1_txtSmsChargesQarterly";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.errormessage = "Enter Sms Charges";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtFreeIFSCCollection";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Free IFSC Collection(p.m)";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtFreeTransfer";
ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Free Transfers(p.m)";
ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtSingleTxnLimit";
ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Single Transaction Limit";
ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtDailyMaxlimit";
ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Daily MAX Limit";
ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtWeeklyMaxLimit";
ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Weekly MAX Limit";
ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtMonthlyMaxLimit";
ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Monthly MAX Limit";
ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtServiceChrg";
ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Service Charges";
ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge");
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.controltovalidate = "ContentPlaceHolder1_txtCardCharge";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.errormessage = "Enter Card Charge";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly");
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.controltovalidate = "ContentPlaceHolder1_txtCardLimitMonthly";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.errormessage = "Enter Card Limit Monthly";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly");
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.controltovalidate = "ContentPlaceHolder1_txtCardTotalLimitYearly";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.errormessage = "Enter Card Total Limit Yearly";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorSchemeName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorSchemeName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAnnualInterestRate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMinOpeningAmount'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMinMonthlyAvgBalance'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLockInBalance').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLockInBalance'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtSmsChargesQarterly'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardCharge'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardLimitMonthly'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtCardTotalLimitYearly'));
}
//]]>
</script>
	</form>
</body>
</html>