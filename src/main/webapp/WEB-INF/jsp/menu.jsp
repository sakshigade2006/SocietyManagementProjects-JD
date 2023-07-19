<header class="main-header">
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
		</div>
		<div class="collapse navbar-collapse pull-left" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a class="b-1" href="dashboard">Home</a></li>
				<li id="idconfig" class="dropdown"><a
					class="dropdown-toggle b-1" data-toggle="dropdown" href="#"
					aria-expanded="false">Configuration <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="CompanyDetails">Company Setting</a></li>
						<li><a href="FYMater">Add FY Master</a></li>
						<li><a href="branchMaster">Branch Creation</a></li>
						<li><a href="AddBankAccount">Bank Master</a></li>
						<li><a href="relativeMaster">Relative Master</a></li>
						<li><a href="casteMaster">Caste Master</a></li>
						<li><a href="categoryMaster">Category Master</a></li>
						<!-- <li><a href="CodeSetting">Code Setting</a></li> -->
						<li><a href="DirectorDetail">Add Director/Promoter</a></li>
						<li><a href="UserCreate">User Creation</a></li>
						<li><a href="UserMenuAccess">User Menu Access</a></li>
						<!--<li><a href="UserActivityReport">User Activity Report</a></li>-->
					</ul></li>
				<li id="idLegal" class="dropdown"><a
					class="dropdown-toggle b-1" data-toggle="dropdown" href="#"
					aria-expanded="false">Report <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/downloadPdf/Form_NDH-1">NDH-1</a></li>
						<li><a href="/downloadPdf/Form_NDH-2">NDH-2</a></li>
						<li><a href="/downloadPdf/Form_NDH-3">NDH-3</a></li>
						<li><a href="/downloadPdf/Form_NDH-4">NDH-4</a></li>
						<li><a href="memberDetailRptt">Member Report</a></li>
						<li><a href="InvestmentReport">Investment Report</a></li>
						<li><a href="savingsStatement">Savings Account Report</a></li>
						<li><a href="loanSearch">Loan Report</a></li>
					</ul></li>
				<!-- <li id="idcollsheet"><a class="b-1" href="AllCollectionSheet.html">Collection Sheet</a></li> -->
				<!-- <li id="idquickdep"><a class="b-1" href="QuickDeposit.html">Quick Deposit <span
               class="label label-success">NEW</span></a></li> -->
			</ul>
		</div>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav p-1">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">3</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 3 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											LogIn Branch <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<% 
                                    String userBranchName = (String) session.getAttribute("loggedInBranchName");
                                    %>
											<%=userBranchName %>
										</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											Last LogIn Date/Time <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<% 
                                    String userLastLogin = (String) session.getAttribute("userLastLogin");
                                    %>
											<%=userLastLogin %>
										</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											Server Date/Time <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<%= (new java.util.Date()).toLocaleString()%>
										</p>
								</a></li>
								<li></li>
							</ul>
						</li>
					</ul></li>
				<!-- Notifications: style can be found in dropdown.less -->
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						id="imgRightside" class="user-image" alt="User Image"
						src="dist/img/User.png" /> <span class="hidden-xs">admin </span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img id="imgdrop" class="img-circle"
							alt="User Image" src="dist/img/User.png" />
							<p>
								<% 
                           String userName = (String) session.getAttribute("loggedInUserName");
                           String userType = (String) session.getAttribute("loggedInUserType");
                           
                           %>
								<%=userName %><br>
								<%=userType %>
							</p></li>
						<!-- Menu Body -->
						<!-- Menu Footer-->
						<li class="user-footer">
							<!--  <div class="pull-left">
                        <a id="lnkChangeUserPhoto" class="btn btn-default btn-flat"
                            href="javascript:__doPostBack(&#39;ctl00$lnkChangeUserPhoto&#39;,&#39;&#39;)">Change
                            Password</a>
                        </div> -->
							<div class="pull-right">
								<a id="lnklogout" class="btn btn-default btn-flat" href="logout">Logout</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<!-- <li>
               <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
               </li> -->
			</ul>
		</div>
	</nav>
</header>