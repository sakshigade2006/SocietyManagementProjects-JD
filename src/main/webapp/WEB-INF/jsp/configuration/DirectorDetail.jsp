<jsp:include page="../header.jsp" />
<script src="jquery-3.6.3.min.js"></script>
<script>
   $(document).ready(function(){
   	$("#hideshowtable").hide();
   	
   	$("#hide").click(function(){
   		$("#hideshowtable").hide();
   	});
   	
   	$("#show").click(function(){
   		$("#hideshowtable").show();
   	});
   });
   
   function calculate(){
   	var FaceValue = document.getElementById('shareNominalValue').value;
   	var ShareAmount = document.getElementById('shareAmount').value;
   	var NoOfShare = document.getElementById('noOfShare');
   	var result = (10 * ShareAmount);
   	noOfShare.value = result;
   }
   
</script>
<body
	onload="getAllDirectorMaster();setBranchInSelectOption();fetchDepositeAccount()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="saveDirectorMaster" modelAttribute="saveDirectorMaster"  id="form1" name="addDirector"  enctype="multipart/form-data"> -->
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
		<form id="myForm" name="myForm" enctype="multipart/form-data">
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Add Director/Promoter</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Director/Promoter</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Director/Promoter Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-5">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Type <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="type" id="type" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="">--Select--</option>
													<option value="Director">Director</option>
													<option value="Promoter">Promoter</option>
												</select> <span id="typeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="branchName" id="branchName"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">--Select--</option>
												</select> <span id="branchNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Full Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-3">
												<select name="prefix" id="prefix" class="form-control"
													style="width: 100%;">
													<option value="Mr.">Mr.</option>
													<option value="Ms.">Ms.</option>
													<option value="Mrs.">Mrs.</option>
													<option value="Smt.">Smt.</option>
													<option value="Md.">Md.</option>
												</select> <span id="prefixMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
											<div class="col-sm-5">
												<input name="directorName" type="text" id="directorName"
													class="form-control"
													Placeholder="Enter Director/Promoter Name" /> <span
													id="directorNameMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">DOB</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="dateOfBirth" type="date" id="dateOfBirth"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="dateOfBirthMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">DIN/Promoter No</label>
											<div class="col-sm-8">
												<input name="dinNoPromoterNo" type="text"
													id="dinNoPromoterNo" class="form-control"
													Placeholder="Enter DIN No/Promoter No"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="dinNoPromoterNoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtAppointmentDate"
												class="col-sm-4 control-label">Appointment Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="appointmentDate" type="date"
														id="appointmentDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" /> <span id="appointmentDateMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative Name</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" id="relativeName"
													class="form-control" Placeholder="Enter Relative Name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative
												Relation</label>
											<div class="col-sm-8">
												<select name="relativeRelation" id="relativeRelation"
													class="form-control" style="width: 100%;">
													<option value="--Select--">--Select--</option>
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
											<label class="col-sm-4 control-label">Address</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20" id="address"
													class="form-control" Placeholder="Enter Addess">
                                 </textarea>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">District</label>
											<div class="col-sm-8">
												<input name="district" type="text" id="district"
													class="form-control" Placeholder="Enter District" />
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group row">
											<label class="col-sm-4 control-label">State</label>
											<div class="col-sm-8">
												<select name="state" id="state" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value="--Select--">--Select--</option>
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
											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code</label>
											<div class="col-sm-8">
												<input name="pin" type="text" maxlength="7" id="pin"
													class="form-control" Placeholder="Enter Pin"
													onkeypress="return isNumberOnlyKey(this, event);" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Aadhar No.</label>
											<div class="col-sm-8">
												<input name="aadharno" type="text" maxlength="12"
													id="aadharno" class="form-control"
													Placeholder="Enter Aadhar No." />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Pan No.</label>
											<div class="col-sm-8">
												<input name="panNo" type="text" maxlength="10" id="panNo"
													class="form-control" Placeholder="Enter Pan" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtMobileNo" class="col-sm-4 control-label">Mobile
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="mobileNo" type="text" maxlength="10"
													id="mobileNo" class="form-control"
													Placeholder="Enter Mobile No." autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="mobileNoMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Mobile No.</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtEmailId" class="col-sm-4 control-label">Email
												ID</label>
											<div class="col-sm-8">
												<input name="emailId" type="text" id="emailId"
													class="form-control" Placeholder="Enter Email ID" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtShareNominalValue"
												class="col-sm-4 control-label">Face Value</label>
											<div class="col-sm-8">
												<input name="shareNominalValue" type="text"
													oninput="calculate()" Placeholder="Enter Face Value"
													id="shareNominalValue" class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtShareAmount" class="col-sm-4 control-label">Share
												Amount <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="shareAmount" type="text" id="shareAmount"
													onkeyup="calculate()" class="form-control"
													Placeholder="Enter Share Amount" /> <span
													id="shareAmountMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Share Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtTotalShareValue"
												class="col-sm-4 control-label">No. Of Share</label>
											<div class="col-sm-8">
												<input name="noOfShare" type="text" readonly="readonly"
													id="noOfShare" class="form-control"
													Placeholder="No. Of Share" />
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="row">
											<div class="col-sm-12">
												<img id="preview"
													src="data:image/png;base64,${directorLogo}"
													style="height: 110px; width: 110px;" /> <input type="file"
													onchange="uploadFile('logo','Director')" name="filetag"
													id="filetag" />
											</div>
										</div>
										<div class="row margin">
											<div class="col-sm-12">
												<img id="secondpreview"
													src="data:image/png;base64,${directorSignature}"
													style="height: 70px; width: 115px;" /> <input type="file"
													onchange="uploadFile('signature','Director')"
													name="secondfiletag" id="secondfiletag" />
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
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Payment By<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select onchange="callthedepostnumber(this.value);"
													name="paymode" id="paymode" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
												</select>
											</div>
											<div class="form-group row">
												<label for="txtChequeNo" class="col-sm-4 control-label">Cheque
													NO</label>
												<div class="col-sm-8">
													<input name="chequeNO" type="text" id="chequeNO"
														class="form-control" Placeholder="Enter Cheque No" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Cheque Date</label>
												<div class="col-sm-8">
													<div class="input-group date">
														<div class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</div>
														<input name="chequeDate" type="date" id="chequeDate"
															class="form-control"
															data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
															data-mask="" />
													</div>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Deposit A/C</label>
												<div class="col-sm-8">
													<select name="deposistAC" id="deposistAC"
														class="form-control" style="width: 100%;">
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-6"></div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<button type="submit" name="save" value="Save" id="save"
												onclick="" class="btn btn-success pull-right margin-r-5">Save</button>
											<button type="button" name="hide" value="hide" id="hide"
												class="btn btn-success pull-right margin-r-5">Hide</button>
											<button type="button" name="show" value="show" id="show"
												class="btn btn-success pull-right margin-r-5">Show</button>
										</div>
									</div>
								</div>
		</form>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
      	$(document).ready(function() {
     	$("#myForm").submit(function(e) {
        e.preventDefault(); // prevent default form submit action
         
      	// Validate the form inputs
         if($("#type").val() == ""){
      	   alert("Chose The Type.")
         }
         if($("#branchName").val() == ""){
      	   alert("Chose Branch Name.")
         }
         if ($("#directorName").val() == "") {
             alert("Write Full Name.");
             return;
         }
         if($("#appointmentDate").val() == ""){
      	   alert("Write Appointment Date.")
         }
         if($("#mobileNo").val() == ""){
      	   alert("Wite Mobile No.")
         }
         if($("#shareAmount").val() == ""){
      	   alert("Write Share Amount.")
         }
         if ($("#filetag").val() == "") {
             alert("Chose The Photo.");
             return;
         }
         if ($("#secondfiletag").val() == "") {
             alert("Chose The Signature.");
             return;
         }
         if ($("#paymode").val() == "") {
             alert("Pamode.");
             return;
         }emailId
         
         if ($("#emailId").val() == "") {
             alert("emailId.");
             return;
         }
         
         var formData = new FormData($(this)[0]); // create new FormData object from form data
         //console.log(formData);
         
         $.ajax({
             url: "saveDirectorMaster",
             type: "POST",
             data: formData,
             processData: false,
             contentType: false,
             success: function(data) {
             	 window.location.href = "DirectorDetail";
             },
             error: function(error) {
                 console.log(error);
             }
         });
      });
      });
   	  </script>
		<div class="box box-success"
			style="box-shadow: none; overflow: auto !important;">
			<div class="box-body">
				<div class="clearfix margin-bottom-10"></div>
				<div>
					<section id="hideshowtable">
						<table cellspacing="0" cellpadding="3" rules="all"
							class="display nowrap table table-hover table-striped table-bordered"
							border="1" style="width: 100%; border-collapse: collapse;">
							<caption></caption>
							<tr style="color: White; background-color: #008385;">
								<th scope="col">Director ID</th>
								<th scope="col">Type</th>
								<th scope="col">Full Name</th>
								<th scope="col">DIN No.</th>
								<th scope="col">AppDate</th>
								<th scope="col">Share Amount</th>
								<th scope="col">No. Of Share</th>
								<!-- <th scope="col">DNO From</th> -->
								<!-- <th scope="col">DNO To</th> -->
								<!-- <th scope="col">Member Code</th> -->
								<th scope="col">Payment By</th>
								<th scope="col">Delete</th>
							</tr>
							<tbody id="ContentPlaceHolder1_gdvData_Director">
							</tbody>
						</table>
					</section>
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
	<script src="dist/js/config.js"></script>
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
        function uploadFile(str,module) {
        	//alert(str);
        	var fileInput;
        	if(str==='logo'){
        		 fileInput = document.getElementById('filetag');
        	}else{
        		 fileInput = document.getElementById('secondfiletag');
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
                	alert('File upload successfully');
                }
            };
            xhr.send(formData);
        }
    </script>

	<script type="text/javascript">

    function fetchDepositeAccount() {
    	//relativeRelation
    	const select = document.getElementById("deposistAC");
    	$.ajax({
    		type: "get",
    		contentType: "application/json",
    		url: 'getDeposistAC',
    		asynch: false,
    		success: function(data) {
    			data.forEach(value => {
    				//alert(value.name)
    				const option = document.createElement('option')
    				option.setAttribute('value', value.depositeAccNo);
    				option.innerHTML = value.depositeAccNo;
    				select.appendChild(option)
    			})
    		},
    		error: function() {
    			alert("Device control failed");
    		}
    	});
    }
    </script>

	<!-- </form> -->
</body>
</html>