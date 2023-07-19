<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body onload="getConmapnyDetails()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="updateCompanyDetails" modelAttribute="updateCompanyDetails" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Company Setting</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Setting</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-10">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Company Details</h3>
								<div class="box-tools pull-right">
									<button type="button" name="BtnEdit" id="BtnEdit"
										onclick="enableDisabledField()">
										<img src="dist/img/pen_paper_2-32.png" />
									</button>
								</div>
							</div>
							<form id="myForm" name="myForm" enctype="multipart/form-data">
								<div id="ContentPlaceHolder1_pnlCdetails" class="aspNetDisabled">
									<div class="box-body">
										<div class="col-md-3">
											<div class="form-group">
												<label>Company Name :</label> <input name="companyName"
													type="text" value="EQFI NIDHI LIMITED" disabled="disabled"
													id="companyName" class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Short Name :</label> <input name="shortName"
													type="text" value="EQFI" maxlength="4" disabled="disabled"
													id="shortName" class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Registration Date :</label>
												<div class="input-group date">

													<input name="doj" type="date" disabled="disabled" id="doj"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>CIN No. :</label> <input name="cin" type="text"
													value="U65990MH2022PLN385483" disabled="disabled" id="cin"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="col-md-3">
											<div class="form-group">
												<label>PAN :</label> <input name="pan" type="text"
													value="AAHCE1130D" disabled="disabled" id="pan"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>TAN :</label> <input name="tan" type="text"
													value="NGPE01436B" disabled="disabled" id="tan"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>GSTIN :</label> <input name="gst" type="text"
													disabled="disabled" id="gst" class="form-control"
													autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Nominal Share Value :</label> <input
													name="shareValue" type="text" value="10"
													disabled="disabled" id="shareValue" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Address :</label> <input name="address" type="text"
													value="PLOT NO 36 DATE LAYOUT JAYTALA ROAD NAGPUR"
													disabled="disabled" id="address" class="form-control"
													autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>State :</label> <select name="state"
													disabled="disabled" id="state" class="form-control select2"
													style="width: 100%;">
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
													<option selected="selected" value="MAHARASHTRA">MAHARASHTRA</option>
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
												</select>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Pin Code :</label> <input name="pinCode" type="text"
													value="440036" disabled="disabled" id="pinCode"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Email ID :</label> <input name="email" type="text"
													value="EQFIOFFICIAL@GMAIL.COM" disabled="disabled"
													id="email" class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Authorized Capital :</label> <input
													name="authorizedcapital" type="text" value="2100000"
													disabled="disabled" id="authorizedcapital"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>PaidUp Capital :</label> <input name="paidup"
													type="text" value="2100000" disabled="disabled" id="paidup"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>NOF :</label> <input name="landLine" type="text"
													value="0" disabled="disabled" id="landLine"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>Mobile No :</label> <input name="mobile" type="text"
													value="8975689756" disabled="disabled" id="mobile"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="clearfix"></div>
										<div class="col-md-3">
											<div class="form-group">
												<label>TDS (With PAN) :</label> <input name="tDSWithPAN"
													type="text" value="0" disabled="disabled" id="TDSWithPAN"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>TDS (Without PAN) :</label> <input
													name="tDSWithoutPAN" type="text" value="0"
													disabled="disabled" id="TDSWithoutPAN" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>TAX Deduction:</label> <input name="tax" type="text"
													value="0" disabled="disabled" id="tax" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label>TAX Deduction(Seniour) :</label> <input name="taxSr"
													type="text" value="0" disabled="disabled" id="taxSr"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>
										<div class="clearfix margin-bottom-10"></div>
										<br>
										<div class="row col-md-12">
											<button type="submit"
												class="btn btn-info pull-right margin-r-5" id="updateBtn"
												disabled>Update</button>
										</div>
									</div>
								</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Logo</h3>
								<p class="help-block">Maximum 10MB</p>
							</div>
							<div class="box-body">
								<div class="col-md-3">
									<div class="form-group">
										<div class="text-center">
											<img id="preview" class="profile-user-img"
												src="upload_Files/${Logo}" alt="Image"
												style="height: 110px; width: 110px;"> <input
												type="file" name="filetag" id="filetag" />
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Signature</h3>
								<p class="help-block">Maximum 10MB</p>
							</div>
							<div class="box-body">
								<div class="col-md-3">
									<div class="form-group">
										<div class="text-center">
											<img id="secondpreview" class="profile-user-img"
												src="upload_Files/${Signature}" alt="Image"
												style="height: 110px; width: 110px;"> <input
												type="file" name="secondfiletag" id="secondfiletag" />
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		</form>
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
	
<script>
	$(document).ready(function() {
	$("#myForm").submit(function(e) {
   	e.preventDefault(); // prevent default form submit action
   
   	var formData = new FormData($(this)[0]); // create new FormData object from form data
   //console.log(formData);
   
   $.ajax({
       url: "updateCompanyDetails",
       type: "POST",
       data: formData,
       processData: false,
       contentType: false,
       success: function(data) {
    	   window.location.href = "CompanyDetails";
       },
       error: function(error) {
           console.log(error);
       }
   });
});
});
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

</body>
</html>