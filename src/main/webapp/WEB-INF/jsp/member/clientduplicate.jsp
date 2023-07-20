<jsp:include page="../header.jsp" />
<script src="jquery-3.6.3.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	onload="fetchTheData()" cz-shortcut-listen="true">
	<!--        onload="getAllBranchMaster();" -->

	<!--    <form  action="saveBranchMaster" modelAttribute="" name="addBranch" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Client De-Duplication</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Branch</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Client Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Client ID <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<!--                                  	<input name="id" type="text" maxlength="10" id="id" class="form-control" onkeyup="FetchDetailByMemberIdforcleintDeduplication();" placeholder="Enter Client ID" autocomplete="off" /> -->
											<select onchange="window.location.href=this.value;"
												name="clientID" id="clientID" onchange=""
												class="form-control" style="width: 100%;">
												<option value="">Select</option>
												<c:forEach items="${options}" var="option">
													<option value="getDataOfShare?ID=${option.id}">${option.id}--${option.memberName}</option>
												</c:forEach>
											</select> <span id="branchCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>
									</div>
								</div>
								<!--                            <div class="col-md-6"> -->
								<!--                               <div class="form-group row"> -->
								<!--                                  <label for="txtPin" class="col-sm-4 control-label">Client Name <strong style="color: Red">*</strong></label> -->
								<!--                                  <div class="col-sm-8"> -->
								<!--                                     <input name="memberName" type="text" maxlength="7" id="memberName" class="form-control"  /> -->
								<!--                                     <span id="pinMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span> -->
								<!--                                  </div> -->
								<!--                               </div> -->
								<!--                          </div> -->
							</div>
						</div>
						<!-- </div> -->
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<section id="hideshowtable">
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Check</th>
												<th scope="col">ID</th>
												<th scope="col">Holdings</th>
												<th scope="col">Values</th>
											</tr>
											<tbody id="tbodydynamicValues">
												<tr>
													<c:forEach items="${data}" var="data123">
														<td><input type="checkbox" id="myCheckbox"></td>
														<td><input type="text" id="input1"
															value="${data123.id }" style="font-weight: bold;"></td>
														<td><input type="text" id="input2"
															value="Share Transfer" style="font-weight: bold;"></td>
														<td><input type="text" id="input3"
															value="${data123.noOfShare}" style="font-weight: bold;"></td>
													</c:forEach>
												</tr>
												<tr>
													<c:forEach items="${data2}" var="dat">
														<td><input type="checkbox" id="myCheckbox2"></td>

														<td><input type="text" id="input11" value="${dat.id}"
															style="font-weight: bold;"></td>
														<td><input type="text" id="input12" value="Loan"
															style="font-weight: bold;"></td>
														<td><input type="text" id="input13"
															value="${dat.loanAmount}" style="font-weight: bold;"></td>
													</c:forEach>
												</tr>
											</tbody>
										</table>
									</section>
								</div>
							</div>
						</div>
						<!-- Transfer to Start -->
						<div class="box-header with-border">
							<h3 class="box-title">Transfer To</h3>
						</div>
						<br>
						<!-- Transfer to End -->
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Client Details</h3>
							</div>
							<form id="fileUploadForm">
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Client ID <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<!--                                  	<input name="id2" type="text" maxlength="10" id="id2" class="form-control" placeholder="Enter Branch Code" onkeyup="FetchDetailByMemberIdforcleintDeduplication2();" autocomplete="off" /> -->
												<select name="id2" id="id2"
													onchange="FetchDetailByMemberIdforcleintDeduplication2();"
													class="form-control" style="width: 100%;">
													<option value="">Select</option>
												</select> <span id="branchCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Code</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtPin" class="col-sm-4 control-label">Client
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName2" type="text" maxlength="7"
													id="memberName2" class="form-control" /> <span
													id="pinMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Pin</span>
											</div>
										</div>
									</div>
								</div>
						</div>
						<div class="box-footer">
							<div class="row col-md-12">
								<!--                                <button type="button" name="hide" value="hide"  -->
								<!--                               id="hide" class="btn btn-success pull-right margin-r-5" -->
								<!--                               >Hide</button> -->

								<!--                               <button type="button" name="show" value="show"  -->
								<!--                               id="show" class="btn btn-success pull-right margin-r-5" -->
								<!--                               >Show</button> -->
							</div>
						</div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<section id="hideshowtable">
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">ID</th>
												<th scope="col">Holdings</th>
												<th scope="col">Values</th>
											</tr>
											<tbody id="ContentPlaceHolder1_gdvData-branchMaster">
												<tr>
													<td><input type="text" name="table2input1"
														id="table2input1" style="font-weight: bold;"></td>
													<td><input type="text" name="table2input2"
														id="table2input2" style="font-weight: bold;"></td>
													<td><input type="text" name="table2input3"
														id="table2input3" style="font-weight: bold;"></td>
												</tr>
												<tr>
													<td><input type="text" name="table2input11"
														id="table2input11" style="font-weight: bold;"></td>
													<td><input type="text" name="table2input12"
														id="table2input12" style="font-weight: bold;"></td>
													<td><input type="text" name="table2input13"
														id="table2input13" style="font-weight: bold;"></td>
												</tr>
											</tbody>
										</table>
										<button type="button" name="savebtn" value="Save" id="savebtn"
											class="btn btn-success pull-right margin-r-5">Save</button>
									</section>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		</form>
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
	<!-- Branch Master Ajax -->
	<script src="dist/js/config.js"></script>
	<script src="dist/js/ClientdeDuplicate.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<script type="text/javascript">
