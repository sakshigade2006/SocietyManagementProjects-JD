<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>EQFI NIDHI LIMITED</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalaable=no"
	name="viewport" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css" />
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css" />

<!-- daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="plugins/iCheck/all.css" />

<!-- Select2 -->
<link rel="stylesheet"
	href="bower_components/select2/dist/css/select2.min.css" />
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="dist/css/dashboard.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.html" />
<link rel="stylesheet" href="dist/css/lightbox.min.css" />
<link rel="stylesheet" href="dist/css/qr.css" />
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />

<script type="text/javascript">
            function isNumberOnlyKey(txt, evt) {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                    alert("Allow Only Numbers");
                    return false;
                }
            }
            function clearInput(){
                var getValue= document.getElementById("designation");
                  if (getValue.value !="") {
                      getValue.value = "";
                  }
            }
        </script>

</head>

<body onload="allDesignation();" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--   <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/DesignationMaster.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
				<h1 id="ContentPlaceHolder1_IdHeader">Add Designation</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Add Designation</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-5">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Add Designation Master</h3>
							</div>
							<form method="post" action="DesignationMasterSave" id="form1"
								modelAttribute="designation">
								<div class="box-body">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="txtDesignationName"
												class="col-sm-4 control-label">Designation Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="designation" type="text" id="designation"
													class="form-control" /> <span
													id="ContentPlaceHolder1_RequiredtxtDesignationName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Designation Name</span>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button" name="ctl00$ContentPlaceHolder1$btnClear"
											value="Clear" id="ContentPlaceHolder1_btnClear"
											class="btn btn-info pull-right" onclick="clearInput()" /> <input
											type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Save" id="ContentPlaceHolder1_btnSave"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-7">
						<div class="box box-success">
							<div class="box-body">
								<div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption>Designation List</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">S/N</th>
											<th scope="col">ID</th>
											<th scope="col">Desgination</th>
											<th scope="col">Action</th>
										</tr>
										<tbody id="tableBody">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script src="dist/js/designationMaster.js"></script>