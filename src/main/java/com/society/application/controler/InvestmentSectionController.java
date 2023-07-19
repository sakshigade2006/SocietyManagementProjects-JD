package com.society.application.controler;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AddInvestment;
import com.society.application.model.BranchMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.DailyDeposite;
import com.society.application.model.Employee;
import com.society.application.model.FixedDeposit;
import com.society.application.model.GenericGetById;
import com.society.application.model.MISDeposit;
import com.society.application.model.Member;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.RecurringDepositRepo;
import com.society.application.service.FileStorageService;

import org.apache.commons.lang3.StringUtils;

@Controller
public class InvestmentSectionController {

	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	private FileStorageService fileStorageService;

	@Autowired
	DailyDepositeRepo dailyDepositeRepo;

	@Autowired
	RecurringDepositRepo recurringDepositRepo;

	@Autowired
	FixedDepositRepo fixedDepositRepo;

	@Autowired
	MISDepositRepo mISDepositRepo;

	@Autowired
	ClientMasterRepo clientMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	/* INVESTMENT SECTION - NEW INVESTMENT */

	@GetMapping("/addInvestment")
	public String addInvestment() {
		return "investmentSection/AddInvestment";
	}

	@PostMapping("/retriveDataFromSelectMember1")
	@ResponseBody
	public List<AddInvestment> retriveDataFromSelectMember1(@RequestBody AddInvestment addIN) {
		List<AddInvestment> list = addInvestmentRepo.findBysearchMemberCode(addIN.getSearchMemberCode());
		return list;
	}

