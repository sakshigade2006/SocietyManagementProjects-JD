package com.society.application.controler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectionReportModel;
import com.society.application.model.AdvisorTeamCollection;
import com.society.application.model.ApprovedLoan;
import com.society.application.model.ChequeClear;
import com.society.application.model.DueEmiReport;
import com.society.application.model.EmiOverDueModel;
import com.society.application.model.IncentivePaymentReport;
import com.society.application.model.InvestmentReport;
import com.society.application.model.InvestmentSummarymodel;
import com.society.application.model.IrregularEMIReport;
import com.society.application.model.LoanEMIOutstandingReport;
import com.society.application.model.LoanNotApproveReportModel;
import com.society.application.model.LoanPaymentReport;
import com.society.application.model.LoanSheetPrint;
import com.society.application.model.MaturityLiabilityReport;
import com.society.application.model.MaturityStatusReportModel;
import com.society.application.model.ProjectionReportModel;
import com.society.application.model.RecurringDueReportModel;
import com.society.application.model.RegularEmiReport;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectionRepo;
import com.society.application.repository.AdvisorTeamCollectionRepo;
import com.society.application.repository.ApprovedLoanRepo;
import com.society.application.repository.ChequeClearRepo;
import com.society.application.repository.DueEmiReportRepo;
import com.society.application.repository.EmiOverDueRepo;
import com.society.application.repository.IncentivePaymentReportRepo;
import com.society.application.repository.InvestmentReportRepo;
import com.society.application.repository.InvestmentSummaryRepo;
import com.society.application.repository.IrregularEMIReportRepo;
import com.society.application.repository.LoanEMIOutstandingReportRepo;
import com.society.application.repository.LoanNotApproverRepo;
import com.society.application.repository.LoanPaymentReportRepo;
import com.society.application.repository.LoanSheetPrintRepo;
import com.society.application.repository.MaturityLiabilityReportRepo;
import com.society.application.repository.MaturityStatusReportRepo;
import com.society.application.repository.ProjectionReportRepo;
import com.society.application.repository.RecurringDueRepo;
import com.society.application.repository.RegularEmiReportRepo;
import com.society.application.repository.TDSDeductionReportRepo;

@Controller
public class ReportSectionController {
	@Autowired
	InvestmentReportRepo investmentreportrepo;

	@Autowired
	IncentivePaymentReportRepo incentivepaymentreportrepo;

	@Autowired
	DueEmiReportRepo dueemireportrepo;

	@Autowired
	LoanSheetPrintRepo loansheetprintrepo;

	@Autowired
	AdvisorTeamCollectionRepo advisorTeamCollectionRepo;

	@Autowired
	ApprovedLoanRepo approvedLoanRepo;

	@Autowired
	RegularEmiReportRepo regularEmiReportRepo;

	@Autowired
	MaturityLiabilityReportRepo maturityLiabilityReportRepo;

	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	@Autowired
	EmiOverDueRepo eodrepo;

	@Autowired
	InvestmentSummaryRepo isrepo;

	@Autowired
	MaturityStatusReportRepo msrepo;

	@Autowired
	RecurringDueRepo rcdrepo;

	@Autowired
	LoanNotApproverRepo laonApproverRepo;

	@Autowired
	AdvisorCollectionRepo advisorCollectionRepo;

	@Autowired
	LoanEMIOutstandingReportRepo loanEmiOutReportRepo;

	@Autowired
	ChequeClearRepo chequeClearRepo;

	@Autowired
	LoanPaymentReportRepo loanPaymentReportRepo;

	@Autowired
	IrregularEMIReportRepo irregularEMIReportRepo;

	@Autowired
	TDSDeductionReportRepo tdsDeductionReportRepo;

	@Autowired
	ProjectionReportRepo projectionReportRepo;
	
	@Autowired
	AddInvestmentRepo addinvestmentrepo;

	/* INVESTMENT REPORT */

	@GetMapping("/InvestmentReport")
	public String getInvestmentReport() {
		return "reportSection/InvestmentReport";
	}

