<jsp:include page="../header.jsp" />
<style>
table, th, td {
	border: 1px solid black;
}
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/EmployeeCollection.aspx" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Advisor Collection Report</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Advisor Collection</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Search information</h3>
							</div>
							<div class="box-body">
								<div class="col-md-2">
									<div class="form-group">
										<label>Business Type:</label> <select name="businessType"
											id="businessType" class="form-control" style="width: 100%;">
											<option value="" selected="selected">-Select--</option>
											<option value="NEW ADD RENEW">NEW ADD RENEW</option>
											<option value="ONLY NEW">ONLY NEW</option>
											<option value="ONLY RENEW">ONLY RENEW</option>
										</select>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>Advisor Code :</label> <input name="advisorCode"
											type="text" id="advisorCode" class="form-control"
											Placeholder="Enter Advisor Code" autocomplete="off" />
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>From Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="fDate" type="date" id="fDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label>To Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="tDate" type="date" id="tDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label></label>
										<button type="submit" onclick="getBusinessType(); "
											class="btn btn-success pull-right margin-20">Search</button>
									</div>
								</div>
								<div class="clearfix margin-bottom-10"></div>
							</div>
						</div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<h3 class="box-title">Search Result</h3>
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" style="width: 100%; border-collapse: collapse;">
									<caption>Advisor Collection Report</caption>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">Id</th>
										<th scope="col">Branch type</th>
										<th scope="col">Advisor Code</th>
										<th scope="col">DATE</th>
									</tr>
									<tbody id="tableBody">

									</tbody>
								</table>
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
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!--         Fetchrecord -->
	<script src="dist/js/FetchRecord.js"></script>

	<!--     </form> -->
</body>

<!-- Dk/Admin/EmployeeCollection.aspx EDB D 09:27:21 GMT -->
</html>
