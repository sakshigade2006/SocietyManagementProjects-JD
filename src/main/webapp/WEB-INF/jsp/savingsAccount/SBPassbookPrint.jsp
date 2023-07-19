<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.BankMaster"%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	onload="disable(); getAllAccountNo();" cz-shortcut-listen="true">
	<form method="post" action="" id="form1">
		<%
				List<BankMaster> bankList = (List<BankMaster>) request.getAttribute("bankMaster");
				%>
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
					<h1 id="ContentPlaceHolder1_IdHeader">Account Passbook</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Passbook</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details for Print</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-4">
											<div class="form-group">
												<label>Select by Account No.<strong
													style="color: Red">*</strong></label><select name="accountNo"
													id="accountNo" class="form-control select2"
													style="width: 100%;" onchange="showSavingsPassbookData();">
													<option value="">Select Acc.No</option>
												</select>
											</div>
										</div>
										<div class="col-md-8">
											<div class="form-group">
												<label></label> <input type="submit"
													name="ctl00$ContentPlaceHolder1$btnHeadline"
													value="Heading" id="ContentPlaceHolder1_btnHeadline"
													class="btn btn-danger pull-right margin-r-5 margin-20" />
												<input type="submit"
													name="ctl00$ContentPlaceHolder1$btnBook"
													value="Transaction" id="ContentPlaceHolder1_btnBook"
													class="btn btn-info pull-right margin-r-5 margin-20" /> <input
													type="submit" name="ctl00$ContentPlaceHolder1$btnFrontPage"
													value="Front Page" id="ContentPlaceHolder1_btnFrontPage"
													class="btn btn-warning pull-right margin-r-5 margin-20" />
												<input type="submit"
													name="ctl00$ContentPlaceHolder1$btnSave" value="Search"
													id="ContentPlaceHolder1_btnSave"
													class="btn btn-success pull-right margin-r-5 margin-20" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<div class="box-tools pull-right"></div>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption>Search</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">ID</th>
											<th scope="col">BANK NAME</th>
											<th scope="col">ACOOUNT NO</th>
											<th scope="col">MOBILE NO</th>
											<th scope="col">ADDRESS</th>
											<th scope="col">OPENING DATE</th>
											<th scope="col">OPENING BALANCE</th>
											<th scope="col">MAPPED BRANCH</th>
										</tr>
										<tbody id="tableBody">
										</tbody>
									</table>
									<div></div>
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
		<script src="dist/js/SavingsAccount.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2();
                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                //Date range picker
                $('#reservation').daterangepicker()
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
                $('#daterange-btn').daterangepicker(
                 {
                     ranges: {
                         'Today': [moment(), moment()],
                         'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                         'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                         'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                         'This Month': [moment().startOf('month'), moment().endOf('month')],
                         'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                     },
                     startDate: moment().subtract(29, 'days'),
                     endDate: moment()
                 },
                 function (start, end) {
                     $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
                 }
               )
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })
                //Money Euro
                $('[data-mask]').inputmask()

                //iCheck for checkbox and radio inputs
                $('span[type="checkbox"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                })
            })
        </script>
		<script>
        function disable(){
        document.getElementById("ContentPlaceHolder1_btnHeadline").disabled = true;
        document.getElementById("ContentPlaceHolder1_btnBook").disabled = true;
        document.getElementById("ContentPlaceHolder1_btnFrontPage").disabled = true;
        document.getElementById("ContentPlaceHolder1_btnSave").disabled = true;
        }
        </script>
	</form>
</body>
<!-- Dk/Admin/SBPassbookPrint.aspx EDB D 09:27:06 GMT -->
</html>
