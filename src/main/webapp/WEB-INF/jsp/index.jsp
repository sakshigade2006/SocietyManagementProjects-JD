<!DOCTYPE html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Login</title>
<meta name="description" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.html" type="image/x-icon" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Fontawesome CSS -->
<link rel="stylesheet" href="css/fontawesome-all.min.css" />
<!-- Flaticon CSS -->
<link rel="stylesheet" href="font/flaticon.css" />
<!-- Google Web Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css" />
</head>
<body style="background: #f5f6f6;">
	<div id="preloader" class="preloader">
		<div class='inner'>
			<div class='line1'></div>
			<div class='line2'></div>
			<div class='line3'></div>
		</div>
	</div>
	<form method="post" action="loginValidate" id="form1"
		modelAttribute="user">
		<section class="fxt-template-animation fxt-template-layout1"
			style="background: url(img/figure/about-bg.png) no-repeat;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2 col-12 fxt-bg-color"></div>
					<div class="col-md-8 col-12">
						<div class="fxt-form">
							<p></p>
						</div>
						<div class="ft-box-sec">
							<div class="ft-box">
								<div class="col-md-6 col-12 fxt-bg-color"></div>
								<div class="col-md-5 col-12 fxt-bg-color">
									<div class="fxt-content">
										<div class="fxt-header">
											<a href="login-1.html" class="fxt-logo"> <img
												src="images/logo.png" alt="Logo"></a>
											<div class="fxt-page-switcher">
												<a href="login-1.html" class="switcher-text1 active"></a>
											</div>
										</div>
										<div class="fxt-form">
											<h2></h2>
											<div class="form-group">
												<div class="fxt-transformY-50 fxt-transition-delay-1">
													<input name="userId" type="text" id="userId"
														class="form-control" placeholder="User ID" /> <span
														id="rfvloginuser"
														style="color: Red; font-family: Papyrus; font-size: X-Small; font-weight: bold; display: none;">Enter
														User Name</span> <i class="flaticon-user"></i>
												</div>
											</div>
											<div class="form-group">
												<div class="fxt-transformY-50 fxt-transition-delay-2">
													<input name="password" type="password" id="password"
														class="form-control" placeholder="Password" /> <span
														id="rfvloginPassword"
														style="color: Red; font-family: Papyrus; font-size: X-Small; font-weight: bold; display: none;">Enter
														Password</span> <i class="flaticon-padlock"></i>
												</div>
											</div>
											<div class="form-group">
												<div class="fxt-transformY-50 fxt-transition-delay-2">
												</div>
											</div>
											<% String msg=(String)request.getAttribute("msg"); %>
											<%if(msg !=null){%>
											<center>
												<h6>
													<b style="color: red"> <%=msg %>
													</b>
												</h6>
											</center>
											<%} %>
											<div class="form-group">
												<div class="fxt-transformY-50 fxt-transition-delay-3">
													<div class="fxt-content-between">
														<input type="submit" name="btnLogin" value="Login"
															id="btnLogin" class="fxt-btn-fill" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-1 col-12 fxt-bg-color"></div>
							</div>
						</div>
						<div class="col-md-2 col-12 fxt-bg-color"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- jquery-->
		<script src="js/jquery-3.5.0.min.js"></script>
		<!-- Bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Imagesloaded js -->
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<!-- Validator js -->
		<script src="js/validator.min.js"></script>
		<!-- Custom Js -->
		<script src="js/main.js"></script>
		<script type="text/javascript">
         //<![CDATA[
         var Page_Validators = new Array(document.getElementById("rfvloginuser"), document.getElementById("rfvloginPassword"));
            //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[
         var rfvloginuser = document.all ? document.all["rfvloginuser"] : document.getElementById("rfvloginuser");
         rfvloginuser.controltovalidate = "txtusername";
         rfvloginuser.focusOnError = "t";
         rfvloginuser.errormessage = "Enter User Name";
         rfvloginuser.display = "Dynamic";
         rfvloginuser.validationGroup = "A";
         rfvloginuser.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         rfvloginuser.initialvalue = "";
         var rfvloginPassword = document.all ? document.all["rfvloginPassword"] : document.getElementById("rfvloginPassword");
         rfvloginPassword.controltovalidate = "txtPassword";
         rfvloginPassword.focusOnError = "t";
         rfvloginPassword.errormessage = "Enter Password";
         rfvloginPassword.display = "Dynamic";
         rfvloginPassword.validationGroup = "A";
         rfvloginPassword.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         rfvloginPassword.initialvalue = "";
            //]]>
      </script>
		<script type="text/javascript">
         //<![CDATA[

         var Page_ValidationActive = false;
         if (typeof (ValidatorOnLoad) == "function") {
            ValidatorOnLoad();
         }

         function ValidatorOnSubmit() {
            if (Page_ValidationActive) {
               return ValidatorCommonOnSubmit();
            }
            else {
               return true;
            }
         }
                    //]]>
      </script>
	</form>
</body>
</html>