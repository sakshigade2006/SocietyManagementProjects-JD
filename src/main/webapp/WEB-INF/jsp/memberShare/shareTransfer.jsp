<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<%
   String status = (String)request.getAttribute("status");
   if(status!=null &&  status.equals("success")){
   	%>
<script>
   alert("Saved Successfully");
</script>
<%
   } 
   %>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="getShareTableData(); getTheValueInsahreTransferInTheDropDown();">
	<!-- 	<form method="post" action="updateShareTransfer" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Share Transfer</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<input type="hidden" name="id" id="id">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Share Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label for="memberData" class="col-sm-4 control-label">Search
											by Code <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="memberData" id="memberData"
												class="form-control select2" style="width: 100%;"
												onchange="callback();toggleDisabledFields()" required>
												<option value="">Select Member</option>
											</select> <span id="memberData"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Member Code</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPreviousShareAmount"
											class="col-sm-4 control-label">Member Name <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="memberName" type="text" readonly="readonly"
												id="memberName" class="form-control"
												Placeholder="Enter Member Name" required /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Member Name</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtDateofJoin" class="col-sm-4 control-label">Date
											Of Join</label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="doj" type="date" readonly="readonly"
													id="registrationDate" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPreviousShareAmount"
											class="col-sm-4 control-label">Previous Balance</label>
										<div class="col-sm-8">
											<input name="previousBalance" type="text"
												id="previousBalance" class="form-control"
												Placeholder="Enter Previous Share Balance" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtPreviousShareNo" class="col-sm-4 control-label">Previous
											No Of Share</label>
										<div class="col-sm-8">
											<input id="previousNoOfShared" name="previousNoOfShared"
												type="text" id="previousShareNo" class="form-control"
												Placeholder="Enter Previous No Of Share" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtFaceValue" class="col-sm-4 control-label">Face
											Value</label>
										<div class="col-sm-8">
											<input name="faceValue" type="text" value="10" disabled
												id="faceValue" class="form-control"
												Placeholder="Enter Face Value" readonly="readonly" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label for="txtBranch" class="col-sm-4 control-label">Branch
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="branchName" id="branchName"
												class="form-control" style="width: 100%;" required>
												<option>Select Criteria</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtTransferDate" class="col-sm-4 control-label">Transfer
											Date <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<div class="input-group date">
												<input name="transferDate" type="date" id="transferDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" required />
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label for="ddlAllotedFrom" class="col-sm-4 control-label">Share
											Alloted From <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="shareAllotedfrm2" id="shareAllotedfrm2"
												class="form-control select2" style="width: 100%;" required>
												<option>Select Share Alloted From</option>
											</select> <span id="shareAllotedfrm2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Share Alloted</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtSharebalance" class="col-sm-4 control-label">Share
											Balance</label>
										<div class="col-sm-8">
											<input name="sharebalance" type="text" disabled
												id="sharebalance" class="form-control"
												Placeholder="Enter Share balance" />
										</div>
									</div>
									<div class="form-group row">
										<label for="txtTransferAmount" class="col-sm-4 control-label">Transfer
											Amount <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="transferAmount" type="text" id="transferAmount"
												class="form-control" Placeholder="Enter Transfer Amount"
												required /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Transfer Amount</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="txtNoOfShare" class="col-sm-4 control-label">No.
											of Share <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="noOfShared" type="text" disabled
												placeholder="Enter No. Of Share" id="noOfShared"
												class="form-control" required /> <span
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												No. of Share</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Payment Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Remarks</label>
										<div class="col-sm-8">
											<textarea name="remarks" rows="2" cols="20" id="remarks"
												class="form-control" Placeholder="Enter Remarks if any">
                                    </textarea>
										</div>
									</div>
								</div>
								<div class="col-md-6"></div>
							</div>
							<div class="box-footer">
								<div class="row col-md-12">
									<!--  <button type="button" name="enableDisabledFields"
											value="New" id="enableDisabledFields"
											onclick="toggleDisabledFields()"
											class="btn btn-info pull-right margin-r-5" >New</button>
											-->
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
										value="Save" onclick="saveOPerationinShareTransfer();"
										id="ContentPlaceHolder1_btnSave"
										class="btn btn-success pull-right margin-r-5" />
								</div>
							</div>
						</div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<!-- 										<table  cellspacing="0" rules="all"  -->
									<!--                               class="display nowrap table table-hover table-striped table-bordered" border="1" -->
									<!--                                 style="width:100%;border-collapse:collapse;"> -->
									<!--                                 <tr style="color:White;background-color:#008385;"> -->
									<!--                                     <th scope="col">S/N</th> -->
									<!--                                     <th scope="col">BRANCH NAME</th> -->
									<!--                                     <th scope="col">Member Name</th> -->
									<!--                                     <th scope="col">Share Range</th> -->
									<!--                                     <th scope="col">Cerficate No</th> -->
									<!--                                      <th scope="col">Action</th> -->
									<!--                                  </tr> -->

									<!-- 										<table id="shareTableBody" cellspacing="0" rules="all"  -->
									<!--                               class="display nowrap table table-hover table-striped table-bordered" border="1" -->
									<!--                                 style="width:100%;border-collapse:collapse;"> -->

									<!-- 										</table> -->
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption>Maturity Application</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">S/N</th>
											<th scope="col">BRANCH NAME</th>
											<th scope="col">Member Name</th>
											<th scope="col">Share Range</th>
											<th scope="col">Cerficate No</th>
											<th scope="col">Action</th>
										</tr>
										<tbody id="shareTableBody">

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
	<script src="dist/js/memberShare.js"></script>

	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>