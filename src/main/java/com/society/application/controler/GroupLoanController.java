package com.society.application.controler;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import com.society.application.model.Employee;
import com.society.application.model.GenericGetById;
import com.society.application.model.GroupMaster;
import com.society.application.model.GroupMasterApplication;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.Member;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.GroupMasterApplicationRepo;
import com.society.application.repository.GroupMasterRepo;
import com.society.application.repository.LoanMasterRepo;
import com.society.application.repository.LoanPlanRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.MemberRepo;

@Controller
public class GroupLoanController {

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	LoanMasterRepo loanMasterRepo;

	@Autowired
	GroupMasterRepo groupMasterRepo;

	@Autowired
	EmployeeRepo employeeRepo;

	@Autowired
	GroupMasterApplicationRepo groupMasterApplicationRepo;

	@Autowired
	LoanRepo loanRepo;

	@Autowired
	LoanPlanRepo loanPlanRepo;

	@GetMapping("/LoanPlan5c22")
	public String LoanPlan5c22(Model model) {
		return "group_loan/LoanPlan5c22";
	}

	@GetMapping("/LoanGroupMaster")
	public String LoanGroupMaster(Model model) {
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<Employee> employeeList = employeeRepo.findAll();
		model.addAttribute("employeeList", employeeList);

		return "group_loan/LoanGroupMaster";
	}

	@GetMapping("/GroupLoanApplication")
	public String GroupLoanApplication(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		return "group_loan/GroupLoanApplication";
	}

	@GetMapping("/GroupLoanApproval9c5a")
	public String GroupLoanApproval9c5a(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		return "group_loan/GroupLoanApproval9c5a";
	}

	@PostMapping("/closeLoanRegularEMIRepaymentGroup")
	public String closeLoanRegularEMIRepaymentGroup(@ModelAttribute("updateLoan") Loan loan, Model model) {
		Loan loan1 = loanRepo.findByid(loan.getId());
		loan1.setCloseLoan("close");
		loanRepo.save(loan1);
		model.addAttribute("status", "success");
		return "group_loan/LoanPreSettlement5c22";
	}

	@GetMapping("/GroupLoanApprovalf780")
	public String GroupLoanApprovalf780(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "group_loan/GroupLoanApprovalf780";
	}

	@GetMapping("/LoanRepayment5c22")
	public String LoanRepayment5c22(Model model) {
		return "group_loan/LoanRepayment5c22";
	}

	@GetMapping("/GlDailyRepaymentSheet")
	public String GlDailyRepaymentSheet(Model model) {
		return "group_loan/GlDailyRepaymentSheet";
	}

	@GetMapping("/DemandSheet")
	public String DemandSheet(Model model) {
		return "group_loan/DemandSheet";
	}

	@GetMapping("/RegularLoanStatement5c22")
	public String RegularLoanStatement5c22(Model model) {
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		return "group_loan/RegularLoanStatement5c22";
	}

	@GetMapping("/LoanPreSettlement5c22")
	public String LoanPreSettlement5c22(Model model) {
		return "group_loan/LoanPreSettlement5c22";
	}

	@GetMapping("/ClosedLoanReportf159")
	public String ClosedLoanReportf159(Model model) {
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		return "group_loan/ClosedLoanReportf159";
	}

	@GetMapping("/GroupLoanSearch")
	public String GroupLoanSearch(Model model) {
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		return "group_loan/GroupLoanSearch";
	}

	@GetMapping("/getAllGroupLoan")
	@ResponseBody
	public List<LoanMaster> getAllGroupLoan(Model model) {
		List<LoanMaster> allGroupLoan = loanMasterRepo.findAll();
		List<LoanMaster> filterGroupLoan = allGroupLoan.stream().filter(p -> p.getType().equals("Group"))
				.collect(Collectors.toList());
		// System.err.println(filterGroupLoan);
		return filterGroupLoan;
	}

	// getAllGroupMaster
	@GetMapping("/getAllGroupMaster")
	@ResponseBody
	public List<GroupMaster> getAllGroupMaster() {
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		return allGroupMaster;
	}

