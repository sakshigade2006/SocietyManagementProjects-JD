package com.society.application.controler;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import com.society.application.model.BankMaster;
import com.society.application.model.BranchMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.GenericGetById;
import com.society.application.model.Member;
import com.society.application.model.SalaryMaster;
import com.society.application.model.SavingAccount;
import com.society.application.model.SavingsAccountApplication;
import com.society.application.model.SavingsDepositWith;
import com.society.application.model.UserMaster;
import com.society.application.repository.BankMasterRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.SalaryMasterRepo;
import com.society.application.repository.SavingAccountRepo;
import com.society.application.repository.SavingsAccountApplicationRepo;
import com.society.application.repository.SavingsDepositWithRepo;
import com.society.application.repository.SavingsDepositWithdrawalRepo;

import java.util.Optional;

@Controller
public class SavingAccountController {

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	SavingAccountRepo savingAccountRepo;

	@Autowired
	SavingsAccountApplicationRepo savingsAccountApplicationRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;
	
	@Autowired
	ClientMasterRepo clientMasterRepo;
	
	@Autowired
	SavingsDepositWithdrawalRepo savingsDepositWithdrawalRepo;
	
	@Autowired
	SavingsDepositWithRepo savingsdepositwithrepo;
	
	@Autowired
	SalaryMasterRepo salaryMasterRepo;

	@GetMapping("/addSaving")
	public String AddSaving(Model model) {
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "savingsAccount/AddSaving";
	}

	@GetMapping("/savingIntraTransfer")
	public String SavingIntraTransfer(Model model) {
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "savingsAccount/SavingIntraTransfer";
	}

	@GetMapping("/savingsPlanMaster")
	public String SavingsPlanMaster() {
		return "savingsAccount/SavingsPlanMaster";
	}

	@GetMapping("/savingsStatement")
	public String savingsStatement(Model model) {
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		return "savingsAccount/SavingsStatement";
	}

	@GetMapping("/savingsTransactionEntry")
	public String SavingsTransactionEntry(Model model) {
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "savingsAccount/SavingsTransactionEntry";
	}

	@GetMapping("/sBInterestGenerate")
	public String SBInterestGenerate() {
		return "savingsAccount/SBInterestGenerate";
	}

	@GetMapping("/sBPassbookPrint")
	public String SBPassbookPrint(Model model) {
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		return "savingsAccount/SBPassbookPrint";
	}

	@GetMapping("/searchSavingsAccount")
	public String SearchSavingsAccount() {
		return "savingsAccount/SearchSavingsAccount";
	}

	@GetMapping("/serviceChargesDeduction")
	public String ServiceChargesDeduction() {
		return "savingsAccount/ServiceChargesDeduction";
	}

	@GetMapping("/sMSChargesDeduction")
	public String SMSChargesDeduction() {
		return "savingsAccount/SMSChargesDeduction";
	}

	@GetMapping("/accountCloser")
	public String AccountCloser(Model model) {
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "savingsAccount/AccountCloser";
	}

	@PostMapping("/saveSavingsAccount")
	public String saveSavingsAccount(@ModelAttribute("saveSavingsAccount") SavingAccount savingAccount, Model model, HttpSession session) {
		SavingAccount savingAccountObj = new SavingAccount();
		String createdBy= (session.getAttribute("ID").toString());
		savingAccount.setCreatedBy(createdBy);
		model.addAttribute("status", "ERROR");
		if(savingAccountObj!=null) {
			model.addAttribute("status", "SUCCESS");
			savingAccountRepo.save(savingAccount);
		}
		return "savingsAccount/SavingsPlanMaster";
	}

	@GetMapping("/getAllSavingsAccount")
	@ResponseBody
	public List<SavingAccount> getAllSavingsAccount(Model model, HttpSession session) {
		List<SavingAccount> getAllSavingAccount = savingAccountRepo.findAll();
		model.addAttribute("status", "ERROR");
		if (getAllSavingAccount != null) {
			model.addAttribute("savingAccount", getAllSavingAccount);
			model.addAttribute("status", "SUCCESS");
		}
		return getAllSavingAccount;
	}

	@PostMapping("/saveSavingsAccountApplciation")
	public String saveSavingsAccountApplciation(@ModelAttribute("saveSavingsAccountApplciation") SavingsAccountApplication savingsAccountApplication, Model model, HttpSession session) {
		SavingsAccountApplication savingAccountObj = new SavingsAccountApplication();
		String createdBy=session.getAttribute("ID").toString();
		savingsAccountApplication.setCreatedBy(createdBy);
		model.addAttribute("status", "ERROR");
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		if(savingAccountObj!=null) {
			model.addAttribute("status", "SUCCESS");
			savingsAccountApplicationRepo.save(savingsAccountApplication);
		}
		return "savingsAccount/AddSaving";
	}

