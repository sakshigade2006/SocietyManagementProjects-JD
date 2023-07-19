<jsp:include page="../header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#links a:link {
	color: red;
	text-decoration: none
}

#links a:visited {
	color: goldenrod;
	text-decoration: none
}

#links a:hover {
	color: maroon;
	text-decoration: none;
	font-variant: small-caps
}
</style>
<body onload="" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

	<!-- getAlldd();getAllrd();getAllfd();getAllmis();  -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Plan Master</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Plan Detail</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success box-solid">
							<div class="box-header box-head with-border">
								<h3 class="box-title">Daily Deposit</h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form action="submitDailyDeposite" method="post"
									modelAttribute="dd" name="dailyDeposist">
									<input type="hidden" value="Daily Deposit" name="dailyDeposit">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="planName" class="col-sm-4 control-label">Plan
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="ddplanName" type="text" id="ddplanName"
													class="form-control" PlaceHolder="Enter Plan Name"
													autocomplete="off" /> <span id="planName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Name</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_UppnlDD">
											<div class="form-group row">
												<label for="minimumAmount" class="col-sm-4 control-label">Minimum
													Amount <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="minimumAmount" type="text" id="minimumAmount"
														class="form-control" PlaceHolder="Enter Minimum Amount"
														autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="minimumAmountSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Minimum Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="interestRate" class="col-sm-4 control-label">Interest
													Rate (%) <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="ddinterestRate" type="text"
														id="ddinterestRate" class="form-control"
														PlaceHolder="Enter Interest Rate" autocomplete="off"
														onkeypress="return isNumberKey(this, event);" /> <span
														id="interestRateSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="termType" class="col-sm-4 control-label">Term
													Mode <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="ddtermType" id="ddtermType"
														class="form-control" style="width: 100%;">
														<option value="Daily">Daily</option>
													</select> <span id="termType1"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Term Type</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtddTerm" class="col-sm-4 control-label">Term
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="ddterm" type="text" id="ddterm"
														class="form-control" PlaceHolder="Enter Term"
														autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="ddtermSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Term</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. New(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ddcomN" type="text" id="ddcomN"
													class="form-control" PlaceHolder="Enter Commission New(%)"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="ddcomNSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission New</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. Renew(%)
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="ddcomR" type="text" id="ddcomR"
													class="form-control"
													PlaceHolder="Enter Commission Renew(%)" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="ddcomRSapn"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission Renew</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_uppnlcomdd">
											<div class="form-group row">
												<label for="compoundIntrval" class="col-sm-4 control-label">Compound
													Interval <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="ddcompoundIntrval" id="ddcompoundIntrval"
														class="form-control" style="width: 100%;">
														<option value="Daily">Daily</option>
														<option value="Monthly">Monthly</option>
														<option value="Quaterly">Quaterly</option>
														<option value="Half-Yearly">Half-Yearly</option>
														<option value="Yearly">Yearly</option>
													</select> <span id="ddcompoundIntrvalSapn"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Commission Renew</span>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnlddget">
											<div class="form-group row">
												<label for="txtDdTotalDeposit"
													class="col-sm-4 control-label">Total Deposit <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="ddtotalDeposit" type="text"
														readonly="readonly" id="ddtotalDeposit"
														class="form-control" PlaceHolder="Enter Total Deposit" />
													<span id="ddtotalDepositSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Total Deposit</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtDdMaturityAmount"
													class="col-sm-4 control-label">Maturity Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="ddmaturityAmount" type="text"
														readonly="readonly" id="ddmaturityAmount"
														class="form-control" PlaceHolder="Enter Maturity Amount" />
													<span
														id="ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Maturity Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlDdAnyAmountPlan"
												class="col-sm-4 control-label">Is Flexi? <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="ddanyAmountPlanIsFlexi"
													id="ddanyAmountPlanIsFlexi" class="form-control"
													style="width: 100%;">
													<option value="NO">NO</option>
													<option value="YES">YES</option>
												</select> <span id="ddanyAmountPlanIsFlexiSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Any Amount Plan</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Grace Period <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ddgrace" type="text" id="ddgrace"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="ddgraceSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Grace Period</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Late Fine(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="ddlatefine" type="text" id="ddlatefine"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="ddlatefineSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Late Fine(%)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="chkDdActiveInactive"
												class="col-sm-4 control-label">Plan Status <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="ddactiveInactive"
													type="checkbox" name="ddactiveInactive" checked="checked" />
													<span class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
									<div class="box-footer" style="border-top: 0;">
										<div class="row col-md-12">
											<input type="submit" name="ddSave" value="Save"
												id="ContentPlaceHolder1_btnDdSave"
												class="btn btn-success pull-right"
												onclick="return valdiateDailyDepossit();" />
										</div>
									</div>
								</form>
								<!--                            <input name="ctl00$ContentPlaceHolder1$btnDDGenerate" value="Generate" id="ContentPlaceHolder1_btnDDGenerate" class="btn btn-danger pull-right margin-r-5" /> -->
								<div class="box box-success"
									style="box-shadow: none; overflow: auto !important;">
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div>
											<a href="planMaster"><i class="fa fa-circle-o"></i>Show
												Table</a>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" id="ContentPlaceHolder1_gdvDaily"
												style="width: 100%; border-collapse: collapse;">
												<caption>Daily Plan</caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Plan Name</th>
													<th scope="col">Plan Code</th>
													<th scope="col">Term</th>
													<th scope="col">ROI</th>
													<th scope="col">Mode</th>
													<th scope="col">Comm(N)</th>
													<th scope="col">Comm(R)</th>
													<th scope="col">IsFlexi</th>
													<th scope="col">MinAmount</th>
													<th scope="col">GraceDays</th>
													<th scope="col">LateFine</th>
													<th scope="col">Action</th>
												</tr>
												<c:forEach items="${dailyDeposiste.content}"
													var="dailyDeposiste">
													<tr>
														<td><span id="planName1">${dailyDeposiste.ddplanName}</span>
														</td>
														<td><span id="id"> ${dailyDeposiste.id}</span></td>
														<td><span id="term">${dailyDeposiste.ddterm}</span></td>
														<td><span id="interestRate">${dailyDeposiste.ddinterestRate}</span>
														</td>
														<td><span id="termType">${dailyDeposiste.ddtermType}</span>
														</td>
														<td><span id="comN">${dailyDeposiste.ddcomN}</span></td>
														<td><span id="comR">${dailyDeposiste.ddcomR}</span></td>
														<td><span id="anyAmountPlanIsFlexi">${dailyDeposiste.ddanyAmountPlanIsFlexi}</span>
														</td>
														<td><span id="minimumAmount">5${dailyDeposiste.ddminimumAmount}</span>
														</td>
														<td><span id="grace">${dailyDeposiste.ddgrace}</span>
														</td>
														<td><span id="latefine">${dailyDeposiste.ddlatefine}</span>
														</td>
														<td align="center" style="width: 50px;"><input
															type="image" name="ddDelete" id="ddDelete"
															src="../images/DeleteRed.png"
															style="height: 20px; width: 20px;" /></td>
													</tr>
												</c:forEach>
											</table>
											<c:if test="${currentPage > 0}">

												<a href="?page=${currentPage - 1}"
													style="text-decoration: underline; color: red;"><img
													src="../images/left-chevron.png"
													style="height: 25px; width: 30px;"></a>
											</c:if>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${dailyDeposiste.hasNext()}">
												<a href="?page=${currentPage + 1}"
													style="text-decoration: underline; color: blue;"><img
													src="../images/right-arrow.png"
													style="height: 30px; width: 30px;"></a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-danger box-solid">
							<div class="box-header box-head with-border">
								<h3 class="box-title">Recurring Deposit</h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form action="submitRecurringDeposit" method="post"
									modelAttribute="rd" name="recurringDeposist"
									id="recurringDeposist">
									<input type="hidden" value="Daily Deposit"
										name="recurringDeposit">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="rDPlanName" type="text" id="rDPlanName"
													class="form-control" PlaceHolder="Enter Plan Name"
													autocomplete="off" /> <span id="rDPlanNameSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Name</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnlrd">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Minimum Amount
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="eDMinimumAmount" type="text"
														id="eDMinimumAmount" class="form-control"
														PlaceHolder="Enter Minimum Amount" autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="eDMinimumAmountSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Minimum Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest Rate
													(%) <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="rDInterestRate" type="text"
														id="rDInterestRate" class="form-control"
														PlaceHolder="Enter Interest Rate" autocomplete="off"
														onkeypress="return isNumberKey(this, event);" /> <span
														id="rDInterestRateSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term Mode <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="rDTermType" id="rDTermType"
														class="form-control" style="width: 100%;">
														<option value="Monthly">Monthly</option>
													</select> <span id="rDTermTypeSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Term Type</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="rDTerm" type="text" id="rDTerm"
														class="form-control" PlaceHolder="Enter Term"
														autocomplete="off"
														onkeypress="return isNumberOnlyKey(this, event);" /> <span
														id="rDTermSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Term</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. New(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="rDComN" type="text" id="rDComN"
													class="form-control" PlaceHolder="Enter Commission New(%)"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="rDComNSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission New</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. Renew(%)
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="rDComR" type="text" id="rDComR"
													class="form-control"
													PlaceHolder="Enter Commission Renew(%)" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="rDComRSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission Renew</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_uppnlrdCom">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Compound
													Interval <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="rDCompoundIntrval" id="rDCompoundIntrval"
														class="form-control" style="width: 100%;">
														<option value="Daily">Daily</option>
														<option value="Monthly">Monthly</option>
														<option value="Quaterly">Quaterly</option>
														<option value="Half-Yearly">Half-Yearly</option>
														<option value="Yearly">Yearly</option>
													</select>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnlrdGet">
											<div class="form-group row">
												<label for="txtDdTotalDeposit"
													class="col-sm-4 control-label">Total Deposit <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="rDTotalDeposit" type="text"
														readonly="readonly" id="rDTotalDeposit"
														class="form-control" PlaceHolder="Enter Total Deposit" />
													<span id="rDTotalDepositSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Total Deposit</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="txtDdMaturityAmount"
													class="col-sm-4 control-label">Maturity Amount <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="rDMaturityAmount" type="text"
														readonly="readonly" id="rDMaturityAmount"
														class="form-control" PlaceHolder="Enter Maturity Amount" />
													<span id="rDMaturityAmountSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Maturity Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Grace Period <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="rDGrace" type="text" id="rDGrace"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="rDGraceSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Grace Period</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Late Fine(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="rDLatefine" type="text" id="rDLatefine"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="rDLatefineSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Late Fine(%)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="chkDdActiveInactive"
												class="col-sm-4 control-label">Plan Status <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="rDStatus"
													type="checkbox" name="rDStatus" checked="checked" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
									<div class="box-footer" style="border-top: 0;">
										<div class="row col-md-12">
											<input onclick="return valdiateRecurringDeposist()"
												type="submit" name="rDSave" value="Save" id="rDSave"
												class="btn btn-success pull-right" />
											<!--                                  <input type="submit" name="ctl00$ContentPlaceHolder1$btnRDGenerate" value="Generate" id="ContentPlaceHolder1_btnRDGenerate" class="btn btn-danger pull-right margin-r-5" /> -->
										</div>
									</div>
								</form>
								<div class="box box-success"
									style="box-shadow: none; overflow: auto !important;">
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div>
											<a href="planMaster"><i class="fa fa-circle-o"></i>Show
												Table</a>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" id="ContentPlaceHolder1_gdvRD"
												style="width: 100%; border-collapse: collapse;">
												<caption>Recurring Plan</caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Plan Name</th>
													<th scope="col">Plan Code</th>
													<th scope="col">Term</th>
													<th scope="col">ROI</th>
													<th scope="col">Mode</th>
													<th scope="col">Comm(N)</th>
													<th scope="col">Comm(R)</th>
													<th scope="col">MinAmount</th>
													<th scope="col">GraceDays</th>
													<th scope="col">LateFine</th>
													<th scope="col">Action</th>
												</tr>
												<c:forEach items="${recurringDeposist.content}"
													var="recurringDeposist">
													<tr>
														<td><span id="rDPlanName">${recurringDeposist.rDPlanName}
														</span></td>
														<td><span id="rplancode">${recurringDeposist.rplancode}
														</span></td>
														<td><span id="rDTerm">${recurringDeposist.rDTerm}
														</span></td>
														<td><span id="rroi">${recurringDeposist.rroi}
														</span></td>
														<td><span id="mode">Static Value </span></td>
														<td><span id="rDComN">${recurringDeposist.rDComN}</span>
														</td>
														<td><span id="rDComR">${recurringDeposist.rDComR}</span>
														</td>
														<td><span id="eDMinimumAmount">${recurringDeposist.eDMinimumAmount}</span>
														</td>
														<td><span id="rDGrace">${recurringDeposist.rDGrace}</span>
														</td>
														<td><span id="rDLatefine">${recurringDeposist.rDLatefine}</span>
														</td>
														<td align="center" style="width: 50px;"><input
															type="image" name="ddDelete" id="ddDelete"
															src="../images/DeleteRed.png"
															style="height: 20px; width: 20px;" /></td>
													</tr>
												</c:forEach>
											</table>
											<c:if test="${currentPage2 > 0}">

												<a href="?page2=${currentPage2 - 1}"
													style="text-decoration: underline; color: red;"><img
													src="../images/left-chevron.png"
													style="height: 25px; width: 30px;"></a>
											</c:if>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${recurringDeposist.hasNext()}">
												<a href="?page2=${currentPage2 + 1}"
													style="text-decoration: underline; color: blue;"><img
													src="../images/right-arrow.png"
													style="height: 30px; width: 30px;"></a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="box box-warning box-solid">
							<div class="box-header box-head with-border">
								<h3 class="box-title">Fixed Deposit</h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form action="submitFixedDeposit" method="post"
									modelAttribute="fd" name="fixedDeposist" id="fixedDeposist">
									<input type="hidden" value="Daily Deposit" name="fixedDeposit">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="fdPlanName" type="text" id="fdPlanName"
													class="form-control" PlaceHolder="Enter Plan Name"
													autocomplete="off" /> <span id="fdPlanNameSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Name</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_UpdatePanel1">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Minimum Amount
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="fDMinimumAmount" type="text"
														id="fDMinimumAmount" class="form-control"
														PlaceHolder="Enter Minimum Amount" autocomplete="off" />
													<span id="fDMinimumAmountSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Minimum Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest Rate
													(%) <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="fDInterestRate" type="text"
														id="fDInterestRate" class="form-control"
														PlaceHolder="Enter Interest Rate" autocomplete="off" /> <span
														id="fDInterestRateSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term Mode <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="fDTermType" id="fDTermType"
														class="form-control" style="width: 100%;">
														<option value="Monthly">Monthly</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="fDTerm" type="text" id="fDTerm"
														class="form-control" PlaceHolder="Enter Term"
														autocomplete="off" /> <span id="fDTermSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Term</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_UpdatePanel2">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest Type
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="fDInterestType" id="fDInterestType"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="Simple">Simple</option>
														<option value="Compound">Compound</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Compound
													Interval <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="fDCompoundIntrval" id="fDCompoundIntrval"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="Monthly">Monthly</option>
														<option value="Yearly">Yearly</option>
														<option value="Daily">Daily</option>
														<option value="Quaterly">Quaterly</option>
														<option value="Half-Yearly">Half-Yearly</option>
													</select>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_UpdatePanel3">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Total Deposit
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="fDTotalDeposit" type="text"
														readonly="readonly" id="fDTotalDeposit"
														class="form-control" PlaceHolder="Enter Total Deposit" />
													<span id="ContentPlaceHolder1_RequiredFieldValidator13"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Total Deposit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Maturity
													Amount <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="fDMaturityAmount" type="text"
														readonly="readonly" id="fDMaturityAmount"
														class="form-control" PlaceHolder="Enter Maturity Amount" />
													<span id="ContentPlaceHolder1_RequiredFieldValidator14"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Maturity Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. New(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="fDComN" type="text" id="fDComN"
													class="form-control" PlaceHolder="Enter Commission New(%)"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="fDComNSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission New</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="chkDdActiveInactive"
												class="col-sm-4 control-label">Plan Status <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="fDStatus"
													type="checkbox" name="fDStatus" checked="checked" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
									<div class="box-footer" style="border-top: 0;">
										<div class="row col-md-12">
											<input onclick="return valdiatefixedDepossit();"
												type="submit" name="ctl00$ContentPlaceHolder1$btnFDSave"
												value="Save"
												onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnFDSave&quot;, &quot;&quot;, true, &quot;C&quot;, &quot;&quot;, false, false))"
												id="ContentPlaceHolder1_btnFDSave"
												class="btn btn-success pull-right" />
										</div>
									</div>
								</form>
								<div class="box box-success"
									style="box-shadow: none; overflow: auto !important;">
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div>
											<a href="planMaster"><i class="fa fa-circle-o"></i>Show
												Table</a>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" id="ContentPlaceHolder1_gdvFD"
												style="width: 100%; border-collapse: collapse;">
												<caption>Fixed Plan</caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Plan Name</th>
													<th scope="col">Plan Code</th>
													<th scope="col">Term</th>
													<th scope="col">ROI</th>
													<th scope="col">Mode</th>
													<th scope="col">Comm(N)</th>
													<th scope="col">MinAmount</th>
													<th scope="col">Action</th>
												</tr>
												<c:forEach items="${fixedDeposist.content}"
													var="fixedDeposist">
													<tr>
														<td><span id="fdPlanName1">${fixedDeposist.fdPlanName}</span>
														</td>
														<td><span id="fdPlanCode1">${fixedDeposist.fplancode}</span>
														</td>
														<td><span id="fdTerm1">${fixedDeposist.fDTerm}</span>
														</td>
														<td><span id="fDInterestRate1">${fixedDeposist.froi}</span></td>
														<td><span id="fDTermType1">${fixedDeposist.fDTermType}</span></td>
														<td><span id="fDComN1">${fixedDeposist.fDComN}</span></td>
														<td><span id="fDMinimumAmount1">${fixedDeposist.fDMinimumAmount}</span></td>
														<td align="center" style="width: 50px;"><input
															type="image" name="ddDelete" id="ddDelete"
															src="../images/DeleteRed.png"
															style="height: 20px; width: 20px;" /></td>
													</tr>
												</c:forEach>
											</table>
											<c:if test="${currentPage3 > 0}">
												<a href="?page3=${currentPage3 - 1}"
													style="text-decoration: underline; color: red;"><img
													src="../images/left-chevron.png"
													style="height: 25px; width: 30px;"></a>
											</c:if>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${fixedDeposist.hasNext()}">
												<a href="?page3=${currentPage3 + 1}"
													style="text-decoration: underline; color: blue;"><img
													src="../images/right-arrow.png"
													style="height: 30px; width: 30px;"></a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="box box-info box-solid">
							<div class="box-header box-head with-border">
								<h3 class="box-title">MIS Deposit</h3>
								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<form action="submitMISDeposit" method="post"
									modelAttribute="mis" name="misDeposist" id="misDeposist">
									<input type="hidden" value="mISDeposit" name="mISDeposit">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Plan Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="mISPlanName" type="text" id="mISPlanName"
													class="form-control" PlaceHolder="Enter Plan Name"
													autocomplete="off" /> <span id="mISPlanNameSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Plan Name</span>
											</div>
										</div>
										<div id="ContentPlaceHolder1_UpdatePanel4">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Minimum Amount
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="mISMinimumAmount" type="text"
														id="mISMinimumAmount" class="form-control"
														PlaceHolder="Enter Minimum Amount" autocomplete="off" />
													<span id="mISMinimumAmountSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Minimum Amount</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Maturity ROI
													(%) <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="mISInterestRate" type="text"
														id="mISInterestRate" class="form-control"
														PlaceHolder="Enter Interest Rate" autocomplete="off" /> <span
														id="mISInterestRateSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term Mode <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="mISTermType" id="mISTermType"
														class="form-control" style="width: 100%;">
														<option value="Monthly">Monthly</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Term <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="mISTerm" type="text" id="mISTerm"
														class="form-control" PlaceHolder="Enter Term"
														autocomplete="off" /> <span id="mISTermSpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Term</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div id="ContentPlaceHolder1_UpdatePanel5">
											<div class="form-group row">
												<label class="col-sm-4 control-label">MIS Int.
													ROI(%) <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="mISROI" type="text" id="mISROI"
														class="form-control" PlaceHolder="Enter MIS Int. ROI"
														autocomplete="off" /> <span id="mISROISpan"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Interest Rate</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">MIS Interval <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select name="mISIterval" id="mISIterval"
														class="form-control" style="width: 100%;">
														<option selected="selected" value="Monthly">Monthly</option>
														<option value="Quaterly">Quaterly</option>
														<option value="Half-Yearly">Half-Yearly</option>
														<option value="Yearly">Yearly</option>
													</select>
												</div>
											</div>
										</div>
										<div id="ContentPlaceHolder1_UpdatePanel6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">MIS Interest <strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="mISInterest" type="text" readonly="readonly"
														id="mISInterest" class="form-control"
														PlaceHolder="Enter MIS Interest" /> <span
														id="ContentPlaceHolder1_RequiredFieldValidator18"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Total Deposit</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Maturity
													Amount <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="mISMaturityAmount" type="text"
														readonly="readonly" id="mISMaturityAmount"
														class="form-control" PlaceHolder="Enter Maturity Amount" />
													<span id="ContentPlaceHolder1_RequiredFieldValidator19"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Maturity Amount</span>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Comm. New(%) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="mISComN" type="text" id="mISComN"
													class="form-control" PlaceHolder="Enter Commission New(%)"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <span
													id="mISComNSpan"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Commission New</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="chkDdActiveInactive"
												class="col-sm-4 control-label">Plan Status <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input id="mISStatus"
													type="checkbox" name="mISStatus" checked="checked" /> <span
													class="slider round"></span>
												</label>
											</div>
										</div>
									</div>
									<div class="box-footer" style="border-top: 0;">
										<div class="row col-md-12">
											<input onclick="return valdiatemisDepossit()" type="submit"
												name="mISSave" value="Save" id="mISSave"
												class="btn btn-success pull-right" />
										</div>
									</div>
								</form>
								<div class="box box-success"
									style="box-shadow: none; overflow: auto !important;">
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div>
											<a href="planMaster"><i class="fa fa-circle-o"></i>Show
												Table</a>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" id="ContentPlaceHolder1_gdvMIS"
												style="width: 100%; border-collapse: collapse;">
												<caption>MIS Plan</caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Plan Name</th>
													<th scope="col">Plan Code</th>
													<th scope="col">Term</th>
													<th scope="col">Maturity ROI</th>
													<th scope="col">MIS ROI</th>
													<th scope="col">Mode</th>
													<th scope="col">Comm(N)</th>
													<th scope="col">MinAmount</th>
													<th scope="col">Action</th>
												</tr>
												<c:forEach items="${misDeposist.content}" var="misDeposist">
													<tr>
														<td><span id="mISPlanName">${misDeposist.mISPlanName}</span>
														</td>
														<td><span id="misPlanCode1">${misDeposist.misplancode}</span>
														</td>
														<td><span id="misTerm1">
																${misDeposist.mISTerm}</span></td>

														<td><span id="mISROI1">Static Value </span></td>
														<td><span id="mISInterestRate">${misDeposist.mISROI}</span>
														</td>
														<td><span id="MOde">Static Value </span></td>

														<td><span id="mISTermType1">${misDeposist.mISComN}</span>
														</td>
														<td><span id="mISComN1">${misDeposist.mISMaturityAmount}</span>
														</td>
														<td align="center" style="width: 50px;"><input
															type="image" name="ddDelete" id="ddDelete"
															src="../images/DeleteRed.png"
															style="height: 20px; width: 20px;" /></td>
													</tr>
												</c:forEach>
											</table>
											<c:if test="${currentPage4 > 0}">
												<a href="?page4=${currentPage4 - 1}"
													style="text-decoration: underline; color: red;"><img
													src="../images/left-chevron.png"
													style="height: 25px; width: 30px;"></a>
											</c:if>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${misDeposist.hasNext()}">
												<a href="?page4=${currentPage4 + 1}"
													style="text-decoration: underline; color: blue;"><img
													src="../images/right-arrow.png"
													style="height: 30px; width: 30px;"></a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
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
	<script src="dist/js/investmentSection .js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
	<script type="text/javascript">
         //<![CDATA[
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTermType"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTerm"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator21"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator22"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator23"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator24"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator25"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator26"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator27"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator28"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator9"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator13"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator14"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator29"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator15"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator16"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator17"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator20"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator18"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator19"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator30"));
         //]]>
    </script>
	<script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName");
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.controltovalidate = "ContentPlaceHolder1_txtDdPlaneName";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.errormessage = "Enter Plan Name";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount");
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.controltovalidate = "ContentPlaceHolder1_txtDdMinimumAmount";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.errormessage = "Enter Minimum Amount";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate");
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.controltovalidate = "ContentPlaceHolder1_txtDdInterestRate";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.errormessage = "Enter Interest Rate";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdTermType = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdTermType"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTermType");
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.controltovalidate = "ContentPlaceHolder1_ddlDdTermType";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.errormessage = "Select Term Type";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdTermType.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidatorDdTerm = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdTerm"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTerm");
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.controltovalidate = "ContentPlaceHolder1_txtddTerm";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.errormessage = "Enter Term";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdTerm.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator21 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator21"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator21");
         ContentPlaceHolder1_RequiredFieldValidator21.controltovalidate = "ContentPlaceHolder1_txtDDComN";
         ContentPlaceHolder1_RequiredFieldValidator21.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator21.errormessage = "Enter Commission New";
         ContentPlaceHolder1_RequiredFieldValidator21.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator21.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator21.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator21.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator22 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator22"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator22");
         ContentPlaceHolder1_RequiredFieldValidator22.controltovalidate = "ContentPlaceHolder1_txtDDComR";
         ContentPlaceHolder1_RequiredFieldValidator22.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator22.errormessage = "Enter Commission Renew";
         ContentPlaceHolder1_RequiredFieldValidator22.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator22.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator22.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator22.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit");
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.controltovalidate = "ContentPlaceHolder1_txtDdTotalDeposit";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.errormessage = "Enter Total Deposit";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount");
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.controltovalidate = "ContentPlaceHolder1_txtDdMaturityAmount";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.errormessage = "Enter Maturity Amount";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan");
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.controltovalidate = "ContentPlaceHolder1_ddlDdAnyAmountPlan";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.errormessage = "Select Any Amount Plan";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidator23 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator23"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator23");
         ContentPlaceHolder1_RequiredFieldValidator23.controltovalidate = "ContentPlaceHolder1_txtDDGrace";
         ContentPlaceHolder1_RequiredFieldValidator23.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator23.errormessage = "Enter Grace Period";
         ContentPlaceHolder1_RequiredFieldValidator23.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator23.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator23.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator23.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator24 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator24"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator24");
         ContentPlaceHolder1_RequiredFieldValidator24.controltovalidate = "ContentPlaceHolder1_txtDDLatefine";
         ContentPlaceHolder1_RequiredFieldValidator24.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator24.errormessage = "Enter Late Fine(%)";
         ContentPlaceHolder1_RequiredFieldValidator24.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator24.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator24.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator24.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtRDPlanName";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Plan Name";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtRDMinimumAmount";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Minimum Amount";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
         ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtRDInterestRate";
         ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Interest Rate";
         ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
         ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_ddlRDTermType";
         ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Select Term Type";
         ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
         ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtRDTerm";
         ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Term";
         ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator25 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator25"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator25");
         ContentPlaceHolder1_RequiredFieldValidator25.controltovalidate = "ContentPlaceHolder1_txtRDComN";
         ContentPlaceHolder1_RequiredFieldValidator25.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator25.errormessage = "Enter Commission New";
         ContentPlaceHolder1_RequiredFieldValidator25.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator25.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator25.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator25.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator26 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator26"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator26");
         ContentPlaceHolder1_RequiredFieldValidator26.controltovalidate = "ContentPlaceHolder1_txtRDComR";
         ContentPlaceHolder1_RequiredFieldValidator26.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator26.errormessage = "Enter Commission Renew";
         ContentPlaceHolder1_RequiredFieldValidator26.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator26.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator26.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator26.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
         ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtRDTotalDeposit";
         ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter Total Deposit";
         ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
         ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtRDMaturityAmount";
         ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Maturity Amount";
         ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator27 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator27"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator27");
         ContentPlaceHolder1_RequiredFieldValidator27.controltovalidate = "ContentPlaceHolder1_txtRDGrace";
         ContentPlaceHolder1_RequiredFieldValidator27.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator27.errormessage = "Enter Grace Period";
         ContentPlaceHolder1_RequiredFieldValidator27.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator27.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator27.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator27.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator28 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator28"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator28");
         ContentPlaceHolder1_RequiredFieldValidator28.controltovalidate = "ContentPlaceHolder1_txtRDLatefine";
         ContentPlaceHolder1_RequiredFieldValidator28.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator28.errormessage = "Enter Late Fine(%)";
         ContentPlaceHolder1_RequiredFieldValidator28.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator28.validationGroup = "B";
         ContentPlaceHolder1_RequiredFieldValidator28.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator28.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
         ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtFDPlanName";
         ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Plan Name";
         ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator9 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator9"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator9");
         ContentPlaceHolder1_RequiredFieldValidator9.controltovalidate = "ContentPlaceHolder1_txtFDMinimumAmount";
         ContentPlaceHolder1_RequiredFieldValidator9.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator9.errormessage = "Enter Minimum Amount";
         ContentPlaceHolder1_RequiredFieldValidator9.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator9.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator9.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator9.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator10 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator10"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10");
         ContentPlaceHolder1_RequiredFieldValidator10.controltovalidate = "ContentPlaceHolder1_txtFDInterestRate";
         ContentPlaceHolder1_RequiredFieldValidator10.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator10.errormessage = "Enter Interest Rate";
         ContentPlaceHolder1_RequiredFieldValidator10.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator10.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator10.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator10.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
         ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtFDTerm";
         ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Term";
         ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator13 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator13"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator13");
         ContentPlaceHolder1_RequiredFieldValidator13.controltovalidate = "ContentPlaceHolder1_txtFDTotalDeposit";
         ContentPlaceHolder1_RequiredFieldValidator13.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator13.errormessage = "Enter Total Deposit";
         ContentPlaceHolder1_RequiredFieldValidator13.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator13.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator13.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator13.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator14 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator14"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator14");
         ContentPlaceHolder1_RequiredFieldValidator14.controltovalidate = "ContentPlaceHolder1_txtFDMaturityAmount";
         ContentPlaceHolder1_RequiredFieldValidator14.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator14.errormessage = "Enter Maturity Amount";
         ContentPlaceHolder1_RequiredFieldValidator14.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator14.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator14.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator14.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator29 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator29"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator29");
         ContentPlaceHolder1_RequiredFieldValidator29.controltovalidate = "ContentPlaceHolder1_txtFDComN";
         ContentPlaceHolder1_RequiredFieldValidator29.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator29.errormessage = "Enter Commission New";
         ContentPlaceHolder1_RequiredFieldValidator29.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator29.validationGroup = "C";
         ContentPlaceHolder1_RequiredFieldValidator29.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator29.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
         ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_txtMISPlanName";
         ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Enter Plan Name";
         ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator15 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator15"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator15");
         ContentPlaceHolder1_RequiredFieldValidator15.controltovalidate = "ContentPlaceHolder1_txtMISMinimumAmount";
         ContentPlaceHolder1_RequiredFieldValidator15.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator15.errormessage = "Enter Minimum Amount";
         ContentPlaceHolder1_RequiredFieldValidator15.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator15.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator15.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator15.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator16 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator16"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator16");
         ContentPlaceHolder1_RequiredFieldValidator16.controltovalidate = "ContentPlaceHolder1_txtMISInterestRate";
         ContentPlaceHolder1_RequiredFieldValidator16.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator16.errormessage = "Enter Interest Rate";
         ContentPlaceHolder1_RequiredFieldValidator16.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator16.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator16.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator16.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator17 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator17"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator17");
         ContentPlaceHolder1_RequiredFieldValidator17.controltovalidate = "ContentPlaceHolder1_txtMISTerm";
         ContentPlaceHolder1_RequiredFieldValidator17.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator17.errormessage = "Enter Term";
         ContentPlaceHolder1_RequiredFieldValidator17.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator17.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator17.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator17.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator20 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator20"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator20");
         ContentPlaceHolder1_RequiredFieldValidator20.controltovalidate = "ContentPlaceHolder1_txtMISROI";
         ContentPlaceHolder1_RequiredFieldValidator20.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator20.errormessage = "Enter Interest Rate";
         ContentPlaceHolder1_RequiredFieldValidator20.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator20.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator20.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator20.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator18 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator18"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator18");
         ContentPlaceHolder1_RequiredFieldValidator18.controltovalidate = "ContentPlaceHolder1_txtMISInterest";
         ContentPlaceHolder1_RequiredFieldValidator18.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator18.errormessage = "Enter Total Deposit";
         ContentPlaceHolder1_RequiredFieldValidator18.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator18.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator18.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator18.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator19 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator19"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator19");
         ContentPlaceHolder1_RequiredFieldValidator19.controltovalidate = "ContentPlaceHolder1_txtMISMaturityAmount";
         ContentPlaceHolder1_RequiredFieldValidator19.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator19.errormessage = "Enter Maturity Amount";
         ContentPlaceHolder1_RequiredFieldValidator19.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator19.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator19.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator19.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator30 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator30"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator30");
         ContentPlaceHolder1_RequiredFieldValidator30.controltovalidate = "ContentPlaceHolder1_txtMISComN";
         ContentPlaceHolder1_RequiredFieldValidator30.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator30.errormessage = "Enter Commission New";
         ContentPlaceHolder1_RequiredFieldValidator30.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator30.validationGroup = "D";
         ContentPlaceHolder1_RequiredFieldValidator30.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator30.initialvalue = "";
         //]]>
      </script>
	<script type="text/javascript">
         //<![CDATA[
         
         var Page_ValidationActive = false;
         if (typeof(ValidatorOnLoad) == "function") {
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdPlaneName'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdMinimumAmount'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdInterestRate'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTermType').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTermType'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTerm').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTerm'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator21').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator21'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator22').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator22'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdTotalDeposit'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdMaturityAmount'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDdAnyAmountPlan'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator23').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator23'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator24').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator24'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator25').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator25'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator26').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator26'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator27').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator27'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator28').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator28'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator9').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator9'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator13').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator13'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator14').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator14'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator29').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator29'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator15').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator15'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator16').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator16'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator17').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator17'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator20').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator20'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator18').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator18'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator19').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator19'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator30').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator30'));
         }
         //]]>
      </script>
	</form>
</body>
<!-- Dk/Admin/PlanMaster.aspx EDB D 09:27:00 GMT -->
</html>