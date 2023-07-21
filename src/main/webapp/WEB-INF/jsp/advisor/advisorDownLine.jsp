<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post"
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AdvisorTree.aspx"
		id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Advisor Downline</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>
								Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Tree</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Search Box</h3>
								</div>
								<div class="box-body">
									<div class="clearfix"></div>
									<div class="col-md-3">
										<div class="form-group">
										<!-- onchange="searchAdvisorDownline();" -->
											<label>Advisor Code :</label> <input
												name="advisorSearchbyCode" type="text"
												id="advisorSearchbyCode" class="form-control"
												Placeholder="Enter Advisor Code" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Advisor Name :</label> <input name="advisorName"
												type="text" readonly="readonly" id="advisorName"
												class="form-control" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Position :</label> <input name="position" type="text"
												readonly="readonly" id="position" class="form-control"
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label></label> <a id="ContentPlaceHolder1_btnSearch"
												class="btn btn-success margin-20"
												href="javascript:searchAdvisorDownline(); gettableAdvisor()"> <span
												class="fa fa-search"></span> SEARCH
											</a>
											<!-- href="javascript:getByAdvisorCode();gettableAdvisor()" -->
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<!-- <a href="#ContentPlaceHolder1_tvChain_SkipLink"><img
										alt="Skip Navigation Links."
										src="../WebResource36b9.gif?d=n6roid9SKBH96J-M01DIwXu8AFTlJ0NKCwSCBAM-p8e2lSHer2vgGuJjw3jVuvLHAQmmzlIaZuZsC-ewAFbHN546Bjo9RqSioCmd2B2TAq01&amp;t=637290976998988531"
										width="0" height="0" style="border-width: 0px;" /></a> -->
									<div id="ContentPlaceHolder1_tvChain"
										style="font-size: Medium;"></div>
									<a id="ContentPlaceHolder1_tvChain_SkipLink"></a>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" id="ContentPlaceHolder1_gdvData"
										style="width: 100%; border-collapse: collapse;"
										id="shareCertificate">
										<caption></caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">SlNo</th>
											<th scope="col">Advisor Code</th>
											<th scope="col">Advisor Name</th>
											<th scope="col">Position</th>
										</tr>
										<tbody id="tableBodyAdvisor">

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

	</form>
</body>
</html>
