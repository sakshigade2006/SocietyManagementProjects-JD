<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.GroupMaster"%>
<%@page import="com.society.application.model.BranchMaster"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="getAllLoanNameOfGroupLoanSearch();">
	<form method="post"
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/GoldLoanSearch.aspx"
		id="form1">
<%
				List<GroupMaster> allGroupMaster = (List<GroupMaster>) request.getAttribute("allGroupMaster");
				%>
				<%
				List<BranchMaster> branchListList = (List<BranchMaster>) request.getAttribute("branchList");
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
					<h1 id="ContentPlaceHolder1_IdHeader">Group Loan Search</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Search</li>
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
									<div class="col-md-3">
										<div class="form-group">
											<label>Branch :</label> <select
												name="ctl00$ContentPlaceHolder1$ddlBranch"
												id="ContentPlaceHolder1_ddlBranch"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value=""></option>
														<%
													if (branchListList != null && !branchListList.isEmpty()) {
														for (BranchMaster group : branchListList) {
													%>
													<option value="<%=group.getName()%>"><%=group.getName()%></option>
													<%
													}
													}
													%>
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
												<input name="fDate" type="date"
													 id="fDate"
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
												<input name="tDate" type="date"
													 id="tDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Applicant Name :</label> <input
												name="memberName"
												type="text" id="memberName"
												class="form-control" Placeholder="Enter Applicant Name"
												autocomplete="off" />
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Loan ID :</label> <select name="ctl00$ContentPlaceHolder1$ddlSearchLoanID"
													id="searchGroupID1"
													
													
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value=""></option>
														<%
													if (allGroupMaster != null && !allGroupMaster.isEmpty()) {
														for (GroupMaster group : allGroupMaster) {
													%>
													<option value="<%=group.getId()%>"><%=group.getId()%></option>
													<%
													}
													}
													%>
												</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Member Code :</label> <input
												name="searchMemberCode" type="text"
												id="searchMemberCode" class="form-control"
												Placeholder="Enter Member Code Example 001" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Name:</label> <select name="planeName"
												id="planeName" class="form-control" style="width: 100%;"
												onchange="getTableDataByPlanName();">
												<option value="" selected="selected">Select</option>
												<!-- Add your options here -->
											</select>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Advisor Code :</label> <input
												name="advisorCode" type="text"
												id="advisorCode" class="form-control"
												Placeholder="Enter Advisor Code" autocomplete="off" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="text-center">
										<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success"
										href="javascript:displayGroupLoanApplicationDetailsShowTable()"><span
											class="fa fa-search"
											></span> SEARCH</a> 
									</div>
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
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Id</th>
												<th scope="col">Group Name</th>
												<th scope="col">Op Date</th>
												<th scope="col">Branch Name</th>
												<th scope="col">Group Leader Name</th>
												<th scope="col">Mobile</th>
												<th scope="col">GRoup Adress</th>
												
												<th scope="col">Employee</th>
												<th scope="col">Created Time</th>
												<th scope="col">Created Date</th>
												
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
        <script>
        function getTableDataByPlanName() {
        var planeName = $('#planeName').val();

        var input = {
            planeName: planeName
        };

        $.ajax({
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(input),
            url: '${pageContext.request.contextPath}/getGroupMasterByPlanName',
            success: function(data) {
                var tableData = '';

                for (var i = 0; i < data.length; i++) {
                    var value = data[i];
                    tableData += '<tr>' +
                        '<td>' + value.id + '</td>' +
                        '<td>' + value.groupName + '</td>' +
                        '<td>' + value.opDate + '</td>' +
                        '<td>' + value.csp + '</td>' +
                        '<td>' + value.grLeaderName + '</td>' +
                        '<td>' + value.mobile + '</td>' +
                        '<td>' + value.grAddr + '</td>' +
                        '<td>' + value.employee + '</td>' +
                        '<td>' + value.cTime + '</td>' +
                        '<td>' + value.createdDate + '</td>' +
                        '</tr>';
                }

                $('#tableBody').html(tableData);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Error:", errorThrown);
            }
        });
    }
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
	</form>
</body>

<!-- Dk/Admin/GoldLoanSearch.aspx EDB D 09:27:12 GMT -->
</html>