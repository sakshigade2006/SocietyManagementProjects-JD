<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- Sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="PolNoDropdown();">
	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/MaturityApplication.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Maturity Application</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Maturity Application</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Search Box</h3>
							</div>
							<form id="myForm" name="myForm">
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Policy No. :</label> <select name="id" id="id"
												onchange="SearchThroughPolicyNumber();"
												class="form-control select2" style="width: 100%;">
												<option value="">Select</option>
											</select> <span id="policyNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Policy Number</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Member Name :</label> <input name="memberName"
												type="text" readonly="readonly" id="memberName"
												class="form-control" Placeholder="Enter Member Name"
												autocomplete="off" /> <span id="memberNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Member Name</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Policy Date:</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="policyDate" type="text" readonly="readonly"
													id="policyDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Application Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="applicationDate" type="date" value="01/08/2022"
													id="applicationDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
											<span id="applicationDateMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Application Date</span>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Remarks :</label> <input name="remarks" type="text"
												id="remarks" class="form-control"
												Placeholder="Enter Remarks" autocomplete="off" /> <span
												id="remarksMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Remarks</span>
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="text-center">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnAdd"
											value="Add" id="ContentPlaceHolder1_btnAdd"
											class="btn btn-success pull-right margin-r-5" />
							</form>
							<input onclick="SearchMaturityAppplicationFindAll();"
								type="button"
								name="ctl00$ContentPlaceHolder1$btnViewPolicyDetail"
								value=" View Policy Detail"
								id="ContentPlaceHolder1_btnViewPolicyDetail"
								class="btn btn-warning pull-right" />
						</div>
					</div>
				</div>
		</div>
		<!--             onclick="UpdatetheMaturityApllication(); -->
	</div>
	<div class="row">
		<div class="col-xs-12">
			<div class="box box-success">
				<div class="box-body">
					<div class="clearfix margin-bottom-10"></div>
					<div>
						<table cellspacing="0" cellpadding="3" rules="all"
							class="display nowrap table table-hover table-striped table-bordered"
							border="1" style="width: 100%; border-collapse: collapse;">
							<caption>Maturity Application</caption>
							<tr style="color: White; background-color: #008385;">
								<th scope="col">Id</th>
								<th scope="col">Policy No.</th>
								<th scope="col">Member Name</th>
								<th scope="col">Policy Date</th>
								<th scope="col">Application Date</th>
								<th scope="col">Remarks</th>
							</tr>
							<tbody id="tableBody">

							</tbody>
							    
						</table>
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

	<script>
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				console.log(formData);

				$.ajax({
					url : "MaturityAplicationUpdate",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Updated Successfully")
						window.location.href = "addMaturityApplication";
					},
					error : function(error) {
						alert(error)
						console.log(error);
					}
				});
			});
		});
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
	<!--  Maturity Account  -->
	<script src="dist/js/MaturitySectionSearch.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- </form> -->
</body>

<!-- Dk/Admin/MaturityApplication.aspx EDB D 09:27:20 GMT -->
</html>