	@PostMapping("/updateAddInvestment")
	@ResponseBody
	public ResponseEntity<String> updateAddInvestment(
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file23,
			@RequestParam("searchMemberCode") String searchMemberCode, @RequestParam("policyDate") String policyDate,
			@RequestParam("memberName") String memberName, @RequestParam("dob") String dob,
			@RequestParam("age") String age, @RequestParam("relativeName") String relativeName,
			@RequestParam("phoneno") String phoneno, @RequestParam("nomineeName") String nomineeName,
			@RequestParam("nomineeAge") String nomineeAge, @RequestParam("nomineeRelation") String nomineeRelation,
			@RequestParam("address") String address, @RequestParam("district") String district,
			@RequestParam("state") String state, @RequestParam("pin") String pin,
			@RequestParam("cSPName") String cSPName, @RequestParam("modeOfOp") String modeOfOp,
			@RequestParam("jointCode") String jointCode, @RequestParam("jointName") String jointName,
			@RequestParam("mDate") String mDate, @RequestParam("schemeType") String schemeType,
			@RequestParam("schemeName") String schemeName, @RequestParam("term") String term,
			@RequestParam("mode") String mode, @RequestParam("misMode") String misode,
			@RequestParam("policyAmount") String policyAmount, @RequestParam("totalDeposit") String totalDeposit,
			@RequestParam("maturityAmount") String maturityAmount, @RequestParam("mISInterest") String mISInterest,
			@RequestParam("paymode") String paymode, @RequestParam("remarks") String remarks,
			@RequestParam("advisorCode") String advisorCode, @RequestParam("advisorName") String advisorName,
			@RequestParam("chkisSms") String chkisSms, AddInvestment addin) {
		try {
			addin = new AddInvestment();

			byte[] photo = file1.getBytes();
			byte[] signature = file23.getBytes();

			addin.setSearchMemberCode(searchMemberCode);
			addin.setPolicyDate(policyDate);
			addin.setMemberName(memberName);
			addin.setDob(dob);
			addin.setAge(age);
			addin.setRelativeName(relativeName);
			addin.setPhoneno(phoneno);
			addin.setNomineeName(nomineeName);
			addin.setNomineeAge(nomineeAge);
			addin.setNomineeRelation(nomineeRelation);
			addin.setAddress(address);
			addin.setDistrict(district);
			addin.setState(state);
			addin.setPin(pin);
			addin.setCspname(cSPName);
			addin.setModeOfOp(modeOfOp);
			addin.setJointCode(jointCode);
			addin.setJointName(jointName);
			addin.setmDate(mDate);
			addin.setSchemeType(schemeType);
			addin.setSchemeName(schemeName);
			addin.setTerm(term);
			addin.setMode(paymode);
			addin.setPolicyAmount(policyAmount);
			addin.setTotalDeposit(totalDeposit);
			addin.setMaturityAmount(maturityAmount);
			addin.setmISInterest(mISInterest);
			addin.setPaymode(paymode);
			addin.setRemarks(remarks);
			addin.setAdvisorCode(advisorCode);
			addin.setAdvisorName(advisorName);
			addin.setChkisSms(chkisSms);
			addin.setFlag("1");
			addin.setPhoto(photo);
			addin.setSignature(signature);
			addin.setMisMode(misode);

			addInvestmentRepo.save(addin);
			return new ResponseEntity<>("Data Saved Successfully", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e);
			return new ResponseEntity<>("Data Not Saved Successfully", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	/* INVESTMENT SECTION - PLAN MASTER */

	@PostMapping("/submitDailyDeposite")
	public String submitDailyDeposite(@ModelAttribute("dd") DailyDeposite dailyDeposite, Model model) {
		dailyDepositeRepo.save(dailyDeposite);
		return "investmentSection/PlanMaster";
	}

	@GetMapping("/fetchbranchinv")
	@ResponseBody
	public List<BranchMaster> fetchbranchinv() {
		return branchMasterRepo.findAll();
	}

	@PostMapping("/submitRecurringDeposit")
	public String submitRecurringDeposit(@ModelAttribute("rd") RecurringDeposit recurringDeposit, Model model) {
		recurringDepositRepo.save(recurringDeposit);
		return "investmentSection/PlanMaster";
	}

	@PostMapping("/submitFixedDeposit")
	public String submitFixedDeposit(@ModelAttribute("fd") FixedDeposit fixedDeposit, Model model) {
		fixedDepositRepo.save(fixedDeposit);
		return "investmentSection/PlanMaster";
	}

	@PostMapping("/submitMISDeposit")
	public String submitMISDeposit(@ModelAttribute("mis") MISDeposit mISDeposit, Model model) {
		mISDepositRepo.save(mISDeposit);
		return "investmentSection/PlanMaster";
	}

	@GetMapping("/planMaster")
	public String planMaster(Model model, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "0") int page2, @RequestParam(defaultValue = "0") int page3,
			@RequestParam(defaultValue = "0") int page4) {

		Pageable pageable = PageRequest.of(page, 5);
		Pageable pageable1 = PageRequest.of(page2, 5);
		Pageable pageable2 = PageRequest.of(page3, 5);
		Pageable pageable3 = PageRequest.of(page4, 5);

		Page<DailyDeposite> dailyDeposiste = dailyDepositeRepo.findAll(pageable);
		Page<RecurringDeposit> recurringDeposist = recurringDepositRepo.findAll(pageable1);
		Page<FixedDeposit> fixedDeposist = fixedDepositRepo.findAll(pageable2);
		Page<MISDeposit> misDeposist = mISDepositRepo.findAll(pageable3);

		model.addAttribute("recurringDeposist", recurringDeposist);
		model.addAttribute("dailyDeposiste", dailyDeposiste);
		model.addAttribute("fixedDeposist", fixedDeposist);
		model.addAttribute("misDeposist", misDeposist);

		model.addAttribute("currentPage", page);
		model.addAttribute("currentPage2", page2);
		model.addAttribute("currentPage3", page3);
		model.addAttribute("currentPage4", page4);

		return "investmentSection/PlanMaster";
	}

	@PostMapping("/retriveDataFromSelectMember")
	@ResponseBody
	public List<AddInvestment> retriveDataFromSelectMember(@RequestBody AddInvestment addIN) {
		List<AddInvestment> list = addInvestmentRepo.findBysearchMemberCode(addIN.getSearchMemberCode());
		return list;
	}

	/* INVESTMENT SECTION - FLEXI RENEWAL PAYMENT */

	@GetMapping("/flexirenewal9828")
	public String flexirenewal9828() {
		return "investmentSection/Flexirenewal9828";
	}

	@GetMapping("/getPolicyNumberById")
	@ResponseBody
	public List<AddInvestment> getPolicyNumberById() {
		List<AddInvestment> addInv = addInvestmentRepo.findAll();
		return addInv;
	}

	@PostMapping("/searchByPolicyNo")
	@ResponseBody
	public List<AddInvestment> getByAddInvesmentCode(@RequestBody AddInvestment model) {
	    List<AddInvestment> list = addInvestmentRepo.findAllByid(model.getId());
	    
	    list.forEach(s -> {
	        // Check if the photo and signature are not null
	        if (s.getPhoto() != null && s.getSignature() != null) {
	            // Convert the photo and signature to base64 encoded strings
	            String encodedPhoto = Base64.getEncoder().encodeToString(s.getPhoto());
	            String encodedSignature = Base64.getEncoder().encodeToString(s.getSignature());
	            s.setFrontEndPhoto(encodedPhoto);
	            s.setFrontEndSignature(encodedSignature);
	        }
	    });
	    
	    return list;
	}

	@PostMapping("/updateBySelectPolicyNo")
	@ResponseBody
	public ResponseEntity<String> updateBySelectPolicyNo(
			//@RequestParam(value = "searchbyPolicyNo") Integer id,
			@RequestParam(name = "filetag", required = false) MultipartFile file1,
			@RequestParam(name = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam(name = "tDate", required = false) String tDate, 
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "transactionFor", required = false) String transactionFor, 
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "transactionType", required = false) String transactionType, 
			@RequestParam(name = "amount", required = false) String amount,
			@RequestParam(name = "paymode", required = false) String paymode, 
			@RequestParam(name = "empCode", required = false) String empCode,
			@RequestParam(name = "searchMemberCode", required = false) String searchMemberCode, 
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "phoneno", required = false) String phoneno, 
			@RequestParam(name = "planCode", required = false) String planCode,
			@RequestParam(name = "balance", required = false) String balance,
			@RequestParam(name = "id123", required = false) Integer id) {
		try {
			List<AddInvestment> add = addInvestmentRepo.findByid(id);
			add.forEach(s->{
				if(!(file1==null) && !(file2==null)) {
					try {
						byte[] photo = file1.getBytes();
						byte[] signature = file2.getBytes();
						s.setPhoto(photo);
						s.setSignature(signature);
					}catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				s.settDate(tDate);
				s.setBranchName(branchName);
				s.setTransactionFor(transactionFor);
				s.setRemarks(remarks);
				s.setTransactionType(transactionType);
				s.setAmount(amount);
				s.setPaymode(paymode);
				addInvestmentRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		}catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data Updated Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	/* INVESTMENT SECTION - INTEREST PAYABLE */

	@GetMapping("/investmentInterestPayable")
	public String InvestmentInterestPayable() {
		return "investmentSection/InvestmentInterestPayable";
	}

	@GetMapping("/fetchDataByAddInvestment")
	@ResponseBody
	public List<AddInvestment> fetchAddInvestment(HttpServletRequest request) {
	    String ids = request.getParameter("id");
	    int id = Integer.parseInt(ids);
	    List<AddInvestment> data = addInvestmentRepo.findByid(id);
	    return data;
	}

	@GetMapping("/clientData")
	@ResponseBody
	public List<ClientMaster> ClientDataFetch(HttpServletRequest request) {
		String ids = request.getParameter("id");
		int i = Integer.parseInt(ids);
		List<ClientMaster> fetch = clientMasterRepo.findByid(i);
		return fetch;
	}

	/* INVESTMENT SECTION - findallApi */

	@GetMapping("/getAllPolicyNumber")
	@ResponseBody
	public List<AddInvestment> getAllPolicyNumber() {
		return addInvestmentRepo.findAll();
	}

	@GetMapping("/SelectBranch")
	@ResponseBody
	public List<BranchMaster> SelectBranch() {
		List<BranchMaster> data = branchMasterRepo.findAll();
		return data;
	}

	@GetMapping("/SelectClientCode")
	@ResponseBody
	public List<ClientMaster> SelectClientCode() {
		List<ClientMaster> data1 = clientMasterRepo.findAll();
		return data1;
	}

	@PostMapping("/fetchDataFromSelectMember")
	@ResponseBody
	public List<ClientMaster> fetchDataFromSelectMember(@RequestBody ClientMaster client) {
		List<ClientMaster> list = clientMasterRepo.findByid(client.getId());
		return list;
	}

	/* INVESTMENT SECTION - CERTIFICATE RE-ISSUE */

	@GetMapping("/certificateIssue46b3")
	public String CertificateIssue46b3() {
		return "investmentSection/CertificateIssue46b3";
	}

	/* INVESTMENT SECTION - INTEREST DETAILS */

	@GetMapping("/investmentInterestDetails")
	public String InvestmentInterestDetails() {
		return "investmentSection/InvestmentInterestDetails";
	}

	/* INVESTMENT SECTION - CERTIFICATE ISSUE */

	@GetMapping("/certificateIssue")
	public String CertificateIssue() {
		return "investmentSection/CertificateIssue";
	}

	@GetMapping("/fetchDataByIssueCertificate")
	@ResponseBody
	public List<AddInvestment> fetchIssue(HttpServletRequest request) {
		String ids = request.getParameter("id1");
		int i = Integer.parseInt(ids);
		List<AddInvestment> data9 = addInvestmentRepo.findByid(i);
		return data9;
	}

	/* INVESTMENT SECTION - INVESTMENT RECEIPT */

	@GetMapping("/policyRenewalReceiptf0be")
	public String policyRenewalReceiptf0be() {
		return "investmentSection/PolicyRenewalReceiptf0be";
	}

	/* INVESTMENT SECTION - RECURRING RECEIPT */

	@GetMapping("/policyRenewalReceiptb376")
	public String PolicyRenewalReceiptb376() {
		return "investmentSection/PolicyRenewalReceiptb376";
	}

	/* INVESTMENT SECTION - INVESTMENT SEARCH */

	@GetMapping("/investmentSearch")
	public String InvestmentSearch() {
		return "investmentSection/InvestmentSearch";
	}

	// get BranchName in dropdown
	@GetMapping("/getBranchName")
	@ResponseBody
	public List<AddInvestment> getBranchName() {
		return addInvestmentRepo.findAll();
	}

	@PostMapping("/getDataByAllFieldsofInvestment")
	@ResponseBody
	public List<AddInvestment> getDataByAllFieldsofInvestment(@RequestBody AddInvestment addInv) {
		List<AddInvestment> data = addInvestmentRepo.findBybranchName(addInv.getBranchName());
		List<AddInvestment> data1 = addInvestmentRepo.findBymDateBetween(addInv.getfDate(), addInv.gettDate());
		List<AddInvestment> data2 = addInvestmentRepo.findByapplicantName(addInv.getApplicantName());
		List<AddInvestment> data3 = addInvestmentRepo.findBypolicyno(addInv.getPolicyno());
		List<AddInvestment> data4 = addInvestmentRepo.findBysearchMemberCode(addInv.getSearchMemberCode());
		List<AddInvestment> data5 = addInvestmentRepo.findByplanName(addInv.getPlanName());
		List<AddInvestment> data6 = addInvestmentRepo.findByadvisorCode(addInv.getAdvisorCode());

		if (!data.isEmpty()) {
			return data;
		} else if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		} else if (!data3.isEmpty()) {
			return data3;
		} else if (!data4.isEmpty()) {
			return data4;
		} else if (!data5.isEmpty()) {
			return data5;
		} else
			return data6;
	}

	/* INVESTMENT SECTION - DAILY RENEWAL PAYMENT */

	@GetMapping("/dailyRenewalPayment")
	public String dailyRenewalPayment() {
		return "investmentSection/DailyRenewalPayment";
	}

	// Update Code for PolicyNo Investment Section Daily Renewal
	@PostMapping("/updateDataByPolicyInvestment")
	@ResponseBody
	public ResponseEntity<String> updateDataByInvestment(
			@RequestParam(name = "filetag", required = false) MultipartFile filetag,
			@RequestParam(name = "secondfiletag", required = false) MultipartFile secondfiletag,
			@RequestParam("policyDate1") String policy_date, @RequestParam("mDate") String mDate,
			@RequestParam("memberCode") String memberCode, @RequestParam("applicantName") String applicantName,
			@RequestParam("mobileNo") String mobileNo, @RequestParam("PolicyAmount") String policyAmount,
			@RequestParam("schemeName") String schemeName, @RequestParam("schemeType") String schemeType,
			@RequestParam("mode") String mode, @RequestParam("maturityAmount") String maturityAmount,
			@RequestParam("totalDeposit") String totalDeposit, @RequestParam("MaturityAmountDue") String amtDue,
			@RequestParam("chkisSms") String chkisSms, @RequestParam("advisorCode") String advisorCode,
			@RequestParam("lastInstPaid") String lastInstPaid, @RequestParam("dueDate") String dueDate,
			@RequestParam("latefine") String latefine, @RequestParam("NoOfInstPaid") String noOfInstPaid,
			@RequestParam("Paymode") String paymode, @RequestParam("collectorCode") String collectorCode,
			@RequestParam("advisorName") String advisorName, @RequestParam("remarks") String remarks,
			@RequestParam(name = "renewalDate", required = false) String renewalDate,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "searchbyPolicyNo", required = false) Integer searchbyPolicyNo) {
		if (!filetag.isEmpty() && !secondfiletag.isEmpty()) {
			String fileName = fileStorageService.storeFile(filetag);
			String fileName2 = fileStorageService.storeFile(secondfiletag);

			int i = addInvestmentRepo.updateThroughIDRenewalDateBranch(fileName, fileName2, noOfInstPaid, paymode,
					collectorCode, remarks, renewalDate, branchName, searchbyPolicyNo);

		} else {
			int i = addInvestmentRepo.updateThroughIDRenewalDateBranch2(noOfInstPaid, paymode, collectorCode, remarks,
					renewalDate, branchName, searchbyPolicyNo);
		}
		return ResponseEntity.ok("Data Updated Successfully..!!");
	}

	// Retrieval code by policy no Investment Section Daily Renewal
	@PostMapping("/getByAddInvesmentCode")
	@ResponseBody
	public AddInvestment getByAddInvesmentCode(@RequestBody GenericGetById id) {
		Optional<AddInvestment> allInvestment = addInvestmentRepo.findById(Integer.parseInt(id.getId()));
		return allInvestment.get();
	}

	// Retrieval Code for RenewalDate Investment Section Daily Renewal
	@GetMapping("/getByRenewalDate")
	@ResponseBody
	public List<AddInvestment> getByRenewalDate(HttpServletRequest session) {
		String date = session.getParameter("SearchbyRenewalDate");
		List<AddInvestment> data = addInvestmentRepo.findByrenewalDate(date);
		return data;
	}

	// Retrieval Code for BranchName Investment Section Daily Renewal
	@GetMapping("getAllDataByBranchName")
	@ResponseBody
	public List<AddInvestment> getByBranchName1(HttpServletRequest request) {
		String branch = request.getParameter("SearchbybranchName");
		List<AddInvestment> branchName = addInvestmentRepo.findBybranchName(branch);
		return branchName;
	}

}
