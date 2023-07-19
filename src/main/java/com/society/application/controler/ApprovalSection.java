package com.society.application.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.dto.Response;
import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;
import com.society.application.model.CashStatement;
import com.society.application.model.ClientMaster;
import com.society.application.model.IrregularEMIReport;
import com.society.application.model.RecurringDueReportModel;
import com.society.application.model.RegularEmiReport;
import com.society.application.model.SavingsDepositWith;
import com.society.application.model.ShareTransferDto;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.CashStatementrepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.IrregularEMIReportRepo;
import com.society.application.repository.RecurringDueReportModelRepo;
import com.society.application.repository.RegularEmiReportRepo;
import com.society.application.repository.SavingsDepositWithRepo;
import com.society.application.repository.SavingsDepositWithdrawalRepo;
import com.society.application.repository.ShareTransferDtoRepo;

@Controller
public class ApprovalSection {
	
	@Autowired
	BranchMasterRepo branchMasterRepo;
	
	@Autowired
	ClientMasterRepo clientMasterRepo;
	
	@Autowired
	ShareTransferDtoRepo dtoRepo;
	
	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;
	
	@Autowired
	CashStatementrepo cashStatementrepo;
	
	@Autowired
	private SavingsDepositWithdrawalRepo savingsDepositWithdrawalRepo;
	
	@Autowired
	private RegularEmiReportRepo regularEmiReportRepo;
	
	@Autowired
	private IrregularEMIReportRepo irregularEMIReportRepo;
	
	@Autowired
	AddInvestmentRepo addInvestmentRepo;
	
	@Autowired
	RecurringDueReportModelRepo recurringDueReportModelRepo;

	@Autowired
	SavingsDepositWithRepo savingsDepositWithRepo;

	/* MEMBER APPROVAL */

	@GetMapping("/addMemberApproval")
	public String addMemberApproval(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "approvalSection/AddMemberApproval";
	}
	
	@PostMapping("/memberApproval")
	@ResponseBody
	public List<ClientMaster> memberApproval(@RequestBody ClientMaster clientMaster) {
		List<ClientMaster> list1 = clientMasterRepo.findByBranchName(clientMaster.getBranchName());
		List<ClientMaster> list2 = clientMasterRepo.findByregistrationDateBetween(clientMaster.getfDate(),
				clientMaster.gettDate());
		if (!list1.isEmpty()) {
			return list1;
		} else
			return list2;
	}
	
	/* */
	
	/* SHARE APPROVAL */

	@GetMapping("/shareIssueApproval")
	public String shareIssueApproval(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "approvalSection/ShareIssueApproval";
	}
	
