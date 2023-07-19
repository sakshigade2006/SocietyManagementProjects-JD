<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post"
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/CodeSetting.aspx"
		id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader">Code Setting</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Code Setting</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-body table-responsive">
									<table class="table table-hover">
										<tbody>
											<tr>
												<th>Name</th>
												<th>Branch Prefix</th>
												<th style="text-align: center;">Code Prefix</th>
												<th style="text-align: center;">No Of Digit</th>
												<th style="text-align: center;">Last No.</th>
												<th style="text-align: center;">Preview</th>
												<th style="text-align: center;">Action</th>
											</tr>
											<tr>
												<td>Member Code</td>
												<td><input id="ContentPlaceHolder1_chkMember"
													type="checkbox" name="ctl00$ContentPlaceHolder1$chkMember"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$chkMember\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMCodePrefix" type="text"
													value="01/NGP/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtMCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtMCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMCodeNoOfdigit"
													type="text" value="6"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtMCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtMCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMcodeLastNo" type="text"
													value="209" id="ContentPlaceHolder1_txtMcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMCodePreview"
													type="text" value="01/NGP/ 000001" readonly="readonly"
													id="ContentPlaceHolder1_txtMCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled disabled
													name="ctl00$ContentPlaceHolder1$btnMCodeSave" value="Save"
													id="ContentPlaceHolder1_btnMCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Collector/Advisor Code</td>
												<td><input id="ContentPlaceHolder1_chkAdvisor"
													type="checkbox" name="ctl00$ContentPlaceHolder1$chkAdvisor"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$chkAdvisor\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtACodePrefix" type="text"
													value="01/ADV/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtACodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtACodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtACodeNoOfdigit"
													type="text" value="4"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtACodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtACodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtAcodeLastNo" type="text"
													value="1" id="ContentPlaceHolder1_txtAcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtACodePreview"
													type="text" value="01/ADV/ 0001" readonly="readonly"
													id="ContentPlaceHolder1_txtACodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnACodeSave" value="Save"
													id="ContentPlaceHolder1_btnACodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Employee Code</td>
												<td><input id="ContentPlaceHolder1_ChkEmployee"
													type="checkbox"
													name="ctl00$ContentPlaceHolder1$ChkEmployee"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkEmployee\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtECodePrefix" type="text"
													value="01/EMP/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtECodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtECodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtECodeNoOfdigit"
													type="text" value="3"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtECodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtECodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtEcodeLastNo" type="text"
													value="1" id="ContentPlaceHolder1_txtEcodeLastNo"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtECodePreview"
													type="text" value="01/EMP/ 001" readonly="readonly"
													id="ContentPlaceHolder1_txtECodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnECodeSave" value="Save"
													id="ContentPlaceHolder1_btnECodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>RD Policy No</td>
												<td><input id="ContentPlaceHolder1_ChkRD"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkRD"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkRD\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtRDCodePrefix"
													type="text" value="01/RD/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtRDCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtRDCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtRDCodeNoOfdigit"
													type="text" value="5"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtRDCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtRDCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtRDcodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtRDcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtRDCodePreview"
													type="text" value="01/RD/ 00001" readonly="readonly"
													id="ContentPlaceHolder1_txtRDCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnRDCodeSave" value="Save"
													id="ContentPlaceHolder1_btnRDCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>FD Policy No</td>
												<td><input id="ContentPlaceHolder1_ChkFD"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkFD"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkFD\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFDCodePrefix"
													type="text" value="01/FD/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFDCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtFDCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFDCodeNoOfdigit"
													type="text" value="6"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFDCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtFDCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFDcodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtFDcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFDCodePreview"
													type="text" value="01/FD/ 000001" readonly="readonly"
													id="ContentPlaceHolder1_txtFDCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnFDCodeSave" value="Save"
													id="ContentPlaceHolder1_btnFDCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Daily Policy No.</td>
												<td><input id="ContentPlaceHolder1_ChkDaily"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkDaily"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkDaily\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtDDCodePrefix"
													type="text" value="01/DD/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtDDCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtDDCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtDDCodeNoOfdigit"
													type="text" value="6"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtDDCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtDDCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtDDcodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtDDcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtDDCodePreview"
													type="text" value="01/DD/ 000001" readonly="readonly"
													id="ContentPlaceHolder1_txtDDCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnDDCodeSave" value="Save"
													id="ContentPlaceHolder1_btnDDCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Flexi Daily Policy.</td>
												<td><input id="ContentPlaceHolder1_ChkFlexiDaily"
													type="checkbox"
													name="ctl00$ContentPlaceHolder1$ChkFlexiDaily"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkFlexiDaily\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFlexiDDCodePrefix"
													type="text" value="01/FP/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFlexiDDCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtFlexiDDCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFlexiDDCodeNoOfdigit"
													type="text" value="6"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFlexiDDCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtFlexiDDCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFlexiDDcodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtFlexiDDcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFlexiDDCodePreview"
													type="text" value="01/FP/ 000001" readonly="readonly"
													id="ContentPlaceHolder1_txtFlexiDDCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnFlexiDDCodeSave"
													value="Save" id="ContentPlaceHolder1_btnFlexiDDCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>MIS Policy No.</td>
												<td><input id="ContentPlaceHolder1_ChkMIS"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkMIS"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkMIS\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMISCodePrefix"
													type="text" value="01/MIS/ "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtMISCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtMISCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMISCodeNoOfdigit"
													type="text" value="6"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtMISCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtMISCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMIScodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtMIScodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtMISCodePreview"
													type="text" value="01/MIS/ 000001" readonly="readonly"
													id="ContentPlaceHolder1_txtMISCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnMISCodeSave"
													value="Save" id="ContentPlaceHolder1_btnMISCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Saving Acoount No.</td>
												<td><input id="ContentPlaceHolder1_ChkSB"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkSB"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkSB\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtSBCodePrefix"
													type="text" value="10"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtSBCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtSBCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtSBCodeNoOfdigit"
													type="text" value="7"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtSBCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtSBCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtSBcodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtSBcodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtSBCodePreview"
													type="text" value="100000001" readonly="readonly"
													id="ContentPlaceHolder1_txtSBCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnSBCodeSave" value="Save"
													id="ContentPlaceHolder1_btnSBCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Fixed Emi Loan</td>
												<td><input id="ContentPlaceHolder1_ChkFLoan"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkFLoan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkFLoan\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFLoanCodePrefix"
													type="text" value="FIXED EMI "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFLoanCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtFLoanCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFLoanCodeNoOfdigit"
													type="text" value="4"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtFLoanCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtFLoanCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFLoancodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtFLoancodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtFLoanCodePreview"
													type="text" value="FIXED EMI 0001" readonly="readonly"
													id="ContentPlaceHolder1_txtFLoanCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnFLoanCodeSave"
													value="Save" id="ContentPlaceHolder1_btnFLoanCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>No EMI Loan</td>
												<td><input id="ContentPlaceHolder1_ChkNLoan"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkNLoan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkNLoan\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtnLoanCodePrefix"
													type="text" value="OD EMI "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtnLoanCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtnLoanCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNLoanCodeNoOfdigit"
													type="text" value="4"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtNLoanCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtNLoanCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNLoancodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtNLoancodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNLoanCodePreview"
													type="text" value="OD EMI 0001" readonly="readonly"
													id="ContentPlaceHolder1_txtNLoanCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnNLoanCodeSave"
													value="Save" id="ContentPlaceHolder1_btnNLoanCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Fixed Emi Gold Loan</td>
												<td><input id="ContentPlaceHolder1_ChkGFLoan"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkGFLoan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkGFLoan\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGFLoanCodePrefix"
													type="text" value="FIXED GL"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtGFLoanCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtGFLoanCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGFLoanCodeNoOfdigit"
													type="text" value="5"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtGFLoanCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtGFLoanCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGFLoancodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtGFLoancodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGFLoanCodePreview"
													type="text" value="FIXED GL00001" readonly="readonly"
													id="ContentPlaceHolder1_txtGFLoanCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnGFLoanCodeSave"
													value="Save" id="ContentPlaceHolder1_btnGFLoanCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>No Emi Gold Loan</td>
												<td><input id="ContentPlaceHolder1_ChkNGFLoan"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkNGFLoan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkNGFLoan\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNGFLoanCodePrefix"
													type="text" value="OD GL "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtNGFLoanCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtNGFLoanCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNGFLoanCodeNoOfdigit"
													type="text" value="4"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtNGFLoanCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtNGFLoanCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNGFLoancodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtNGFLoancodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtNGFLoanCodePreview"
													type="text" value="OD GL 0001" readonly="readonly"
													id="ContentPlaceHolder1_txtNGFLoanCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnNGFLoanCodeSave"
													value="Save" id="ContentPlaceHolder1_btnNGFLoanCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>Group Loan ID</td>
												<td><input id="ContentPlaceHolder1_ChkGrLoan"
													type="checkbox" name="ctl00$ContentPlaceHolder1$ChkGrLoan"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ChkGrLoan\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGrLoanCodePrefix"
													type="text" value="GRP"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtGrLoanCodePrefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txtGrLoanCodePrefix"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGrLoanCodeNoOfdigit"
													type="text" value="5"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtGrLoanCodeNoOfdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txtGrLoanCodeNoOfdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGrLoancodeLastNo"
													type="text" value="1"
													id="ContentPlaceHolder1_txtGrLoancodeLastNo"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txtGrLoanCodePreview"
													type="text" value="GRP00001" readonly="readonly"
													id="ContentPlaceHolder1_txtGrLoanCodePreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnGrLoanCodeSave"
													value="Save" id="ContentPlaceHolder1_btnGrLoanCodeSave"
													class="btn btn-success pull-right" /></td>
											</tr>
											<tr>
												<td>HRM Code</td>
												<td><input id="ContentPlaceHolder1_chkhrm"
													type="checkbox" name="ctl00$ContentPlaceHolder1$chkhrm"
													onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$chkhrm\&#39;,\&#39;\&#39;)&#39;, 0)" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txthrmprefix" type="text"
													value="01/EMP "
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txthrmprefix\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="ContentPlaceHolder1_txthrmprefix" class="form-control"
													autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txthrmnoofdigit"
													type="text" value="4"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txthrmnoofdigit\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);"
													id="ContentPlaceHolder1_txthrmnoofdigit"
													class="form-control" autocomplete="off" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txthrmlastno" type="text"
													value="1" id="ContentPlaceHolder1_txthrmlastno"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /></td>
												<td><input
													name="ctl00$ContentPlaceHolder1$txthrmcodepreview"
													type="text" value="01/EMP 0001" readonly="readonly"
													id="ContentPlaceHolder1_txthrmcodepreview"
													class="form-control" autocomplete="off" /></td>
												<td><input type="submit" disabled
													name="ctl00$ContentPlaceHolder1$btnhrmcode" value="Save"
													id="ContentPlaceHolder1_btnhrmcode"
													class="btn btn-success pull-right" /></td>
											</tr>
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		
	</form>
</body>
</html>