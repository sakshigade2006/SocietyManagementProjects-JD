<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini" onload="GetBranchNameInTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
		
		<div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Transfer Statement</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Statement</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Search Information</h3>
							</div>
							<!-- <form method="get" action="fetchAllData" id="form1"
								modelAttribute="ViewPaymentDetails"> -->
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Select Branch</label> <select name="selectbraanch"
												id="selectbranch" class="form-control" style="width: 100%;">
												<option value="" selected="selected">--Select Branch--</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>From Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="fromdate" type="date" id="fromdate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>To Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="todate" type="date" id="todate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label></label>
											<input type="submit" name="button1" value="View" id="button1" onclick="getTransferStatement();" class="btn btn-success margin-20" />
                                  			<input type="submit" name="button2" value="Show Details" id="button2" onclick="getTransferStatement123();" class="btn btn-warning margin-20" />
										</div>
									</div>
								</div>
						</div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<h3 class="box-title">Search Result</h3>
								<div class="box-tools pull-right">
								</div>
							
							<section id="table1">
								<table cellspacing="0" cellpadding="3" rules="all" 
                              		class="display nowrap table table-hover table-striped table-bordered" 
                              		border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;"
                              		id="shareCertificate">
                                 <caption>
                                 Share Data List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th>Serial No.</th>
									<th>Recieved</th>
									<th>Payment</th>
                                 </tr>
                                 <tbody id="tableBody">
                                    
      							 </tbody>
                              </table>
                          </section>
                          
                          <section id="table2">
								<table cellspacing="0" cellpadding="3" rules="all" 
                              		class="display nowrap table table-hover table-striped table-bordered" 
                              		border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;"
                              		id="shareCertificate">
                                 <caption>
                                 Share Data List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th>Sr no.</th>
											<th>Branch Name</th>
											<th>Txn Date</th>
											<th>Debit</th>
											<th>Credit</th>
											<th>A/C no.</th>
											<th>Member Code</th>
											<th>Section</th>
                                 </tr>
                                 <tbody id="tableBody1">
                                    
      							 </tbody>
                              </table>
                          </section>
						</div>
						<div class="box-body">
                        	<div class="clearfix margin-bottom-10"></div>
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
	$(document).ready(function(){
		$("#table1").hide();
		$("#table2").hide();
		
		$("#button1").click(function(){
			$("#table1").show();
			$("#table2").hide();
		});
		
		$("#button2").click(function(){
			$("#table2").show();
			$("#table1").hide();
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
	<script src="dist/js/GetAllBranch.js"></script>
	<script src="dist/js/FetchRecord.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
	<!-- </form> -->
</body>
<!-- Dk/Admin/TransferBook.aspx by <!-----EDB------>
</html>