	@PostMapping("/shareApproval")
	@ResponseBody
	public List<ShareTransferDto> shareApproval(@RequestBody ShareTransferDto share){
		List<ShareTransferDto> list1 = dtoRepo.findBybranchName(share.getBranchName());
		List<ShareTransferDto> list2 = dtoRepo.findBydojBetween(share.getfDate(), share.gettDate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}
	
	/* */
	
	/* ADVISOR/COLLECTOR APPROVAL */

	@GetMapping("/advisorApproval")
	public String advisorApproval(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "approvalSection/AdvisorApproval";
	}
	
	@PostMapping("/advisorApproval")
	@ResponseBody
	public List<AdvisorCollectorDetails> advisorApproval(@RequestBody AdvisorCollectorDetails advisor){
		List<AdvisorCollectorDetails> list1 = advisorCollectorDetailsRepo.findBybranchName(advisor.getBranchName());
		List<AdvisorCollectorDetails> list2 = advisorCollectorDetailsRepo.findByjoiningDateBetween(advisor.getfDate(), advisor.gettDate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}
	
	/* */

	@GetMapping("/investmentApproval")
	public String investmentApproval(Model model) {
		return "approvalSection/InvestmentApproval";
	}

	@GetMapping("/recurringApproval")
	public String recurringApproval(Model model) {
		return "approvalSection/RecurringApproval";
	}

	@GetMapping("/SBTxnApproval")
	public String SBTxnApproval(Model model) {
		return "approvalSection/SBTxnApproval";
	}
	
	/* SB TRANSFER APPROVAL */

	@GetMapping("/intraTransferApproval")
	public String intraTransferApproval(Model model) {
		return "approvalSection/IntraTransferApproval";
	}
	
	// Search by branchName & fdate tDate
	@PostMapping("getDataByBranchAndDate")
	@ResponseBody
	public List<SavingsDepositWith> getDataByBranchAndDate(@RequestBody SavingsDepositWith savingsDepositWith) {
		List<SavingsDepositWith> branchName = savingsDepositWithdrawalRepo
				.findBybranchName(savingsDepositWith.getBranchName());
		List<SavingsDepositWith> date = savingsDepositWithdrawalRepo.findBytxnDateBetween(savingsDepositWith.getfDate(),
				savingsDepositWith.gettDate());
		if (!branchName.isEmpty()) {
			return branchName;
		} else
			return date;
	}
	
	/* */
	
	/* REGULAR EMI APPROVAL */

	@GetMapping("/regularEMIApproval")
	public String regularEMIApproval(Model model) {
		return "approvalSection/RegularEMIApproval";
	}
	
	@PostMapping("/getDataInTableRegularEmi")
	@ResponseBody
	public List<RegularEmiReport> getDataInTableRegularEmi(@RequestBody RegularEmiReport regularEmiReport){
		List<RegularEmiReport> branch =regularEmiReportRepo.findBybranch(regularEmiReport.getBranch());
		List<RegularEmiReport> date =regularEmiReportRepo.findBypaydateBetween(regularEmiReport.getFromdate(),regularEmiReport.getTodate());
		if(!branch.isEmpty()) {
			return branch;
		}
		else
			return date;
	}
	
	/* */
	
	/* IRREGULAR EMI APPROVAL */

	@GetMapping("/irrularEMIApproval")
	public String irrularEMIApproval(Model model) {
		return "approvalSection/IrrularEMIApproval";
	}
	
	// fetch Data in Table of Irregular Emi
	@PostMapping("/fetchDataInTableirregularEmi")
	@ResponseBody
	public List<IrregularEMIReport> fetchDataInTableirregularEmi(@RequestBody IrregularEMIReport irregularEMIReport) {
		List<IrregularEMIReport> branch = irregularEMIReportRepo.findBybranch(irregularEMIReport.getBranch());
		List<IrregularEMIReport> date = irregularEMIReportRepo.findBypaydateBetween(irregularEMIReport.getfDate(),
				irregularEMIReport.gettDate());
		if (!branch.isEmpty()) {
			return branch;
		} else
			return date;
	}
	
	/* */
	
	/* PAYMENT ENTRY APPROVAL */

	@GetMapping("/paymentEntryApproval")
	public String paymentEntryApproval(Model model) {
		return "approvalSection/PaymentEntryApproval";
	}
	
	@PostMapping("/searchInThePaymentApproval")
	@ResponseBody
	public List<AddInvestment> searchInTheGroupLoan(@RequestBody AddInvestment addInvestment) {
		List<AddInvestment> data1 = addInvestmentRepo.findBybranchName(addInvestment.getBranchName());
		List<AddInvestment> data2 = addInvestmentRepo.findBypolicyDateBetween(addInvestment.getfDate(), addInvestment.gettDate());
		if (!data1.isEmpty()) {
			return data1;
		} else {
			return data2;
		}
	}
	
	/* */
	
	/* MATURITY APPLICATION APPROVAL */

	@GetMapping("/maturityApplicationApproval")
	public String maturityApplicationApproval(Model model) {
		return "approvalSection/MaturityApplicationApproval";
	}
	
	// update code for maturity application
	@PostMapping("/updateBySelectPolicyNoMAturity")
	@ResponseBody
	public ResponseEntity<String> updateBySelectPolicyNoMAturity(@RequestParam(value = "id") Integer id,
			@RequestParam(name = "aprovalStatus", required = false) String aprovalStatus,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "appBranch", required = false) String appBranch,
			@RequestParam(name = "approvalDate", required = false) String approvalDate,
			@RequestParam(name = "adjustment", required = false) String adjustment,
			@RequestParam(name = "deduction", required = false) String deduction) {
		try {
			List<AddInvestment> add = addInvestmentRepo.findByid(id);
			add.forEach(s -> {
				if (!(deduction == null) && !(adjustment == null)) {
					try {
						s.setDeduction(deduction);
						s.setAdjustment(adjustment);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				s.setApprovalDate(approvalDate);
				s.setAppBranch(appBranch);
				s.setRemarks(remarks);
				s.setAprovalStatus(aprovalStatus);
				addInvestmentRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data Updated Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	/* */
	
	/* MATURITY APPLICATION DELETE */

	@GetMapping("/maturityApplicationDelete")
	public String maturityApplicationDelete(Model model) {
		return "approvalSection/MaturityApplicationDelete";
	}
	
	/* */
	
	/* BRANCH CASH TRANSFER APPROVAL */

	@GetMapping("/CSPCashTransferApproval")
	public String CSPCashTransferApproval(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "approvalSection/CSPCashTransferApproval";
	}
	
	@PostMapping("/cspCashTransferApproval")
	@ResponseBody
	public List<CashStatement> cspCashTransferApproval(@RequestBody CashStatement cash){
		List<CashStatement> list1 = cashStatementrepo.findBybranchName(cash.getBranchName());
		List<CashStatement> list2 = cashStatementrepo.findBytxnDateBetween(cash.getFromDate(), cash.getToDate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}
	
	/* */
	
	@PostMapping("/searchByBranchName")
	@ResponseBody
	public Response searchByBranchName(@RequestBody AddInvestment ai) {

		Response response = new Response<>();
		response.setStatus("Not Success");
		response.setMessage("Data Not Found ..!!");
		List<AddInvestment> addinvest = addInvestmentRepo.findBybranchName(ai.getBranchName());

		if (addinvest != null) {
			response.setStatus("Success");
			response.setMessage("Data Found !!!");
			response.setData(addinvest);
			return response;
		}

		return response;
	}


	@PostMapping("/searchByDate")
	@ResponseBody
	public Response searchByDate(@RequestBody AddInvestment ai) {

		Response response = new Response<>();
		response.setStatus("Not Success");
		response.setMessage("Data Not Found ..!!");

		List<AddInvestment> addinvest2 = addInvestmentRepo.findBymDateBetween(ai.getfDate(), ai.gettDate());

		if (addinvest2 != null) {
			response.setStatus("Success");
			response.setMessage("Data Found !!!");
			response.setData(addinvest2);
			return response;
		}
		return response;

	}
	
	
	
	
	//Renewal Approval Module.

		@PostMapping("/searchByBranchNameRenewalModule")
		@ResponseBody
		public Response searchByBranchNameRenewalModule(@RequestBody RecurringDueReportModel ai) {

			Response response = new Response<>();
			response.setStatus("Not Success");
			response.setMessage("Data Not Found ..!!");
			List<RecurringDueReportModel> recurringDueReportModels = recurringDueReportModelRepo.findBybranchname(ai.getBranchname());

			if (recurringDueReportModels != null) {
				response.setStatus("Success");
				response.setMessage("Data Found !!!");
				response.setData(recurringDueReportModels);
				return response;
			}

			return response;
		}


		@PostMapping("/searchByDateInRenewalApproval")
		@ResponseBody
		public Response searchByDateInRenewalApproval(@RequestBody RecurringDueReportModel ai) {

			Response response = new Response<>();
			response.setStatus("Not Success");
			response.setMessage("Data Not Found ..!!");

			List<RecurringDueReportModel> object = recurringDueReportModelRepo.findBytxndateBetween(ai.getFromdate(),ai.getTodate());

			if (object != null) {
				response.setStatus("Success");
				response.setMessage("Data Found !!!");
				response.setData(object);
				return response;
			}
			return response;

		}

		//Saving Transaction Approval.

		@PostMapping("/searchByBranchNameSavingTxn")
		@ResponseBody
		public Response searchByBranchNameSavingTxn(@RequestBody SavingsDepositWith ai) {

			Response response = new Response<>();
			response.setStatus("Not Success");
			response.setMessage("Data Not Found ..!!");
			List<SavingsDepositWith> object = savingsDepositWithRepo.findBybranchName(ai.getBranchName());


			if (object != null) {
				response.setStatus("Success");
				response.setMessage("Data Found !!!");
				response.setData(object);
				return response;
			}

			return response;
		}


		@PostMapping("/searchByDateInSavingApproval")
		@ResponseBody
		public Response searchByDateInSavingApproval(@RequestBody SavingsDepositWith ai) {

			Response response = new Response<>();
			response.setStatus("Not Success");
			response.setMessage("Data Not Found ..!!");

			List<SavingsDepositWith> object = savingsDepositWithRepo.findBytxnDateBetween(ai.getfDate(),ai.gettDate());

			if (object != null) {
				response.setStatus("Success");
				response.setMessage("Data Found !!!");
				response.setData(object);
				return response;
			}
			return response;

		}

}