	@GetMapping("/InvestmentReport1")
	@ResponseBody
	public List<InvestmentReport> getInvestmentReport1(
			@ModelAttribute("InvestmentReportmodel1") InvestmentReport model1, HttpServletRequest request) {
		try {
			String B_ranch = request.getParameter("BRANCH");
			String Plan_Name = request.getParameter("PlanName");
			String Plan_Code = request.getParameter("PlanCode");
			String Biz_type = request.getParameter("Biztype");
			String From_date = request.getParameter("Fromdate");
			String To_date = request.getParameter("Todate");

			List<InvestmentReport> list1 = investmentreportrepo.findBybranch(B_ranch);
			List<InvestmentReport> list2 = investmentreportrepo.findByplanName(Plan_Name);
			List<InvestmentReport> list3 = investmentreportrepo.findByplanCode(Plan_Code);
			List<InvestmentReport> list4 = investmentreportrepo.findBybiztype(Biz_type);
			List<InvestmentReport> list5 = investmentreportrepo.findBytxnDateBetween(From_date, To_date);

			if (!list1.isEmpty()) {
				return list1;
			} else if (!list2.isEmpty()) {
				return list2;
			} else if (!list3.isEmpty()) {
				return list3;
			} else if (!list4.isEmpty()) {
				return list4;
			} else {
				return list5;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	/* INCENTIVE PAYMENT REPORT */

	@GetMapping("/IncentivePaymentReport")
	public String getIncentivePaymentReport() {
		return "reportSection/IncentivePaymentReport";
	}

	@GetMapping("/IncentivePaymentReport1")
	@ResponseBody
	public List<IncentivePaymentReport> getIncentivePaymentReport1(HttpServletRequest request) {
		try {
			String B_ranch = request.getParameter("Branch");
			String FormDate = request.getParameter("Fromdate");
			String ToDate = request.getParameter("Todate");

			List<IncentivePaymentReport> list1 = incentivepaymentreportrepo.findBybranch(B_ranch);
			List<IncentivePaymentReport> list2 = incentivepaymentreportrepo.findBypaydateBetween(FormDate, ToDate);

			if (!list1.isEmpty()) {
				return list1;
			} else {
				return list2;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	/* DUE EMI REPORT */

	@GetMapping("/DueEmiReport")
	public String getDueEmiReport() {
		return "reportSection/DueEmiReport";
	}

	@GetMapping("/DueEmiReport1")
	@ResponseBody
	public List<DueEmiReport> getDueEmiReport1(HttpServletRequest request) {
		try {
			String B_ranch = request.getParameter("Branch");
			String P_lan = request.getParameter("Plan");
			String Advisor_Code = request.getParameter("AdvisorCode");
			String Till_Date = request.getParameter("TillDate");

			List<DueEmiReport> list1 = dueemireportrepo.findBybranch(B_ranch);
			List<DueEmiReport> list2 = dueemireportrepo.findByplan(P_lan);
			List<DueEmiReport> list3 = dueemireportrepo.findByadvisorCode(Advisor_Code);
			List<DueEmiReport> list4 = dueemireportrepo.findBytillDueBefore(Till_Date);

			if (!list1.isEmpty()) {
				return list1;
			} else if (!list2.isEmpty()) {
				return list2;
			} else if (!list3.isEmpty()) {
				return list3;
			} else {
				return list4;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}

	/* LOAN SHEET PRINT */

	@GetMapping("/LoanSheetPrint")
	public String getLoanSheetPrint() {
		return "reportSection/LoanSheetPrint";
	}

	@GetMapping("/LoanSheetPrint1")
	@ResponseBody
	public List<LoanSheetPrint> getLoanSheetPrint1(HttpServletRequest request) {
		try {
			String P_lan = request.getParameter("Plan");
			String Advisor_Code = request.getParameter("AdvisorCode");
			String Till_Date = request.getParameter("TillDate");

			List<LoanSheetPrint> list1 = loansheetprintrepo.findByplan(P_lan);
			List<LoanSheetPrint> list2 = loansheetprintrepo.findByadvisorCode(Advisor_Code);
			List<LoanSheetPrint> list3 = loansheetprintrepo.findBypayDateBefore(Till_Date);

			if (!list1.isEmpty()) {
				return list1;
			} else if (!list2.isEmpty()) {
				return list2;
			} else {
				return list3;
			}
		} catch (Exception ex) {
			System.out.print(ex.getMessage());
		}
		return null;
	}

	/* ADVISOR TEAM COLLECTION */

	@GetMapping("/getAdvisorTeamCollection")
	public String getAdvisorTeamColl() {
		return "reportSection/AdvisorTeamCollection";
	}

	@GetMapping("/getAdvisorTeamCollection1")
	@ResponseBody
	public List<AdvisorTeamCollection> getAdvisorTeamCollection1(HttpServletRequest request) {
		try {
			String advisorcode = request.getParameter("Advisorcode");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<AdvisorTeamCollection> list = advisorTeamCollectionRepo.findByadvisorcode(advisorcode);
			List<AdvisorTeamCollection> list1 = advisorTeamCollectionRepo.findBydateBetween(fromdate, todate);

			if (!list.isEmpty()) {
				return list;
			} else
				return list1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* APPROVED LOAN */

	@GetMapping("/approvedLoan")
	public String approvedLoan() {
		return "reportSection/ApprovedLoan";
	}

	@GetMapping("/getapprovedLoan")
	@ResponseBody
	public List<ApprovedLoan> getapprovedLoan(HttpServletRequest request) {
		try {
			String branch = request.getParameter("Branch");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<ApprovedLoan> list = approvedLoanRepo.findBybranch(branch);
			List<ApprovedLoan> list1 = approvedLoanRepo.findByloandateBetween(fromdate, todate);

			if (!list.isEmpty()) {
				return list;
			} else {
				return list1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* REGULAR EMI REPORT */

	@GetMapping("/regularEmiReport")
	public String regularEmiReport() {
		return "reportSection/RegularEmiReport";
	}

	@GetMapping("/getregularEmiReport")
	@ResponseBody
	public List<RegularEmiReport> getregularEmiReport(HttpServletRequest request) {
		try {
			String branch = request.getParameter("Branch");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<RegularEmiReport> list = regularEmiReportRepo.findBybranch(branch);
			List<RegularEmiReport> list1 = regularEmiReportRepo.findBypaydateBetween(fromdate, todate);

			if (!list.isEmpty()) {
				return list;
			} else {
				return list1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* MATURITY LIABILITY REPORT */

	@GetMapping("/maturityLiabilityReport")
	public String maturityLiabilityReport() {
		return "reportSection/MaturityLiabilityReport";
	}

	@GetMapping("/getmaturityLiabilityReport")
	@ResponseBody
	public List<MaturityLiabilityReport> getmaturityLiabilityReport(HttpServletRequest request) {
		try {
			String branch = request.getParameter("Branch");
			String planname = request.getParameter("Planname");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<MaturityLiabilityReport> list = maturityLiabilityReportRepo.findBybranch(branch);

			List<MaturityLiabilityReport> list1 = maturityLiabilityReportRepo.findByplanname(planname);

			List<MaturityLiabilityReport> list2 = maturityLiabilityReportRepo.findBypolicydateBetween(fromdate, todate);

			if (!list.isEmpty()) {
				return list;
			} else if (!list1.isEmpty()) {
				return list1;
			} else {
				return list2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* POLICY STATEMENT */

	@GetMapping("/policystatement")
	public String policystatement() {
		return "reportSection/PolicyStatement";
	}
	
	@GetMapping("/getPolicyNoReportSection")
	@ResponseBody
	public List<AddInvestment> getPolicyNoReportSection(){
		List<AddInvestment> list = addinvestmentrepo.findAll();
		return list;
	}

	@PostMapping("/getpolicystatement")
	@ResponseBody
	public List<AddInvestment> getpolicystatement(@RequestBody AddInvestment add) {
	    List<AddInvestment> list = addInvestmentRepo.findBypolicyno(add.getPolicyno());
	    return list;
	}

	/* EMI OVER DUE REPORT */

	@GetMapping("/EMIOverDueReportView")
	public String showPage(Model model) {
		return "reportSection/EmiOverDuePage";
	}

	@GetMapping("/emiOverDue")
	@ResponseBody
	public List<EmiOverDueModel> fetchemimodel(HttpServletRequest hp) {
		try {
			String branch = hp.getParameter("selectbranch");
			String plan = hp.getParameter("selectplan");
			String codeadv = hp.getParameter("typeadvisorcode");
			String tdate = hp.getParameter("tilldate");

			List<EmiOverDueModel> emioduemo = eodrepo.findBybranchname(branch);
			List<EmiOverDueModel> emioduebyplan = eodrepo.findByplannames(plan);
			List<EmiOverDueModel> emioduebyCode = eodrepo.findByadvisorcode(codeadv);
			List<EmiOverDueModel> emioduebytdate = eodrepo.findByduedateBefore(tdate);

			if (!emioduemo.isEmpty()) {
				return emioduemo;
			}
			if (!emioduebyplan.isEmpty()) {
				return emioduebyplan;
			}
			if (!emioduebyCode.isEmpty()) {
				return emioduebyCode;
			}
			if (!emioduebytdate.isEmpty()) {
				return emioduebytdate;
			}
		} catch (Exception e) {
			System.out.print(e);
		}
		return null;
	}

	/* INVESTMENT - SUMMARY */

	@GetMapping("/investmentReportSummaryView")
	public String showInvestmentPage(Model model) {
		return "reportSection/InvestmentReportSummaryPage";
	}

	@GetMapping("/searchInfobranch")
	@ResponseBody
	public List<InvestmentSummarymodel> searchData(HttpServletRequest hp) {
		String branch = hp.getParameter("selectbranch");
		List<InvestmentSummarymodel> data = isrepo.findBybranchname(branch);
		return data;
	}

	@GetMapping("/searchByDate")
	@ResponseBody
	public List<InvestmentSummarymodel> searchBydate(HttpServletRequest hp) {
		String fdate = hp.getParameter("fromdate");
		String tdate = hp.getParameter("todate");
		List<InvestmentSummarymodel> loaddata = isrepo.findByinvestmentdateBetween(fdate, tdate);
		return loaddata;
	}

	/* MATURITY STATUS */

	@GetMapping("/MaturityStatusReportView")
	public String showmaturityPage(Model model) {
		return "reportSection/MaturityStatusReportPage";
	}

	@GetMapping("/Maturityapi")
	@ResponseBody
	List<MaturityStatusReportModel> fetchDetails(HttpServletRequest hp) {
		try {
			String fdate = hp.getParameter("fromdate");
			String tdate = hp.getParameter("todate");
			String branch = hp.getParameter("selectbranch");
			List<MaturityStatusReportModel> mstatusbybranch = msrepo.findBybname(branch);
			List<MaturityStatusReportModel> mstatusbydate = msrepo.findByapplicationdateBetween(fdate, tdate);
			System.out.println(mstatusbybranch);
			if (!mstatusbybranch.isEmpty()) {
				return mstatusbybranch;
			} else if (!mstatusbydate.isEmpty()) {
				return mstatusbydate;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/* RECURRING DUE REPORT */

	@GetMapping("/RecurringDueReportView")
	public String ShowRecuringPage(Model model) {
		return "reportSection/RecurringDueReportPage";
	}

	@GetMapping("/findByDate")
	@ResponseBody
	public List<RecurringDueReportModel> SearchBydate2(HttpServletRequest hp) {
		try {
			String fdate = hp.getParameter("fromdate");
			String tdate = hp.getParameter("todate");
			String branch = hp.getParameter("selectbranch");

			List<RecurringDueReportModel> combodata = rcdrepo.findBybranchname(branch);

			List<RecurringDueReportModel> loaddatare = rcdrepo.findBytxndateBetween(fdate, tdate);
			if (!combodata.isEmpty()) {
				return combodata;
			} else
				return loaddatare;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	/* LOAN NOT APPROVED REPORT */

	@GetMapping("/LoanNotApprovedReport")
	public String getLoanNotApprovedReport() {
		return "reportSection/LoanNotApproveReport";
	}

	@GetMapping("/searchLoanNotApproveReport")
	@ResponseBody
	public List<LoanNotApproveReportModel> searchLoanNotApproveReport(HttpServletRequest hp) {
		String Branch = hp.getParameter("Branch1");
		String fDate = hp.getParameter("FDate");
		String tDate = hp.getParameter("TDate");

		List<LoanNotApproveReportModel> data1 = laonApproverRepo.findBybranch(Branch);
		List<LoanNotApproveReportModel> data2 = laonApproverRepo.findBydateBetween(fDate, tDate);

		if (!data1.isEmpty()) {
			return data1;
		}
		return data2;
	}

	/* ADVISOR COLLECTION */

	@GetMapping("/addEmployeeCollection")
	public String addLedgerMaster(Model model) {
		return "reportSection/EmployeeCollection";
	}

	@GetMapping("/searchBusinessType")
	@ResponseBody
	public List<AdvisorCollectionReportModel> searchSelectBranch(HttpServletRequest hp) {
		String BusinessType1 = hp.getParameter("BusinessType");
		String AdvisorCode = hp.getParameter("AdvisorCode");
		String fDate = hp.getParameter("FDate");
		String tDate = hp.getParameter("TDate");

		List<AdvisorCollectionReportModel> data1 = advisorCollectionRepo.findByBusinessType(BusinessType1);
		List<AdvisorCollectionReportModel> data2 = advisorCollectionRepo.findByadvisorCode(AdvisorCode);
		List<AdvisorCollectionReportModel> data3 = advisorCollectionRepo.findBydateBetween(fDate, tDate);

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		}
		return data3;
	}

	/* EMI OUTSTANDING REPORT */

	@GetMapping("/addLoanEMIOutstandingReport")
	public String addLoanEMIOutstandingReport(Model model) {
		return "reportSection/LoanEMIOutstandingReport";
	}

	@GetMapping("/searchLoanEMIOutstandingReport")
	@ResponseBody
	public List<LoanEMIOutstandingReport> searchLoanEMIOutstandingReport(HttpServletRequest hp) {

		String Branch = hp.getParameter("Branch1");
		String Plan = hp.getParameter("Plan");
		String AdvisorCode = hp.getParameter("AdvisorCode");
		String Datee = hp.getParameter("Datee");

		List<LoanEMIOutstandingReport> data1 = loanEmiOutReportRepo.findBybranch(Branch);
		List<LoanEMIOutstandingReport> data2 = loanEmiOutReportRepo.findByplan(Plan);
		List<LoanEMIOutstandingReport> data3 = loanEmiOutReportRepo.findByadvisorCode(AdvisorCode);
		List<LoanEMIOutstandingReport> data4 = loanEmiOutReportRepo.findBydateeBefore(Datee);

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		} else if (!data3.isEmpty()) {
			return data3;
		}
		return data4;
	}

	/* CHEQUE CLEARANCE STATUS */

	@GetMapping("/Chequeclearancestatus")
	public String getChequeClear() {
		return "reportSection/ChequeClear";
	}

	@GetMapping("/Chequeclearancestatus1")
	@ResponseBody
	public List<ChequeClear> getChequeClear1(@ModelAttribute("ChequeClear") ChequeClear model,
			HttpServletRequest request) {
		try {
			String type = request.getParameter("Type");
			String branch = request.getParameter("Branch");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");
			String chequeno = request.getParameter("Chequeno");

			List<ChequeClear> list1 = chequeClearRepo.findBytype(type);
			List<ChequeClear> list2 = chequeClearRepo.findBybranch(branch);
			List<ChequeClear> list3 = chequeClearRepo.findBytxndateBetween(fromdate, todate);
			List<ChequeClear> list4 = chequeClearRepo.findBycheque(chequeno);

			if (!list1.isEmpty()) {
				return list1;
			} else if (!list2.isEmpty()) {
				return list2;
			} else if (!list3.isEmpty()) {
				return list3;
			} else {
				return list4;
			}
		} catch (Exception ex) {
			System.out.println("Exception:" + ex.getMessage());
		}
		return null;
	}

	/* LOAN PAYMENT REPORT */

	@GetMapping("/LoanPaymentReport")
	public String getLoanPaymentReport() {
		return "reportSection/LoanPaymentReport";
	}

	@GetMapping("/LoanPaymentReport1")
	@ResponseBody
	public List<LoanPaymentReport> getLoanPaymentReport(@ModelAttribute LoanPaymentReport model,
			HttpServletRequest request) {
		try {
			String branch = request.getParameter("Branch");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<LoanPaymentReport> list1 = loanPaymentReportRepo.findBybranch(branch);
			List<LoanPaymentReport> list2 = loanPaymentReportRepo.findByloandateBetween(fromdate, todate);

			if (!list1.isEmpty()) {
				return list1;
			} else
				return list2;
		} catch (Exception ex) {
			System.out.println("Exception:" + ex.getMessage());
		}
		return null;
	}

	/* IRREGULAR EMI REPORT */

	@GetMapping("/irrregularEMIReport")
	public String getIrrregularEMIReport() {
		return "reportSection/IrregularEMIReport";
	}

	@GetMapping("/irrregularEMIReport1")
	@ResponseBody
	public List<IrregularEMIReport> getirrregularEMIReport1(@ModelAttribute IrregularEMIReport model,
			HttpServletRequest request) {
		try {
			String branch = request.getParameter("Branch");
			String fromdate = request.getParameter("Fromdate");
			String todate = request.getParameter("Todate");

			List<IrregularEMIReport> list1 = irregularEMIReportRepo.findBybranch(branch);
			List<IrregularEMIReport> list2 = irregularEMIReportRepo.findBypaydateBetween(fromdate, todate);

			if (!list1.isEmpty()) {
				return list1;
			} else
				return list2;
		} catch (Exception ex) {
			System.out.println("Exception:" + ex.getMessage());
		}
		return null;
	}

	/* TDS DEDUCTION REPORT */

	@GetMapping("/TDSDeductionReport")
	public String getTDSDeductionReport() {
		return "reportSection/TDSDeductionReport";
	}

	@GetMapping("/TDSDeductionReport1")
	@ResponseBody
	public List<AdvisorCollectionReportModel> getTDSDeductionReport1(@ModelAttribute AdvisorCollectionReportModel model,
			HttpServletRequest request) {
		String month = request.getParameter("Month");
		int mnth = Integer.parseInt(month);
		String advisorcode = request.getParameter("Advisorcode");

		List<AdvisorCollectionReportModel> list1 = tdsDeductionReportRepo.findBymonth(mnth);
		List<AdvisorCollectionReportModel> list2 = tdsDeductionReportRepo.findByadvisorCode(advisorcode);

		if (!list1.isEmpty()) {
			return list1;
		} else
			return list2;
	}

	/* PROJECTION REPORT */

	@GetMapping("/addProjectionReport")
	public String addProjectionReport(Model model) {
		return "reportSection/ProjectionReport";
	}

	@GetMapping("/searchProjectionReport")
	@ResponseBody
	public List<ProjectionReportModel> searchProjectionReport(HttpServletRequest hp) {
		String Branch = hp.getParameter("Branch1");
		String PlanName = hp.getParameter("PlanName1");
		String Fdate = hp.getParameter("Fdate1");
		String Tdate = hp.getParameter("Tdate1");

		List<ProjectionReportModel> data1 = projectionReportRepo.findBybranch(Branch);
		List<ProjectionReportModel> data2 = projectionReportRepo.findByplaneName(PlanName);
		List<ProjectionReportModel> data3 = projectionReportRepo.findBydateBetween(Fdate, Tdate);

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		}
		return data3;
	}

}
