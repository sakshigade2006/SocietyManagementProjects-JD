<%@page import="com.society.application.model.ClientMaster"%>
<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<% String status  = (String)request.getAttribute("status");%>
	<% if(status!=null && status.equals("success")){ %>
	<script type="text/javascript">
       	alert("Data Updated Successfully");
       </script>
	<%} %>
	<script type="text/javascript">
         var theForm = document.forms['form1'];
         if (!theForm) {
             theForm = document.form1;
         }
         
         function __doPostBack(eventTarget, eventArgument) {
             if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                 theForm.__EVENTTARGET.value = eventTarget;
                 theForm.__EVENTARGUMENT.value = eventArgument;
                 theForm.submit();
             }
         }
         
         function callback(ids){
         	var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getMember',
                 asynch: false,
                 success: function(data) {
                 	var x = Number(data.id)
                 	document.getElementById("id").value = x;
                     document.getElementById("ContentPlaceHolder1_txtMemberName").value = data.memberName;
                     document.getElementById("idMemberCode").value = x;
                     document.getElementById("ContentPlaceHolder1_txtMobile").value = data.phoneno;
                     document.getElementById("registrationDate").value = data.registrationDate;
                     document.getElementById("ContentPlaceHolder1_txtAadharNo").value = data.aadharNo;
                     document.getElementById("ContentPlaceHolder1_txtPAN").value = data.pan;   
                     document.getElementById("ContentPlaceHolder1_txtVoterNo").value = data.voterNo;
                     document.getElementById("ContentPlaceHolder1_txtRationNo").value = data.rationNo;
                     document.getElementById("ContentPlaceHolder1_txtDLNo").value = data.dLNo;
                     document.getElementById("ContentPlaceHolder1_txtBankName").value = data.bankName;
                     document.getElementById("ContentPlaceHolder1_txtBankBranch").value = data.bankBranch;
                     document.getElementById("ContentPlaceHolder1_txtAccountNo").value = data.accountNo;
                     document.getElementById("ContentPlaceHolder1_txtIFSC").value = data.iFSC;     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });	
         }
      </script>

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
		<form method="get" action="updateMember" modelAttribute="user"
			onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Add Client KYC</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">KYC</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by Code<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<%//List<Member> allMember = (List<Member>)request.getAttribute("allMember"); 
													List<ClientMaster> allMember = (List<ClientMaster>)request.getAttribute("allMember");
                                          if(allMember!=null && !allMember.isEmpty()){ %>
													<select
														name="ctl00$ContentPlaceHolder1$ddlSearchMemberCode"
														onchange="callback(this.value)"
														id="ContentPlaceHolder1_ddlSearchMemberCode"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">Select
															Criteria</option>
														<%for(/* Member member: allMember */
																ClientMaster member: allMember){ %>
														<option value="<%=member.getId()%>"><%=member.getMemberName() %>
															-
															<%=member.getBranchName() %></option>
														<%} 
                                             }%>
													</select>
												</div>
											</div>
										</div>
										<input type="hidden" id="id" name="id">
										<div class="col-md-4">
											<div class="form-group row">
												<label class="col-sm-4 control-label">KYC Verify By</label>
												<div class="col-sm-8">
													<span id="ContentPlaceHolder1_lblVerifyby"
														style="color: Red; font-weight: bold;"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Client Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Client Name :</label> <input name="memberName"
												type="text" value="" readonly="readonly"
												id="ContentPlaceHolder1_txtMemberName" class="form-control"
												Placeholder="Enter Member Name" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Client Code :</label> <input name="id" type="text"
												value="" readonly="readonly" id="idMemberCode"
												class="form-control" Placeholder="Enter Member Code"
												autocomplete="off" /> <span id="idMemberCode"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Member Code</span>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Mobile No. :</label> <input name="phoneno" type="text"
												value="" readonly="readonly"
												id="ContentPlaceHolder1_txtMobile" class="form-control"
												Placeholder="Enter Mobile No." autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Registration Date :</label>
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="registrationDate" type="text" value=""
													readonly="readonly" id="registrationDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Aadhar No. :</label> <input name="aadharNo"
												type="text" value="" readonly="readonly"
												id="ContentPlaceHolder1_txtAadharNo" class="form-control"
												Placeholder="Enter Aadhar No." autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>PAN No. :</label> <input name="pan" type="text"
												value="" readonly="readonly" id="ContentPlaceHolder1_txtPAN"
												class="form-control" Placeholder="Enter PAN No."
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Voter No. :</label> <input name="voterNo" type="text"
												readonly="readonly" id="ContentPlaceHolder1_txtVoterNo"
												class="form-control" Placeholder="Enter Voter No."
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Ration Card No. :</label> <input name="rationNo"
												type="text" id="ContentPlaceHolder1_txtRationNo"
												class="form-control" Placeholder="Enter Ration Card No."
												autocomplete="off" />
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-3">
										<div class="form-group">
											<label>DL No. :</label> <input name="dLNo" type="text"
												id="ContentPlaceHolder1_txtDLNo" class="form-control"
												Placeholder="Enter DL No." autocomplete="off" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<a id="ContentPlaceHolder1_lnkAverify"
												class="btn btn-success margin-20">Online
												Aadhar Verify</a> <a id="ContentPlaceHolder1_lnkVoterVerify"
												class="btn btn-warning margin-20">Online
												Voter Verify</a> <a id="ContentPlaceHolder1_lnkPANVerify"
												class="btn btn-info margin-20">Online PAN
												Verify</a>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<a id="ContentPlaceHolder1_lnkVerifyComplete"
												class="btn btn-danger margin-20">Click
												here to Verify Complete</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Bank Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-3">
										<div class="form-group">
											<label>Bank Name :</label> <input name="bankName" type="text"
												id="ContentPlaceHolder1_txtBankName" class="form-control"
												Placeholder="Enter Bank Name" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Bank Branch :</label> <input name="bankBranch"
												type="text" id="ContentPlaceHolder1_txtBankBranch"
												class="form-control" Placeholder="Enter Bank Branch"
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>Account No. :</label> <input name="accountNo"
												type="text" id="ContentPlaceHolder1_txtAccountNo"
												class="form-control" Placeholder="Enter Account No. "
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>IFSC Code :</label> <input name="iFSC" type="text"
												id="ContentPlaceHolder1_txtIFSC" class="form-control"
												Placeholder="Enter IFSC Code" autocomplete="off" />
										</div>
									</div>
									<div class="clearfix margin-bottom-10"></div>
									<div class="box-footer pull-right">
										<div class="row col-md-12"></div>
									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
												value="Save"
												onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;A&quot;, &quot;&quot;, false, false))"
												id="ContentPlaceHolder1_btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
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