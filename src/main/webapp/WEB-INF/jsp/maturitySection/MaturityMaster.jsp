<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
</style>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

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
				<h1 id="ContentPlaceHolder1_IdHeader">Maturity Configure</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Maturity Configure</li>
				</ol>
			</section>
			
			<section class="content">
				<div class="row">
					<form method="post" action="/maturityMaster1" id="maturityMasterForm" 
						name="maturityMasterForm" modelAttribute="dailyDeposite">
						<div class="col-md-12">
							<div class="box box-success box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">Daily Deposit</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Code <strong style="color: Red">*</strong></label>
											<select name=dplancode id="dplancode" class="form-control"
												style="width: 100%;">
												<option value="DRD ADVANTAGE">DRD ADVANTAGE</option>
												<option value="RDR ADVANTAGE">RDR ADVANTAGE</option>
											</select> <span id="dplancodemsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Plan Code</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Inst. From<strong style="color: Red">*</strong></label>
											<input name="dinstfrom" type="text" id="dinstfrom"
												class="form-control" PlaceHolder="Enter Inst. From"
												onpaste="return false" /> <span id="dinstFrommsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Inst. From</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Inst. To<strong style="color: Red">*</strong></label>
											<input name="dinstto" type="text" id="dinstto"
												class="form-control" PlaceHolder="Enter Inst. To"
												onpaste="return false" /> <span id="dinstTomsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Inst.To</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>ROI<strong style="color: Red">*</strong></label> <input
												name="droi" type="text" id="droi" class="form-control"
												PlaceHolder="Enter ROI" onpaste="return false"
												autocomplete="off" /> <span id="droimsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												ROI</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Deduction<strong style="color: Red">*</strong></label>
											<input name="ddeduction" type="text" id="ddeduction"
												class="form-control" PlaceHolder="Enter Deduction"
												onpaste="return false" autocomplete="off" /> <span
												id="ddeductionmsg	"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Deduction</span>
										</div>
									</div>
									<div class="col-md-1">
										<div class="form-group row">
											<button type="submit" name="savebtn" value="Save"
												id="savebtn" class="btn btn-success pull-right margin-20">Save</button>
										</div>
									</div>
								</div>
								<div class="box-body">
									<div class="row">
										<div class="col-md-12">
											<div>
												<%-- <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#3CB371;">
                                 	
                                    	<th scope="col">Plan Code</th>
                		 				<th scope="col">Inst. From</th>
                		 				<th scope="col">Inst. To</th>
                		 				<th scope="col">ROI</th>
                		 				<th scope="col">Deduction</th>
                		 	
                                 	</tr>
                                  	<tbody id="table">
      							  	</tbody>
                              	</table> --%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			  </section>

			 <section>
				<div class="row">
					<form method="post" action="/maturityMaster2" id="" 
						name="" modelAttribute="RecurringDeposite">
						<div class="col-md-12">
							<div class="box box-warning box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">Recurring Deposit</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Code <strong style="color: Red">*</strong></label>
											<select name="rplancode" id="rplancode" class="form-control"
												style="width: 100%;">
												<option value="GROW">GROW</option>
												<option value="GROW +">GROW +</option>
												<option value="ROYAL +">ROYAL +</option>
											</select> <span id="rplancodemsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Plan Code</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Inst. From<strong style="color: Red">*</strong></label>
											<input name="rinstfrom" type="text" id="rinstfrom"
												class="form-control" PlaceHolder="Enter Inst . From"
												onkeypress="return isNumberOnlyKey(this, event);"
												onpaste="return false" /> <span id="rinstfrommsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Inst. From</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Inst. To<strong style="color: Red">*</strong></label>
											<input name="rinstto" type="text" id="rinstto"
												class="form-control" PlaceHolder="Enter Inst.To"
												onkeypress="return isNumberOnlyKey(this, event);"
												onpaste="return false" /> <span id="rinsttomsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Inst.To</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>ROI<strong style="color: Red">*</strong></label> <input
												name="rroi" type="text" id="rroi" class="form-control"
												PlaceHolder="Enter ROI" onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" /> <span id="rroimsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												ROI</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Deduction<strong style="color: Red">*</strong></label>
											<input name="rdeduction" type="text" id="rdeduction"
												class="form-control" PlaceHolder="Enter Deduction"
												onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" /> <span id="rdeductionmsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Deduction</span>
										</div>
									</div>
									<div class="col-md-1">
										<div class="form-group row">
											<button type="submit" name="savebtn" value="Save"
												onclick="return recurringDeposite();" id="savebtn"
												class="btn btn-success pull-right margin-20">Save</button>
										</div>
									</div>
								</div>
								<div class="box-body">
									<div class="row">
										<div class="col-md-12">
											<div>
												<%-- <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#FFA500;">
                                 	
                                    	<th scope="col">Plan Code</th>
                		 				<th scope="col">Inst. From</th>
                		 				<th scope="col">Inst. To</th>
                		 				<th scope="col">ROI</th>
                		 				<th scope="col">Deduction</th>
                		 				
                                 	</tr>
                                  	<tbody id="table">
      							  	</tbody>
                              	</table> --%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</section>

			<section>
				<div class="row">
					<form method="post" action="/maturityMaster3" id="" 
						name="" modelAttribute="FixedDeposite">
						<div class="col-md-12">
							<div class="box box-danger box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">Fixed Deposit</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Code <strong style="color: Red">*</strong></label>
											<select name="fplancode" id="fplancode" class="form-control"
												style="width: 100%;">
												<option value="ROYAL FI">ROYAL FI</option>
												<option value="ROYAL FIX">ROYAL FIX</option>
												<option value="WEALTH 1">WEALTH 1</option>
												<option value="WEALTH 3">WEALTH 3</option>
												<option value="WEALTH 5">WEALTH 5</option>
											</select> <span id="fplancodemsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Plan Code</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Months From <strong style="color: Red">*</strong></label>
											<input name="fmonthfrom" type="text" id="fmonthfrom"
												class="form-control" PlaceHolder="Enter Monthe.From "
												onkeypress="return isNumberOnlyKey(this, event);"
												onpaste="return false" /> <span id="fmonthfrommsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Monthe From</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Months To<strong style="color: Red">*</strong></label>
											<input name="fmonthto" type="text" id="fmonthto"
												class="form-control" PlaceHolder="Enter Months.To"
												onkeypress="return isNumberOnlyKey(this, event);"
												onpaste="return false" /> <span id="fmonthtomsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Months. To</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>ROI<strong style="color: Red">*</strong></label> <input
												name="froi" type="text" id="froi" class="form-control"
												PlaceHolder="Enter ROI" onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" /> <span id="froimsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												ROI</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Deduction<strong style="color: Red">*</strong></label>
											<input name="fdeduction" type="text" id="fdeduction"
												class="form-control" PlaceHolder="Enter Deduction"
												onpaste="return false"
												onkeypress="return isNumberKey(this, event);"
												autocomplete="off" /> <span id="fdeductionmsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Deduction</span>
										</div>
									</div>
									<div class="col-md-1">
										<div class="form-group row">
											<button type="submit" name="savebtn" value="Save"
												onclick="return fixesDeposite();" id="savebtn"
												class="btn btn-success pull-right margin-20">Save</button>
										</div>
									</div>
								</div>
								<div class="box-body">
									<div class="row">
										<div class="col-md-12">
											<div>
												<%-- <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#CD5C5C;">
                                 	
                                    	<th scope="col">Plan Code</th>
                		 				<th scope="col">Months From </th>
                		 				<th scope="col">Months To</th>
                		 				<th scope="col">Inst. To</th>
                		 				<th scope="col">Deduction</th>
                		 				
                                 	</tr>
                                  	<tbody id="tableBody">
      							  	</tbody>
                              	</table> --%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</section>

			<section>
				<div class="row">
					<form method="post" action="/maturityMaster4" id="" 
						name="" modelAttribute="MISDeposite">
						<div class="col-md-12">
							<div class="box box-info box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">MIS Deposit</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Plan Code <strong style="color: Red">*</strong></label>
											<select name="misplancode" id="mISplancode" 
											class="form-control" style="width: 100%;">
												<option value="">ALL</option>
												<option value="MIS-12">MIS-12</option>
											</select> <span id="mISplancodemsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Plan Code</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Months. From<strong style="color: Red">*</strong></label>
											<input name="mISmonthfrom" type="text" id="mISmonthfrom"
												class="form-control" PlaceHolder="Enter Monthe. From " /> <span
												id="mISmonthfrommsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Monthe From</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Months. To<strong style="color: Red">*</strong></label>
											<input name="mISmonthto" type="text" id="mISmonthto"
												class="form-control" PlaceHolder="Enter Months. To" /> <span
												id="mISmonthtomsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Months.To</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>ROI<strong style="color: Red">*</strong></label> <input
												name="mISROI" type="text" id="mISROI" class="form-control"
												PlaceHolder="Enter ROI" /> <span id="mISROImsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												ROI</span>
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<label>Deduction<strong style="color: Red">*</strong></label>
											<input name="mISdeduction" type="text" id="mISdeduction"
												class="form-control" PlaceHolder="Enter Deduction" /> <span
												id="mISdeductionmsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Deduction</span>
										</div>
									</div>
									<div class="col-md-1">
										<div class="form-group row">
											<button type="submit" name="savebtn" value="Save"
												onclick="return msiDeposite(); " id="savebtn"
												class="btn btn-success pull-right margin-20">Save</button>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div>
												<%-- <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#00CED1;">
                                 	
                                    	<th scope="col">Plan Code</th>
                		 				<th scope="col">Months From </th>
                		 				<th scope="col">Months To</th>
                		 				<th scope="col">Inst. To</th>
                		 				<th scope="col">Deduction</th>
                		 	
                                 	</tr>
                                  	<tbody id="tableBody">
                                  	
      							  	</tbody>
                              	</table> --%>
												<div class="box-body"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
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
	<script src="dist/js/MaturityMaster.js"></script>
	<script src="dist/js/ValidationOfMaturitySectionMaster.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>


</body>

<!-- Dk/Admin/PreMaturity.aspx EDB D 09:27:20 GMT -->
</html>