	@PostMapping("/updateSavingsAccountApplciation") // think of id for update
	public String updateSavingsAccountApplciation(
			@ModelAttribute("saveSavingsAccountApplciation") SavingsAccountApplication savingsAccountApplication,
			Model model, HttpSession session) {
		// SavingsAccountApplication savingAccountObj =
		// savingsAccountApplicationRepo.save(savingsAccountApplication);
		model.addAttribute("status", "ERROR");
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		// if(savingAccountObj!=null) {
		model.addAttribute("status", "SUCCESS");
		// }
		return "savingsAccount/SavingsTransactionEntry";
	}

	// updateIntraAccountTransfer
	@PostMapping("/updateIntraAccountTransfer") // think of id for update
	public String updateIntraAccountTransfer(
			@ModelAttribute("updateIntraAccountTransfer") SavingsAccountApplication savingsAccountApplication,
			Model model, HttpSession session) {
		// SavingsAccountApplication savingAccountObj =
		// savingsAccountApplicationRepo.save(savingsAccountApplication);
		model.addAttribute("status", "ERROR");
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		// if(savingAccountObj!=null) {
		model.addAttribute("status", "SUCCESS");
		// }
		return "savingsAccount/SavingIntraTransfer";
	}

	// accountCloser
	@PostMapping("/accountCloser") // think of id for update
	public String accountCloser(@ModelAttribute("accountCloser") SavingsAccountApplication savingsAccountApplication,
			Model model, HttpSession session) {
		//SavingsAccountApplication savingAccountObj =
		//savingsAccountApplicationRepo.save(savingsAccountApplication);
		model.addAttribute("status", "ERROR");
		//List<Member> memberList = memberRepo.findAll();
		List<ClientMaster> memberList = clientMasterRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		// if(savingAccountObj!=null) {
		model.addAttribute("status", "SUCCESS");
		// }
		List<BankMaster> bankMasterList = bankMasterRepo.findAll();
		model.addAttribute("bankMaster", bankMasterList);
		return "savingsAccount/AccountCloser";
	}
	
	@GetMapping("/savingalldata")
	@ResponseBody
	List<SavingAccount>showalldatasaving(){
		return savingAccountRepo.findAll();
	}

	// 8.Search Saving Account
	@GetMapping("/getAllBranchIndropdownSavingAccount")
	@ResponseBody
	public List<BranchMaster> getAllBranchIndropdownSavingAccount() {
		return branchMasterRepo.findAll();
	}

	@PostMapping("/getAllDataInTableSavingAccount")
	@ResponseBody
	public List<SavingsDepositWith> getAllDataInTableSavingAccount(@RequestBody SavingsDepositWith savingsDepositWith) {
		List<SavingsDepositWith> branch = savingsDepositWithdrawalRepo
				.findBybranchName(savingsDepositWith.getBranchName());
		List<SavingsDepositWith> date = savingsDepositWithdrawalRepo.findBytxnDateBetween(savingsDepositWith.getfDate(),
				savingsDepositWith.gettDate());
		List<SavingsDepositWith> accHolderName = savingsDepositWithdrawalRepo
				.findByaccHolderName(savingsDepositWith.getAccHolderName());
		List<SavingsDepositWith> accountNo = savingsDepositWithdrawalRepo
				.findByaccountNo(savingsDepositWith.getAccountNo());
		List<SavingsDepositWith> memberCode = savingsDepositWithdrawalRepo
				.findBymemberCode(savingsDepositWith.getMemberCode());
		List<SavingsDepositWith> advisorCode = savingsDepositWithdrawalRepo
				.findByadvisorCode(savingsDepositWith.getAdvisorCode());
		List<SavingsDepositWith> schemeName = savingsDepositWithdrawalRepo
				.findByschemeName(savingsDepositWith.getSchemeName());
		if (!branch.isEmpty()) {
			return branch;
		} else if (!date.isEmpty()) {
			return date;
		} else if (!accHolderName.isEmpty()) {
			return accHolderName;
		} else if (!accountNo.isEmpty()) {
			return accountNo;
		} else if (!memberCode.isEmpty()) {
			return memberCode;
		} else if (!advisorCode.isEmpty()) {
			return advisorCode;
		}
		return schemeName;
	}
	