//      const tableA = document.getElementById("tbodydynamicValues");
//      const tableB = document.getElementById("ContentPlaceHolder1_gdvData-branchMaster");
   
//      tableA.addEventListener("change", function(event) {
//        const checkbox = event.target;
//        if (checkbox.type === "checkbox" && checkbox.checked) {
//          const row = checkbox.closest("tr").cloneNode(true);
//          tableB.appendChild(row);
//        }
//      });

// get references to the checkbox and input elements
const checkbox = document.getElementById("myCheckbox");
const checkbox2 = document.getElementById("myCheckbox2");

const input1 = document.getElementById("input1");
const table2input1 = document.getElementById("table2input1");

const input2 = document.getElementById("input2");
const table2input2 = document.getElementById("table2input2");

const input3 = document.getElementById("input3");
const table2input3 = document.getElementById("table2input3");

// add event listener to the checkbox
checkbox.addEventListener("change", function() {
  // if checkbox is checked, append input1 value to input2 value
  if (this.checked) {
	  table2input1.value += input1.value;
  }
  
  if (!this.checked) {
	  table2input1.value =null;
  }
});

//add event listener to the checkbox
checkbox.addEventListener("change", function() {
  // if checkbox is checked, append input1 value to input2 value
  if (this.checked) {
	  table2input2.value += input2.value;
  }
  
  if (!this.checked) {
	  table2input2.value =null;
  }
});
  
//add event listener to the checkbox
checkbox.addEventListener("change", function() {
  // if checkbox is checked, append input1 value to input2 value
  if (this.checked) {
	  table2input3.value += input3.value;
  }
  
  if (!this.checked) {
	  table2input3.value =null;
  }
});

//add event listener to the checkbox
checkbox2.addEventListener("change", function() {
  // if checkbox is checked, append input1 value to input2 value
  if (this.checked) {
	  table2input11.value += input11.value;
  }
  
  if (!this.checked) {
	  table2input11.value =null;
  }
});

checkbox2.addEventListener("change", function() {
	  // if checkbox is checked, append input1 value to input2 value
	  if (this.checked) {
		  table2input12.value += input12.value;
	  }
	  
	  if (!this.checked) {
		  table2input12.value =null;
		  }
	});
	
checkbox2.addEventListener("change", function() {
	  // if checkbox is checked, append input1 value to input2 value
	  if (this.checked) {
		  table2input13.value += input13.value;
	  }
	  
	  if (!this.checked) {
		  table2input13.value =null;
		  }
	});
    </script>

	<script type="text/javascript">
     function fetchTheData() {
    	 $.ajax({
             type:"get",
             contentType: "application/json",
             url: 'getAllClient',
             asynch: false,
             success: function(data) {
             var appenddata1 = "";
                     //var jsonData1 = JSON.parse(data1.d);
                     for (var i = 0; i < data.length; i++) {
                    	 appenddata1 += "<option value ='"+data[i].id+"'>"+data[i].id +"</option>";
                     }
                     $("#id2").append(appenddata1);   
             },
     	     error: function(){
     	    	alert("Device control failed");
     	    }
         });
 		}
     
        function FetchDetailByMemberIdforcleintDeduplication2() {
    	    var id2 = document.getElementById("id2");
    		var input = {
    			"id": id2.value
    		}
    		$.ajax({
    			type: "post",
    			contentType: "application/json",
    			data: JSON.stringify(input),
    			url: 'addClientEdit',
    			asynch: false,
    			success: function (data) {
    				for (var i = 0; i < data.length; i++) {
    					document.getElementById("memberName2").value = data[i].memberName;
    				}
    			},
    			error: function () {
    				alert("Device control failed");
    			}
    		}); 
	    }
     
		$(document).ready(function() {
			$('#savebtn').click(function() {
				
				if ($("#id2").val() == "") {
		             alert("Plz Select the ID  !!!!!!!");
		             return;
		        }
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				
				$.ajax({
					url: 'addmappingClientAndModules',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response);
						
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
     </script>
</body>
</html>