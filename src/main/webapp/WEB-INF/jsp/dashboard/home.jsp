<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="setCashBalance();setBankMaster()">
	<form method="post" action="" id="form1">
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
				<section class="content bg-dis">
					<div class="row">
						<div class="col-xs-12"
							style="padding-left: 0px; padding-right: 0px;">
							<!--  <div class="box box-success" style="border: 0; margin-bottom: 25px;">
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Branch :</label>
                                 <select name="ctl00$ContentPlaceHolder1$ddlBranch" id="ContentPlaceHolder1_ddlBranch" class="form-control select2" style="width: 100%;">
                                    <option selected="selected" value="All">All Branch</option>
                                    <option value="001">Main Office - 001</option>
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
                                    <input name="ctl00$ContentPlaceHolder1$txtFDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtFDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
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
                                    <input name="ctl00$ContentPlaceHolder1$txtTDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtTDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label></label>
                                 <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success margin-20" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a>
                              </div>
                           </div>
                        </div>
                     </div>-->
						</div>
					</div>
					<div id="ContentPlaceHolder1_idBanking" class="row"
						style="margin-bottom: 50px;">
						<div class="col-md-3 col-sm-6 col-xs-6"
							style="padding: 0 5px 0 5px;">
							<div class="info-box-2 dash1"
								style="background-image: url(dist/img/back-de.png);">
								<div class="info-box-2-content">
									<span class="info-box-2-text">WALLET BALANCE</span>
									<div class="row">
										<span class="info-box-2-number">IMPS Bal : <br />
										<span id="impsBal"></span> &#x20b9;
										</span> <span class="info-box-2-icon"><img class="hvr-icon"
											src="dist/img/wallet-balance-1.png" /></span> <span
											class="info-box-2-number-1">NEFT Bal : <br />
										<span id="neftBal"></span> &#x20b9;
										</span>
									</div>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6"
							style="padding: 0 5px 0 5px;">
							<div class="info-box-2 dash2"
								style="background-image: url(dist/img/back-de-2.png);">
								<div class="info-box-2-content">
									<span class="info-box-2-text">TOTAL RECEIVED</span>
									<div class="row">
										<span class="info-box-2-number">Amount : <br /> 0
										</span> <span class="info-box-2-icon"><img class="hvr-icon"
											src="dist/img/wallet-balance-2.png" /></span> <span
											class="info-box-2-number-1">Tot.Count : <br /> 0
										</span>
									</div>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6"
							style="padding: 0 5px 0 5px;">
							<div class="info-box-2 dash3"
								style="background-image: url(dist/img/back-de-3.png);">
								<div class="info-box-2-content">
									<span class="info-box-2-text">TOTAL TRANSFER</span>
									<div class="row">
										<span class="info-box-2-number">Amount : <br /> 0
										</span> <span class="info-box-2-icon"><img class="hvr-icon"
											src="dist/img/wallet-balance-3.png" /></span> <span
											class="info-box-2-number-1">Tot.Count : <br /> 0
										</span>
									</div>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6"
							style="padding: 0 5px 0 5px;">
							<div class="info-box-2 dash4"
								style="background-image: url(dist/img/back-de-4.png);">
								<div class="info-box-2-content">
									<span class="info-box-2-text">CARD TRANSACTION</span>
									<div class="row">
										<span class="info-box-2-number">Balance : <br /> 0.00
										</span> <span class="info-box-2-icon"><img class="hvr-icon"
											src="dist/img/wallet-balance-4.png" /></span> <span
											class="info-box-2-number-1">Tot.Count : <br /> 0
										</span>
									</div>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
					</div>
					<!-- =========================================================== -->
					<div id="ContentPlaceHolder1_idview1" class="row">
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-aqua hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-5.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Member</span> <span
										class="info-box-number"> <span id="memberCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkM" class="pull-left"
										href="searchMember" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addMember" id="ContentPlaceHolder1_m1"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-green hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-4.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Share Issue</span> <span
										class="info-box-number"> <span id="shareCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkshare" class="pull-left"
										href="memberShareReport" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="shareIssue" id="ContentPlaceHolder1_m2"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-yellow hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-6.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Advisor/Collector</span> <span
										class="info-box-number"> <span id="advisorCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkadvisor" class="pull-left"
										href="idCardPrinting" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addAdvisor" id="ContentPlaceHolder1_m3"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-red hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-7.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">RD Policy</span> <span
										class="info-box-number"> <span id="rdCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkRD" class="pull-left"
										href="investmentSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addInvestment" id="ContentPlaceHolder1_m4"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
					</div>
					<div id="ContentPlaceHolder1_idview2" class="row">
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-aqua hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-8.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Daily Policy</span> <span
										class="info-box-number"> <span id="dailyDepositeCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkDRD" class="pull-left"
										href="investmentSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addInvestment" id="ContentPlaceHolder1_m5"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-green hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-9.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">FD Policy</span> <span
										class="info-box-number"> <span id="fixedDepositeCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkFD" class="pull-left"
										href="investmentSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addInvestment" id="ContentPlaceHolder1_m6"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-yellow hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-10.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">MIS Policy</span> <span
										class="info-box-number"> <span id="misCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkMIS" class="pull-left"
										href="investmentSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addInvestment" id="ContentPlaceHolder1_m7"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-green hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-12.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Savings A/C</span> <span
										class="info-box-number"> <span id="savingCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkSBac" class="pull-left"
										href="searchSavingsAccount" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="addSaving" id="ContentPlaceHolder1_m10"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
					</div>
					<div id="ContentPlaceHolder1_idview3" class="row">
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-red hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-13.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Loan</span> <span
										class="info-box-number"> <span id="loanCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnknormalLoan" class="pull-left"
										href="loanSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="LoanApplication" id="ContentPlaceHolder1_m12"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
						<!-- /.col -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="info-box bg-green hvr-icon-pulse-grow">
								<span class="info-box-icon"> <img class="hvr-icon"
									src="dist/img/new_dashboard/icon-14.png">
								</span>
								<div class="info-box-content">
									<span class="info-box-text">Group Loan</span> <span
										class="info-box-number"> <span id="groupCount"></span></span>
									<div class="progress">
										<div class="progress-bar" style="width: 100%"></div>
									</div>
									<span class="progress-description"> <a
										id="ContentPlaceHolder1_lnkGrLoan" class="pull-left"
										href="loanSearch" style="color: #fff;"><i
											class="fa fa-eye" aria-hidden="true"></i> View</a> <a
										href="GroupLoanApplication" id="ContentPlaceHolder1_m14"
										class="pull-right" style="color: #fff;"><i
											class="fa fa-plus" aria-hidden="true"></i>Add</a>
									</span>
								</div>
								<!-- /.info-box-content -->
							</div>
							<!-- /.info-box -->
						</div>
					</div>
					<div id="ContentPlaceHolder1_idview4" class="row"></div>
					<!-- =========================================================== -->
					<div class="row">
						<div id="ContentPlaceHolder1_idCashBal" class="col-md-6 col-xs-6">
							<div class="box box-success box-solid collapsed-box">
								<div class="box-header box-head with-border">
									<h3 class="box-title">Cash Balance</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool"
											data-widget="collapse">
											<i class="fa fa-plus"></i>
										</button>
									</div>
									<!-- /.box-tools -->
								</div>
								<!-- /.box-header -->
								<div class="box-body" style="display: none;">
									<div>
										<table cellspacing="0" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<tr style="color: White; background-color: #008385;">
												<th scope="col">S/N</th>
												<th scope="col">BRANCH/CSP</th>
												<th scope="col">CASH BALANCE</th>
												<th scope="col">TODAY CASH</th>
											</tr>

										</table>
										<table id="ContentPlaceHolder1_gvrCash" cellspacing="0"
											rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">


										</table>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						<!-- /.col -->
						<div id="ContentPlaceHolder1_idBankBal" class="col-md-6 col-xs-6">
							<div class="box box-warning box-solid collapsed-box">
								<div class="box-header box-head with-border">
									<h3 class="box-title">Bank Balance</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool"
											data-widget="collapse">
											<i class="fa fa-plus"></i>
										</button>
									</div>
									<!-- /.box-tools -->
								</div>
								<!-- /.box-header -->
								<div class="box-body" style="display: none;">
									<div>
										<table cellspacing="0" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<tr style="color: White; background-color: #008385;">
												<th scope="col">S/N</th>
												<th scope="col">BANK NAME</th>
												<th scope="col">BANK ACNO</th>
												<th scope="col">BALANCE</th>
											</tr>
										</table>
										<table cellspacing="0" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;"
											id="ContentPlaceHolder1_gdvBankdashboard">
										</table>
									</div>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
					</div>
					<!-- /.row -->
					<div class="modal modal-success fade" id="modal-success">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">Details View</h4>
								</div>
								<div class="modal-body">
									<div id="ContentPlaceHolder1_UpdatePanel3">
										<div style="box-shadow: none; overflow: auto;">
											<div></div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	</form>
</body>
<!-- Dk/Admin/Home.aspx EDB D 09:25:45 GMT -->
</html>