	@PostMapping("/saveGroupMaster")
	public String saveGroupMaster(@ModelAttribute("saveGroupMaster") GroupMaster groupMaster, Model model) {
		groupMaster.setCreatedBy("");
		groupMaster.setCreatedDate(new Date().toString());
		groupMaster.setUpdatedBy("");
		groupMaster.setUpdatedDate(new Date().toString());
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<Employee> employeeList = employeeRepo.findAll();
		model.addAttribute("employeeList", employeeList);
		GroupMaster savedsaveGroupMaster = groupMasterRepo.save(groupMaster);
		if (savedsaveGroupMaster != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "group_loan/LoanGroupMaster";
	}

	@PostMapping("/getGroupMasterById")
	@ResponseBody
	public List<GroupMaster> getGroupMasterById(@RequestBody GroupMaster id) {
		List<GroupMaster> groupMaster = groupMasterRepo.findByid(id.getId());
		return groupMaster;
	}

	@PostMapping("/getGroupMasterByBranch")
	@ResponseBody
	public List<GroupMaster> getGroupMasterByBranch(@RequestBody GroupMaster ob) {
		List<GroupMaster> groupMaster = groupMasterRepo.findBycsp(ob.getCsp());
		return groupMaster;
	}

	@PostMapping("/saveGroupMasterApplication")
	public String saveGroupMasterApplication(
			@ModelAttribute("saveGroupMasterApplication") GroupMasterApplication groupMasterApplication, Model model) {
		groupMasterApplication.setCreatedBy("");
		groupMasterApplication.setCreatedDate(new Date().toString());
		groupMasterApplication.setUpdatedBy("");
		groupMasterApplication.setUpdatedDate(new Date().toString());
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		GroupMasterApplication savedgroupMasterApplication = groupMasterApplicationRepo.save(groupMasterApplication);
		if (savedgroupMasterApplication != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "group_loan/GroupLoanApplication";
	}

	@PostMapping("/approveGroupMasterApplication")
	public String approveGroupMasterApplication(
			@ModelAttribute("saveGroupMasterApplication") GroupMasterApplication groupMasterApplication, Model model) {
		groupMasterApplication.setCreatedBy("");
		groupMasterApplication.setCreatedDate(new Date().toString());
		groupMasterApplication.setUpdatedBy("");
		groupMasterApplication.setUpdatedDate(new Date().toString());
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		model.addAttribute("allGroupMaster", allGroupMaster);
		// System.err.println(groupMasterApplication);
		GroupMasterApplication savedgroupMasterApplication = groupMasterApplicationRepo.save(groupMasterApplication);
		if (savedgroupMasterApplication != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "group_loan/GroupLoanApproval9c5a";
	}

	@PostMapping("/updateLoanRegularEMIRepaymentGroup")
	public ResponseEntity<String> updateLoanRegularEMIRepaymentGroup(@ModelAttribute("updateLoan") Loan loan,
			Model model, @RequestParam(name = "loanmasterID", required = false) Integer id,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "emiAmount1", required = false) String emiAmount1,
			@RequestParam(name = "loanAmount1", required = false) String loanAmount1,
			@RequestParam(name = "advisorCode", required = false) String advisorCode,
			@RequestParam(name = "advisorName", required = false) String advisorName) {
		try {
			List<LoanMaster> lm = loanMasterRepo.findByid(id);
			lm.forEach(s -> {
				s.setBranchName(branchName);
				s.setEmiAmount(emiAmount1);
				s.setLoanAmount(loanAmount1);
				s.setAdvisorCode(advisorCode);
				s.setAdvisorName(advisorName);
				loanMasterRepo.save(s);
			});
			return new ResponseEntity<>("Data Saved Sucessfully!!!!", HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>("Failed Data Saved Sucessfully!!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}

//		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
//		model.addAttribute("allGroupMaster", allGroupMaster);
//		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
//		model.addAttribute("loanPlanMaster", loanPlanMaster);
//		List<Member> memberList = memberRepo.findAll();
//		model.addAttribute("memberList", memberList);
//		List<BranchMaster> branchData = branchMasterRepo.findAll();
//		model.addAttribute("branchList", branchData);
//		model.addAttribute("status", "success");
//		return "group_loan/LoanRepayment5c22";
	}

	// Search groupSearch loan
	@GetMapping("/getAllGroupLoanBranch")
	@ResponseBody
	public List<BranchMaster> getAllGroupLoanBranch() {
		return branchMasterRepo.findAll();
	}

	@GetMapping("/getAllGroupLoanID")
	@ResponseBody
	public List<GroupMaster> getAllGroupLoanID() {
		return groupMasterRepo.findAll();
	}

	@GetMapping("/getAllGroupLoanplan")
	@ResponseBody
	public List<LoanPlanMaster> getAllGroupLoanplan() {
		return loanPlanRepo.findAll();
	}

	/*
	 * @PostMapping("/searchInTheGroupLoan")
	 * 
	 * @ResponseBody public List<GroupMaster> searchInTheGroupLoan(@RequestBody
	 * GroupMaster groupMaster){ List<GroupMaster> data1 =
	 * groupMasterRepo.findBybranchName(groupMaster.getBranchName());
	 * List<GroupMaster> data2 =
	 * groupMasterRepo.findByloanDateBetween(groupMaster.getfDate(),groupMaster.
	 * gettDate()); List<GroupMaster> data3 =
	 * groupMasterRepo.findBymemberName(groupMaster.getMemberName());
	 * List<GroupMaster> data4 = groupMasterRepo.findByid(groupMaster.getId());
	 * List<GroupMaster> data5 =
	 * groupMasterRepo.findBysearchMemberCode(groupMaster.getSearchMemberCode());
	 * List<GroupMaster> data6 =
	 * groupMasterRepo.findByloanPlanName(groupMaster.getLoanPlanName());
	 * List<GroupMaster> data7 =
	 * groupMasterRepo.findByadvisorCode(groupMaster.getAdvisorCode());
	 * 
	 * if (!data1.isEmpty()) { return data1; } else if (!data2.isEmpty()) { return
	 * data2; } else if (!data3.isEmpty()) { return data3; } else if
	 * (!data4.isEmpty()) { return data4; } else if (!data5.isEmpty()) { return
	 * data5; } else if (!data6.isEmpty()) { return data6; } else
	 * if(!data7.isEmpty()){ return data7; } else return null; }
	 */

	@PostMapping("/fetchEmiRepayment")
	@ResponseBody
	public Response fetchEmiRepayment(@RequestBody Loan loan) {
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

	@PostMapping("/ByloanDate")
	@ResponseBody
	public List<GroupMaster> getGroupMasterByloanDate(@RequestBody GroupMaster obj) {
		List<GroupMaster> list2 = groupMasterRepo.findByloanDateBetweenmmmmm(obj.getfDate(), obj.gettDate());
		return list2;
	}

	@PostMapping("/getGroupMasterBysearchMemberCode")
	@ResponseBody
	public List<GroupMaster> getGroupMasterBysearchMemberCode(@RequestBody GroupMaster obj) {
		List<GroupMaster> allGroupMasters = groupMasterRepo.findBysearchMemberCode(obj.getSearchMemberCode());
		return allGroupMasters;
	}

	@PostMapping("/getGroupMasterBymemberName")
	@ResponseBody
	public List<GroupMaster> getGroupMasterBymemberName(@RequestBody GroupMaster obj) {
		List<GroupMaster> allGroupMasters = groupMasterRepo.findBymemberName(obj.getMemberName());
		return allGroupMasters;
	}

	@PostMapping("/getGroupMasterByadvisorCode")
	@ResponseBody
	public List<GroupMaster> getGroupMasterByadvisorCode(@RequestBody GroupMaster obj) {
		List<GroupMaster> allGroupMasters = groupMasterRepo.findByadvisorCode(obj.getAdvisorCode());
		return allGroupMasters;
	}

	@PostMapping("/getGroupMasterByplaneName")
	@ResponseBody
	public List<GroupMaster> getGroupMasterByplaneName(@RequestBody GroupMaster obj) {
		List<GroupMaster> allGroupMasters = groupMasterRepo.findByplaneName(obj.getPlaneName());
		return allGroupMasters;
	}
	
	// Group Loan Search
	@GetMapping("/getAllLoanName")
	@ResponseBody
	public List<LoanMaster> getAllLoanName() {
		return loanMasterRepo.findAll();
	}
	
	// Group Loan Search
	// Search By Plan Name
	@PostMapping("/getGroupMasterByPlanName")
	@ResponseBody
	public List<GroupMaster> getGroupMasterByPlanName(@RequestBody GroupMaster obj) {
		List<GroupMaster> allGroupMasters = groupMasterRepo.findByplaneName(obj.getPlaneName());
		return allGroupMasters;
	}

}
