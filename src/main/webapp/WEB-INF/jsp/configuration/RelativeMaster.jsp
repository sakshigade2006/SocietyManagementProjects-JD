<jsp:include page="../header.jsp" />
<body onload="getRelativeDetails()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="SaveRelation"
		modelAttribute="Relationrelative" name="Relationrelative" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Add Relative Master</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Add Relation</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Add New Relative</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>New Relation : <strong style="color: Red">*</strong></label>
											<input name="name" type="text" id="name" class="form-control" />
											<span id="fyNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												FY Name</span>
										</div>
									</div>
									<!--                            <div class="col-md-3"> -->
									<!--                               <div class="form-group"> -->
									<!--                                  <label>From Date :</label> -->
									<!--                                  <div class="input-group date"> -->
									<!--                                     <div class="input-group-addon"> -->
									<!--                                        <i class="fa fa-calendar"></i> -->
									<!--                                     </div> -->
									<!--                                     <input name="fDate" type="text" value="01/08/2022" id="fDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" /> -->
									<!--                                  </div> -->
									<!--                               </div> -->
									<!--                            </div> -->
									<!--                            <div class="col-md-3"> -->
									<!--                               <div class="form-group"> -->
									<!--                                  <label>To Date :</label> -->
									<!--                                  <div class="input-group date"> -->
									<!--                                     <div class="input-group-addon"> -->
									<!--                                        <i class="fa fa-calendar"></i> -->
									<!--                                     </div> -->
									<!--                                     <input name="tDate" type="text" value="01/08/2022" id="tDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" /> -->
									<!--                                  </div> -->
									<!--                               </div> -->
									<!--                            </div> -->
									<div class="col-md-2">
										<div class="form-group">
											<label></label>
											<button type="button" id="ContentPlaceHolder1_btnSearch"
												onclick="valdiateRelativeMaster()"
												class="btn btn-success  margin-20">
												<span class="fa fa-save"></span> Add
											</button>
										</div>
									</div>
									<div class="text-center"></div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">

											<tr style="color: White; background-color: #008385;">
												<th scope="col">SlNo</th>
												<th scope="col">Relations</th>
												<th scope="col">Delete</th>
											</tr>
											<tbody id="ContentPlaceHolder1_gdvData_fymaster">

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