	@PostMapping("/savingsStatementSearch")
	@ResponseBody
	public List<SavingsDepositWith> savingsStatementSearch(@RequestBody SavingsDepositWith saving){
		List<SavingsDepositWith> list = savingsdepositwithrepo.findByaccountNo(saving.getAccountNo());
		List<SavingsDepositWith> list1 = savingsdepositwithrepo.findBytxnDateBetween(saving.getfDate(), saving.gettDate());
		if(!list.isEmpty()) { 
			return list; 
		}else {
			return list1;
		}
	}
	
	// 5.Savings Passbook
	@GetMapping("getAllAccountNoInDropdown")
	@ResponseBody
	public List<BankMaster> getAllAccountNoInDropdown() {
		return bankMasterRepo.findAll();
	}

	// 5.Savings Passbook
	@PostMapping("/getTableDataSavingsPassbook")
	@ResponseBody
	public List<BankMaster> getTableDataSavingsPassbook(@RequestBody BankMaster bankMaster) {
		List<BankMaster> accNo = bankMasterRepo.findByaccountNo(bankMaster.getAccountNo());
		return accNo;
	}
	
	// 9.SMS Charges Deduction
	// fetch data by date
	@PostMapping("/fetchDataByDateSMSCharges")
	@ResponseBody
	public List<SalaryMaster> fetchDataByDateSMSCharges(@RequestBody SalaryMaster salaryMaster) {
		List<SalaryMaster> payDate = salaryMasterRepo.findBypayDate(salaryMaster.getPayDate());
		return payDate;
	}
	
	// 10. Service Charges Deduction
	@PostMapping("/getTableDataServiceChargesDeduction")
	@ResponseBody
	public List<SalaryMaster> getTableDataServiceChargesDeduction(@RequestBody SalaryMaster salaryMaster) {
		List<SalaryMaster> payDate = salaryMasterRepo.findBypayDate(salaryMaster.getPayDate());
		return payDate;
	}
	
	@PostMapping("/searchbyidforsavingacxx")
	@ResponseBody
	public SavingsAccountApplication getSavingDeailsById(@RequestBody GenericGetById id) {
		Optional<SavingsAccountApplication> savingid = savingsAccountApplicationRepo
				.findById(Integer.parseInt(id.getId()));
		return savingid.get();
	}

	// Saving Transaction Entry
	@PostMapping("/updateBySelectidForSavingtransc")
	@ResponseBody
	public ResponseEntity<String> updateBysavingtransictionid(@RequestParam(value = "id") Integer id,
			@RequestParam(name = "transactionFor", required = false) String transactionFor,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "transactionType", required = false) String transactionType,
			@RequestParam(name = "txtAmount", required = false) String txtAmount,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "txtTDate", required = false) String txtTDate,
			@RequestParam(name = "cspName", required = false) String cspName,
			@RequestParam(name = "accountNo", required = false) String accountNo,HttpSession session) {
		try {
			// Optional<SavingsAccountApplication> add =
			// savingsAccountApplicationRepo.findById(id);
			Optional<SavingsAccountApplication> optionalApplication = savingsAccountApplicationRepo.findById(id);
			List<SavingsAccountApplication> add = optionalApplication.map(Collections::singletonList)
					.orElse(Collections.emptyList());

			add.forEach(s -> {
				if (!(txtAmount == null) && !(paymode == null)) {
					try {
						s.setTxtAmount(txtAmount);
						s.setPaymode(paymode);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				String createdBy=session.getAttribute("ID").toString();
				s.setCreatedBy(createdBy);
				s.setTransactionFor(transactionFor);
				s.setTransactionType(transactionType);
				s.setRemarks(remarks);
				s.setTxtTDate(txtTDate);
				s.setCspName(cspName);
				s.setAccountNo(accountNo);
				savingsAccountApplicationRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data Updated Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping("/savingfetchbranchacc")
	@ResponseBody
	List<SavingsAccountApplication>savingallmethod(){
		return savingsAccountApplicationRepo.findAll();
	}
	
	// 7.Account Closer
	// getData on Fields
	@PostMapping("/getDataOnFiledsAccountCloser")
	@ResponseBody
	public List<SavingsDepositWith> getDataOnFiledsAccountCloser(@RequestBody SavingsDepositWith savingsDepositWith) {
		List<SavingsDepositWith> accNo = savingsDepositWithdrawalRepo
				.findByaccountNo(savingsDepositWith.getAccountNo());
		return accNo;
	}
	
	// 7.Account closer
	@GetMapping("/getAllBranchIndropdownAccountCloser")
	@ResponseBody
	public List<BranchMaster> getAllBranchIndropdownAccountCloser() {
		return branchMasterRepo.findAll();
	}

}
