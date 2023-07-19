<%@page import="com.society.application.model.ClientMaster"%>
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.Loan"%>
<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="com.society.application.model.LoanMaster"%>
<jsp:include page="../header.jsp" />
<script src="dist/js/customJs.js"></script>
<script src="dist/js/investmentSection.js"></script>
<script src="dist/js/loanModule.js"></script>
<script src="dist/js/goldLoanMaster.js"></script>
<script src="dist/js/groupMasterUtilsJs.js"></script>
<script src="dist/js/LoanModuleJs.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post"
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/ClosedLoanReport.aspx?Type=Gold"
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
			<%
			List<ClientMaster> memberList = (List<ClientMaster>) request.getAttribute("memberList");
			%>
			<%
			List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
			%>
			<%
			List<LoanMaster> loanMasterList = (List<LoanMaster>) request.getAttribute("loanPlanMaster");
			%>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Loan Close Report</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Close Report</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Search Box</h3>
								</div>
								<%
								List<Loan> loanList = (List<Loan>) request.getAttribute("loanList");
								%>
								<div class="box-body">
									<div class="col-md-2">
										<div class="form-group">
											<label>Loan Id</label> <select name="searchLoanId1"
												onchange="getByGoldLoanIdRegularEmiRepayment()"
												id="searchLoanId1" class="form-control select2"
												style="width: 100%;">
												<!-- onchange="getByLoanIdIrRegularEmiRepayment()" -->
												<option selected="selected" value="">Select Loan Id
												</option>
												<%
												if (loanList != null && !loanList.isEmpty()) {
													for (Loan loan : loanList) {
												%>
												<option value="<%=loan.getId()%>"><%=loan.getId()%>
												</option>
												<%
												}
												}
												%>
											</select>
										</div>
									</div>
									<!-- 									<div class="col-md-2"> -->
									<!-- 										<div class="form-group"> -->
									<!-- 											<label>From Date :</label> -->
									<!-- 											<div class="input-group date"> -->
									<!-- 												<div class="input-group-addon"> -->
									<!-- 													<i class="fa fa-calendar"></i> -->
									<!-- 												</div> -->
									<!-- 												<input name="fDate" type="text" -->
									<!-- 													value="01/08/2022" id="fDate" -->
									<!-- 													class="form-control" -->
									<!-- 													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" -->
									<!-- 													data-mask="" /> -->
									<!-- 											</div> -->
									<!-- 										</div> -->
									<!-- 									</div> -->
									<!-- 									<div class="col-md-2"> -->
									<!-- 										<div class="form-group"> -->
									<!-- 											<label>To Date :</label> -->
									<!-- 											<div class="input-group date"> -->
									<!-- 												<div class="input-group-addon"> -->
									<!-- 													<i class="fa fa-calendar"></i> -->
									<!-- 												</div> -->
									<!-- 												<input name="tDate" type="text" -->
									<!-- 													value="01/08/2022" id="tDate" -->
									<!-- 													class="form-control" -->
									<!-- 													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" -->
									<!-- 													data-mask="" /> -->
									<!-- 											</div> -->
									<!-- 										</div> -->
									<!-- 									</div> -->
									<div class="col-md-2">
										<div class="form-group">
											<label></label> <a id="ContentPlaceHolder1_btnSearch"
												class="btn btn-success margin-20" href=""><span
												class="fa fa-search"></span> SEARCH</a>
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
									<table id="loanTable" cellspacing="0" cellpadding="3"
										rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<tr>
											<th>Field</th>
											<th>Value</th>
										</tr>
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
		<script>
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})
			})
		</script>
	</form>
</body>
</html>