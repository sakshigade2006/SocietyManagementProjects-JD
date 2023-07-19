<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="getthevalueindropdownofshareCertificate();">
	<!--    <form method="post" -->
	<!--       action="ShareCertificateGetDetails" -->
	<!--       id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Share Certificate</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Certificate</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-warning">
							<div class="box-header with-border">
								<h3 class="box-title">Search Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Select by Code<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<select name="id" id="id" onchange="getShareCertificate();"
												class="form-control select2" style="width: 100%;">
												<option value=""></option>
											</select>
										</div>
									</div>
								</div>
								<div class="box-footer pull-right">
									<div class="row col-md-12">
										<!--                                  <a id="ContentPlaceHolder1_btnSearch" href="javascript:getShareCertificate()" class="btn btn-success" -->
										<!--                                     class="fa fa-search"></span> SEARCH</a> -->
										<!--                                       <button id="btnSave" class="btn btn-success" onclick="getShareCertificate();"><span class="fa fa-search" ></span> Search </button> -->
									</div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" id="ContentPlaceHolder1_gdvData"
										style="width: 100%; border-collapse: collapse;"
										id="shareCertificate">
										<caption>Share Data List</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">INO</th>
											<th scope="col">M.CODE</th>
											<th scope="col">M.NAME</th>
											<th scope="col">SHARE AMT</th>
											<th scope="col">NO OF SHARE</th>
											<th scope="col">CERTIFICATE NO</th>
											<th scope="col">Action</th>
										</tr>
										<tbody id="tableBodyShareCertificate">
										</tbody>
									</table>
									<div></div>
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
	<script src="dist/js/memberShare.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!--    </form> -->
</body>
<!-- Dk/Admin/ShareCertificate.aspx EDB D 09:26:57 GMT -->
</html>