package com.society.application.controler;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

import com.society.application.dto.LoanWithLoanMasterDTO;
import com.society.application.dto.Response;
import com.society.application.model.BranchMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.GenericGetById;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.LoanSearchRequest;
import com.society.application.model.Member;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.LoanMasterRepo;
import com.society.application.repository.LoanPlanRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.LoginRepo;
import com.society.application.repository.MemberRepo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class LoanModuleController {
	
	@Autowired
	LoanPlanRepo loanPlanMasterRepo;

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	LoanMasterRepo loanMasterRepo;

	@Autowired
	LoanRepo loanRepo;

	@Autowired
	ClientMasterRepo clientMasterRepo;

	@GetMapping("/loanApplication9c5a")
	public String loanApplication9c5a(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanApplication9c5a";
	}

	@GetMapping("/loanApplicationf780")
	public String loanApplicationf780(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanApplicationf780";
	}

	@GetMapping("/loanRepaymentf159")
	public String loanRepaymentf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanRepaymentf159";
	}

	@GetMapping("/loanSearch")
	public String loanSearch(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		return "Loan_Section/LoanSearch";
	}

	@PostMapping("searchLoanByCode")
	@ResponseBody
	public List<Loan> searchLoanByCode(@RequestBody String requestObejct)
			throws JsonMappingException, JsonProcessingException {
		ObjectMapper objectMapper = new ObjectMapper();
		LoanSearchRequest request = objectMapper.readValue(requestObejct, LoanSearchRequest.class);
		// Now you can access the properties of the request object
		System.out.println("branch: " + request.getBranch());
		System.out.println("fDate: " + request.getfDate());
		System.out.println("tDate: " + request.gettDate());
		System.out.println("applicantName: " + request.getApplicantName());
		System.out.println("loanID: " + request.getLoanID());
		System.out.println("memberCode: " + request.getMemberCode());
		System.out.println("planName: " + request.getPlanName());
		System.out.println("advisorCode: " + request.getAdvisorCode());
		List<Loan> loanList = loanRepo.filterLoanData(request.getBranch(), request.getfDate(), request.gettDate());
		loanList.forEach(s -> {
			System.out.println(s);
		});
		return loanList;
	}

	@GetMapping("/LoanPlan")
	public String LoanPlan(Model model) {
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		return "Loan_Section/LoanPlan";
	}

	@GetMapping("/LoanApplication")
	public String LoanApplication(Model model) {
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanApplication";
	}

	@PostMapping("/getByLoanId")
	@ResponseBody
	public LoanPlanMaster getByLoanId(@RequestBody GenericGetById id) {
		Optional<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanPlanMaster.get();
	}

	@PostMapping("/getByLoanAppId")
	@ResponseBody
	public Loan getByLoanAppId(@RequestBody GenericGetById id) {
		Optional<Loan> loanPlanMaster = loanRepo.findById(Integer.parseInt(id.getId()));
		Optional<LoanMaster> loanMaster = loanMasterRepo
				.findById(Integer.parseInt(loanPlanMaster.get().getLoanPlanName()));
		loanPlanMaster.get().setLoanPlanNameView(loanMaster.get().getLoanName());
		return loanPlanMaster.get();
	}

	@GetMapping("/getAllLoanId")
	@ResponseBody
	public List<LoanPlanMaster> getAllLoanId() {
		List<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findAll();
		return loanPlanMaster;
	}

	@PostMapping("updateLoan")
	public String updateLoan(@ModelAttribute("updateLoan") Loan loan, Model model) {
		loan.setType("Loan");
		loan.setCreatedBy("");
		loan.setCreatedDate(new Date().toString());
		loan.setUpdatedBy("");
		loan.setUpdatedDate(new Date().toString());
		Loan loanSaved = loanRepo.save(loan);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		if (loanSaved != null) {
			List<Loan> loanPlanMasterAllData = loanRepo.findAll();
			// model.addAttribute("loanPlanMaster", loanPlanMasterAllData);
			model.addAttribute("status", "success");
			return "Loan_Section/LoanApplication";
		} else {
			model.addAttribute("status", "Fail");
			return "Loan_Section/LoanApplication";
		}
	}

	@PostMapping("updateLoanApp")
	public String updateLoanApp(@ModelAttribute("updateLoan") Loan loan, Model model) {
		loan.setType("Loan");
		loan.setCreatedBy("");
		loan.setCreatedDate(new Date().toString());
		loan.setUpdatedBy("");
		loan.setUpdatedDate(new Date().toString());
		Loan loanSaved = loanRepo.save(loan);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		if (loanSaved != null) {
			List<Loan> loanPlanMasterAllData = loanRepo.findAll();
			model.addAttribute("loanList", loanPlanMasterAllData);
			model.addAttribute("status", "success");
			return "Loan_Section/LoanApplication9c5a";
		} else {
			model.addAttribute("status", "Fail");
			return "Loan_Section/LoanApplication9c5a";
		}
	}

	@PostMapping("updateLoanPayment")
	public String updateLoanPayment(@ModelAttribute("updateLoan") Loan loan, Model model) {
		loan.setType("Loan");
		loan.setCreatedBy("");
		loan.setCreatedDate(new Date().toString());
		loan.setUpdatedBy("");
		loan.setUpdatedDate(new Date().toString());
		Loan loanSaved = loanRepo.save(loan);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		if (loanSaved != null) {
			List<Loan> loanPlanMasterAllData = loanRepo.findAll();
			model.addAttribute("loanList", loanPlanMasterAllData);
			model.addAttribute("status", "success");
			return "Loan_Section/LoanApplicationf780";
		} else {
			model.addAttribute("status", "Fail");
			return "Loan_Section/LoanApplicationf780";
		}
	}

	@PostMapping("/saveDataRegularEMIRepayment")
	public String saveDataRegularEMIRepayment(@ModelAttribute("rd") Loan loan, Model model) {
		//System.err.println("id = " + loan.getId());
		Optional<Loan> loanData = loanRepo.findById(loan.getId());
		if (loanData.isPresent()) {
			loanData.get().setModeRegOrIrr("regular");
			//loanRepo.save(loanData.get());
			loanRepo.save(loan);
		}
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		// List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}

	// closeDataRepayment
	@PostMapping("/closeDataRepayment")
	public String closeDataRepayment(@ModelAttribute("rd") Loan loan, Model model) {
		//System.err.println("id = " + loan.getId());
		Optional<Loan> loanData = loanRepo.findById(loan.getId());
		if (loanData.isPresent()) {
			loanData.get().setModeRegOrIrr("close");
			loanRepo.save(loanData.get());
			//loanRepo.save(loan);
		}
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		model.addAttribute("status", "success");
		return "Loan_Section/LoanPreSettlementf159";
	}

	@GetMapping("/irregularEMIPaymentEntryf159")
	public String irregularEMIPaymentEntryf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}

	@GetMapping("/regularLoanStatementf159")
	public String regularLoanStatementf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/RegularLoanStatementf159";
	}

	@PostMapping("/getByLoanIdRegularEmiRepayment")
	@ResponseBody
	public Loan getByLoanIdRegularEmiRepayment(@RequestBody GenericGetById id) {
		Loan loanPlanMaster = loanRepo.searchRegularData();
		// Optional<LoanMaster> loanMaster =
		// loanMasterRepo.findById(Integer.parseInt(loanPlanMaster.get().getLoanPlanName()));
		// loanPlanMaster.get().setLoanPlanNameView(loanMaster.get().getLoanName());
		return loanPlanMaster;
	}

	@PostMapping("/getByLoanIdIrregularEmiRepayment")
	@ResponseBody
	public Loan getByLoanIdIrregularEmiRepayment(@RequestBody GenericGetById id) {
		Loan loanPlanMaster = loanRepo.searchIrRegularData();
		// Optional<LoanMaster> loanMaster =
		// loanMasterRepo.findById(Integer.parseInt(loanPlanMaster.get().getLoanPlanName()));
		// loanPlanMaster.get().setLoanPlanNameView(loanMaster.get().getLoanName());
		return loanPlanMaster;
	}
	
	@GetMapping("/irregularLoanStatementf159")
	public String irregularLoanStatementf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/IrregularLoanStatementf159";
	}

	@GetMapping("/regularLoanDocumentPrint")
	public String regularLoanDocumentPrint(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/RegularLoanDocumentPrint";
	}

	@GetMapping("/loanPreSettlementf159")
	public String loanPreSettlementf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanPreSettlementf159";
	}

	@GetMapping("/closedLoanReportf159")
	public String closedLoanReportf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/ClosedLoanReportf159";
	}

	@GetMapping("/loanNocf159")
	public String loanNocf159(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanNocf159";
	}

	@PostMapping("/saveLoanApplication")
	public String saveLoanApplication(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		// System.err.println(loanPlanMaster);
		// loanPlanMasterRepo.save(loanPlanMaster);
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			// loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMaster);
		}
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMasterList = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMasterList);
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		model.addAttribute("status", "success");
		return "Loan_Section/LoanApplicationf780";
	}

	@PostMapping("/saveDataIregularEMIRepayment")
	public String saveDataIregularEMIRepayment(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			// loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}

	@PostMapping("/saveirregularEMIPaymentEntryf159")
	public String saveirregularEMIPaymentEntryf159(@ModelAttribute("user") Loan loan, Model model) {
		//System.err.println("id = " + loan.getId());
		Optional<Loan> loanData = loanRepo.findById(loan.getId());
		if (loanData.isPresent()) {
			loanData.get().setModeRegOrIrr("irregular");
			//loanRepo.save(loanData.get());
			loanRepo.save(loan);
		}
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		model.addAttribute("status", "success");
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}

	@PostMapping("/closeLoan")
	public String closeLoan(@ModelAttribute("closeLoan") LoanPlanMaster loanPlanMaster, Model model) {
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanPreSettlementf159";
	}

	@PostMapping("/fetchRegularEMIRepayment")
	@ResponseBody
	public Response fetchRegularEMIRepayment(@RequestBody Loan loan) {
		Response response = new Response<>();
		response.setStatus("Not Success");
		response.setMessage("Data Not Saved..!!");

		Optional<LoanWithLoanMasterDTO> optionalLoan = loanRepo.findLoanWithLoanMasterById(loan.getId());

		if (optionalLoan != null) {
			response.setStatus("Success");
			response.setMessage("Data Found !!!");
			response.setData(optionalLoan);
		}
		return response;
	}
	
	@PostMapping("/searchNormalLoanDocument")
	@ResponseBody
	public Loan searchRegularEMIStatementInTable(@RequestBody Loan loan) {
	    Loan result = loanRepo.findByid(loan.getId());
	    return result;
	}
	
	@PostMapping("/searchLoanDataInTable")
	@ResponseBody
	public List<Loan> getSearchLoanDataInTable(@RequestBody Loan loan) {
	    List<Loan> searchResults = new ArrayList<>();

	    if (loan.getBranchname() != null) {
	        List<Loan> branchname = loanRepo.findBybranchname(loan.getBranchname());
	        searchResults.addAll(branchname);
	    }

	    if (loan.getfDate() != null && loan.gettDate() != null) {
	        List<Loan> loanDate = loanRepo.findByloanDateBetween(loan.getfDate(), loan.gettDate());
	        searchResults.addAll(loanDate);
	    }

	    if (loan.getMemberRelativesName() != null) {
	        List<Loan> memberRelativesName = loanRepo.findBymemberRelativesName(loan.getMemberRelativesName());
	        searchResults.addAll(memberRelativesName);
	    }

	    if (loan.getId() != 0) {
	        Loan id = loanRepo.findByid(loan.getId());
	        searchResults.add(id);
	    }

	    if (loan.getSearchMemberCode() != null) {
	        List<Loan> searchMemberCode = loanRepo.findBysearchMemberCode(loan.getSearchMemberCode());
	        searchResults.addAll(searchMemberCode);
	    }

	    if (loan.getLoanPurpose() != null) {
	        List<Loan> loanPurpose = loanRepo.findByloanPurpose(loan.getLoanPurpose());
	        searchResults.addAll(loanPurpose);
	    }

	    if (loan.getAdvisorCode() != null) {
	        List<Loan> advisorCode = loanRepo.findByadvisorCode(loan.getAdvisorCode());
	        searchResults.addAll(advisorCode);
	    }

	    return searchResults;
	} 
	
}
