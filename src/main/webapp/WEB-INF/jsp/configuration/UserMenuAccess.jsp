<jsp:include page="../header.jsp" />
<body onload="getAllUserToServiceMap();setUserIdInSelectOption()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="userToServiceMap"
		modelAttribute="userToServiceMap" name="userToServiceMap" id="form1">
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
            Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
            //]]>
         </script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">User Menu Access</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Menu Access</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-6">
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Select User ID</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group">
											<label>User ID <strong style="color: Red">*</strong></label>
											<select name="userId" id="userId"
												class="form-control select2" style="width: 100%;">
											</select>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<!--  <button type="button" name="ctl00$ContentPlaceHolder1$btnGO" value="GO >>" 
                              id="ContentPlaceHolder1_btnGO" class="btn btn-success pull-right margin-r-5">GO >></button> -->
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-danger" style="margin-top: 0; padding: 10px;">
								<div class="box-header with-border">
									<h3 class="box-title">Select Menu List</h3>
								</div>
								<div class="box-body">
									<div class="form-group">
										<div class="row">
											<div id="ContentPlaceHolder1_pnlMenu"
												style="overflow-y: scroll; margin: auto">
												<table id="ContentPlaceHolder1_gdvUser_myServiceList"
													cellpadding="0"
													style="overflow-y: auto; overflow-x: hidden;"
													cellspacing="0" style="border-width:0;">
												</table>
											</div>
										</div>
										<a id="ContentPlaceHolder1_treeMenu_SkipLink"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<div class="row col-md-12">
								<button type="button" name="ctl00$ContentPlaceHolder1$btnSave"
									value="Save Menu" id="ContentPlaceHolder1_btnSave"
									class="btn btn-info pull-right margin-r-5"
									onclick="submitUserServiceMap()">Save Menu</button>
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	</form>
</body>
<!-- Dk/Admin/UserMenuAccess.aspx EDB D 09:26:52 GMT -->
</html>