<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<body onload="dropDownBranchNameData();" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	
	<script type="text/javascript">
         //<![CDATA[
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
         
         function callback(){
         	var branchName = document.getElementById("branchName");
         	var fDate =document.getElementById("fDate");
         	var tDate = document.getElementById("tDate");
         	var memberName = document.getElementById("memberName");
         	var memberCode = document.getElementById("memberCode");
         	var mobile = document.getElementById("mobile");
         	var aadharno = document.getElementById("aadharno");
         	var pan = document.getElementById("pan");
            	var input = {
                        "branchName": branchName.value,
                        "fDate":fDate.value,
                        "tDate":tDate.value,
                        "memberName":memberName.value,
                        "memberCode":memberCode.value,
                        "mobile":mobile.value,
                        "aadharno":aadharno.value,
                        "pan":pan.value
                }
            	$.ajax({
                    type:"post",
                    contentType: "application/json",
                    data: JSON.stringify(input),
                    url: 'getSerachMember',
                    asynch: false,
                    success: function(data) {
                    	for (var i = 0; i < data.length; i++) {
                    	document.getElementById("slNo").innerHTML = data[i].id;
                     document.getElementById("mumberCode").innerHTML = data[i].id;
                     document.getElementById("memberNameD").innerHTML = data[i].memberName;
                     document.getElementById("gender").innerHTML = data[i].gender;
                     document.getElementById("doj").innerHTML = data[i].dob;
                     document.getElementById("aadharNo").innerHTML = data[i].aadharNo;
                     document.getElementById("panNo").innerHTML = data[i].pan;
                     document.getElementById("phoneNo").innerHTML = data[i].phoneno;
                     document.getElementById("nominee").innerHTML = data[i].nomineeName;
                     document.getElementById("status").innerHTML = data[i].status;
                    	}
                    } ,
            	    error: function(){
            	    	alert("Device control failed");
            	    }
                });
           }
          
         //]]>
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
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Search Client</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Search Member</li>
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
										<label>Branch :</label> <select name="branchName"
											id="branchName" class="form-control" style="width: 100%;">
											<option selected="selected" value="">Select Criteria</option>
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
											<input name="fDate" type="date" id="fDate"
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
											<input name="tDate" type="date" id="tDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Member Name :</label> <input name="memberName"
											type="text" id="memberName" class="form-control"
											Placeholder="Enter Member Name" autocomplete="off" />
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Member Code :</label> <input name="memberCode"
											type="text" id="memberCode" class="form-control"
											Placeholder="Enter Member Code" autocomplete="off" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Mobile No. :</label> <input name="mobile" type="text"
											id="mobile" class="form-control"
											Placeholder="Enter Mobile No." autocomplete="off" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Aadhar No. :</label> <input name="aadharno" type="text"
											id="aadharno" class="form-control"
											Placeholder="Enter Aadhar No." autocomplete="off" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>PAN No. :</label> <input name="pan" type="text"
											id="pan" class="form-control" Placeholder="Enter PAN No."
											autocomplete="off" />
									</div>
								</div>
								<div class="clearfix margin-bottom-10"></div>
								<div class="text-center">
									<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success"
										href="javascript:searchThroughSearchBox();"><span
										class="fa fa-search"></span> SEARCH</a> <a
										id="ContentPlaceHolder1_btnPrint" class="btn btn-warning"
										href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnPrint&#39;,&#39;&#39;)"><span
										class="fa fa-print"></span> PRINT</a>
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
									<caption>Search</caption>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">S/N</th>
										<th scope="col">MEMBER NAME</th>
										<th scope="col">GENDER</th>
										<th scope="col">DOB</th>
										<th scope="col">ADHAR NO</th>
										<th scope="col">PAN</th>
										<th scope="col">PHONE No</th>
										<th scope="col">NOMINEE NAME</th>
										<th scope="col">STATUS</th>
									</tr>
									<tbody id="table1">

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
	<script src="dist/js/memberSection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
</body>
<!-- Dk/Admin/SearchMember.aspx EDB D 09:26:56 GMT -->
</html>