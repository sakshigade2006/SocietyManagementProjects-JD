package com.society.application.controler;

import java.io.Console;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;
import com.society.application.model.DailyDeposite;
import com.society.application.model.FixedDeposit;
import com.society.application.model.MISDeposit;
import com.society.application.model.MatApplicationStatus;
import com.society.application.model.MaturityPartPayment;
import com.society.application.model.MaturityPaymentReportModel;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.MatApplicationStatusRepo;
import com.society.application.repository.MaturityPartPaymentRepo;
import com.society.application.repository.MaturityPayemntRepo;
import com.society.application.repository.MaturityPaymentReportRepo;
import com.society.application.repository.RecurringDepositRepo;

@Controller
public class MaturitySectionController {
	@Autowired
	DailyDepositeRepo dailydepositerepo;

	@Autowired
	RecurringDepositRepo recurringdepositrepo;

	@Autowired
	FixedDepositRepo fixeddepositrepo;

	@Autowired
	MISDepositRepo misepositrepo;

	@Autowired
	MaturityPaymentReportRepo maturitypaymentreportrepo;

	@Autowired
	MaturityPayemntRepo maturityPaymeRepo;

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	private MatApplicationStatusRepo matApplicationStatusRepo;

	@Autowired
	MaturityPaymentReportRepo matrepo;

	@Autowired
	MaturityPartPaymentRepo maturityPartPaymentRepo;

	@Autowired
	AddInvestmentRepo addInvestmentRepo;
	
	@Autowired
	BranchMasterRepo branchMasterRepo;

	/* MATURITY MASTER */

	@GetMapping("/maturityMaster")
	public String getMaturityMaster() {
		return "maturitySection/MaturityMaster";
	}

	/* MATURITY MASTER - 1. Daily Deposit */
	@PostMapping("/maturityMaster1")
	public String postMaturityMaster1(@ModelAttribute("dailyDeposite") DailyDeposite dailyDeposite, HttpServletRequest request ,HttpSession session) {
		String createdBy =session.getAttribute("ID").toString();
		dailyDeposite.setCreatedBy(createdBy);
	    if (dailyDeposite.getDplancode() != null && dailyDeposite.getDinstfrom() != null && dailyDeposite.getDinstto() != null
	            && dailyDeposite.getDroi() != null && dailyDeposite.getDdeduction() != null) {
	        dailydepositerepo.save(dailyDeposite);
	    } else {
	       
	    }
	    session.setAttribute("createdBy", createdBy);
	    return "maturitySection/MaturityMaster";
	}

	/* MATURITY MASTER - 2. Recurring Deposit */
	@PostMapping("/maturityMaster2")
	public String getmaturityMaster2(@ModelAttribute("RecurringDeposite") RecurringDeposit recurringdep, HttpServletRequest request,HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		recurringdep.setCreatedBy(createdBy);
		if(recurringdep.getRplancode() != null && recurringdep.getRinstfrom() != null && recurringdep.getRinstto() != null
				&& recurringdep.getRroi() != null && recurringdep.getRdeduction() != null) {
			recurringdepositrepo.save(recurringdep);
		}else {
			
		}
		session.setAttribute("createdBy", createdBy);
		return "maturitySection/MaturityMaster";
	}

	/* MATURITY MASTER - 3. Fixed Deposit */
	@PostMapping("/maturityMaster3")
	public String getmaturityMaster3(@ModelAttribute("FixedDeposite") FixedDeposit fixeddep, HttpServletRequest request, HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		fixeddep.setCreatedBy(createdBy);
		if(fixeddep.getFplancode() != null && fixeddep.getFmonthfrom() != null && fixeddep.getFmonthto() != null
				&& fixeddep.getFroi() != null && fixeddep.getFdeduction() != null) {
			fixeddepositrepo.save(fixeddep);
		}else {
			
		}
		session.setAttribute("createdBy", createdBy);
		return "maturitySection/MaturityMaster";
	}

	/* MATURITY MASTER - 4. MIS Deposit */
	@PostMapping("/maturityMaster4")
	public String postMaturityMaster4(@ModelAttribute("MISDeposite") MISDeposit misdep, HttpServletRequest request ,HttpSession session) {
		String createdBy = session.getAttribute("ID").toString();
		misdep.setCreatedBy(createdBy);
	    if (misdep.getMisplancode() != null && misdep.getmISmonthfrom() != null && misdep.getmISmonthto() != null
	            && misdep.getmISROI() != null && misdep.getmISdeduction() != null) {
	        misepositrepo.save(misdep);
	        //System.out.println(misdep);
	        return "maturitySection/MaturityMaster"; 
	    } else {
	    	 System.out.println("error");
	    }
	    session.setAttribute("createdBy", createdBy);
	    return "maturitySection/MaturityMaster";
	}

	/* APPROVED STATUS */

	@GetMapping("/approvedStatus")
	public String getApprovedStatus() {
		return "maturitySection/ApprovedStatus";
	}

	@GetMapping("/approvedStatus1")
	@ResponseBody
	public List<MaturityPaymentReportModel> getgetApprovedStatus1(HttpServletRequest request) {
		try {
			String B_ranch = request.getParameter("BRANCH");
			String FormDate = request.getParameter("Fromdate");
			String ToDate = request.getParameter("Todate");

			List<MaturityPaymentReportModel> list1 = maturitypaymentreportrepo.findBypaybranch(B_ranch);
			List<MaturityPaymentReportModel> list2 = maturitypaymentreportrepo.findBypaydateBetween(FormDate, ToDate);

			if (!list1.isEmpty()) {
				return list1;
			} else {
				return list2;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	/* MATURITY APPLICATION */

	@GetMapping("/addMaturityApplication")
	public String addMaturityApplication(Model model) {
		return "maturitySection/MaturityApplication";
	}

	@GetMapping("/searchMaturityApplication")
	@ResponseBody
	public List<AddInvestment> searchMaturityApplication333( HttpServletRequest hp) {
			   String polno2 = hp.getParameter("ids");
			   Integer uidhd=Integer.parseInt(polno2);
			   List<AddInvestment> drohd=addInvestmentRepo.findByid(uidhd);
			   return drohd;
	}

	@PostMapping("/MaturityAplicationUpdate")
	@ResponseBody
	public ResponseEntity<String> updateMatApplication(
			@RequestParam(name = "applicationDate", required = false) String applicationDate,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "id", required = false) Integer id) {
		try {
			List<AddInvestment> list = addInvestmentRepo.findByid(id);
			list.forEach(s -> {
				if (applicationDate != null && remarks != null) {
					s.setApplicationDate(applicationDate);
					s.setRemarks(remarks);
					addInvestmentRepo.save(s);
				}
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
	}

	@GetMapping("/MaturityAplicationFindAll")
	@ResponseBody
	public List<AdvisorCollectorDetails> searchMaturityAplicationFindAll(HttpServletRequest hp) {
		List<AdvisorCollectorDetails> data = advisorCollectorDetailsRepo.findAll();

		return data;
	}
	
	@GetMapping("/polfordropdown")
	@ResponseBody
	public List<AddInvestment> forpoldropdown456(){
		 return addInvestmentRepo.findAll();
	}

	/* MATURITY PAYMENT */

	@GetMapping("/addMaturityPayment")
	public String addMaturityPayment(Model model) {
		return "maturitySection/MaturityPayment";
	}

	@GetMapping("/searchMaturityPayment")
	@ResponseBody
	public List<AddInvestment> searchMaturityPayment( HttpServletRequest hp) {
				   String PolicyNo = hp.getParameter("PolicyNo1");
				   int i =Integer.parseInt(PolicyNo);
				   List<AddInvestment> data1 = addInvestmentRepo.findByid(i);
				   return data1;
    }

	@PostMapping("/MaturityPaymentUpdate")
	@ResponseBody
	public ResponseEntity<String> updateMatPayment(
			@RequestParam(name = "paymentDate", required = false) String paymentDate,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "id", required = false) Integer id) {
		try {
			List<AddInvestment> list = addInvestmentRepo.findByid(id);
			list.forEach(s -> {
				if (paymentDate != null && remarks != null && branchName != null && paymode != null) {
					s.setPaymentDate(paymentDate);
					s.setBranchName(branchName);
					s.setPaymode(paymode);
					s.setRemarks(remarks);
					addInvestmentRepo.save(s);
				}
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
	}

	/* MAT. APPLICATION STATUS */

	@GetMapping("/MatApplicationStatus")
	public String getMatApplicationStatus() {
		return "maturitySection/MatApplicationStatus";
	}

	@GetMapping("/MatApplicationStatus1")
	@ResponseBody
	public List<MatApplicationStatus> getMatApplicationStatus1(@ModelAttribute MatApplicationStatus model,
			HttpServletRequest request) {
		String branch = request.getParameter("Branch");
		String fromdate = request.getParameter("Fromdate");
		String todate = request.getParameter("Todate");

		List<MatApplicationStatus> list1 = matApplicationStatusRepo.findByapplicationbranch(branch);
		List<MatApplicationStatus> list2 = matApplicationStatusRepo.findByapplicationdateBetween(fromdate, todate);

		if (!list1.isEmpty()) {
			return list1;
		} else
			return list2;
	}
	
	//get branch name 
	@GetMapping("/getBranchNameForMaturity")
	@ResponseBody
	public List<BranchMaster> getBranchNameForMaturity(){
		return branchMasterRepo.findAll();
	}

	/* MAT. PAYMENT STATUS */

	@GetMapping("/MaturityTrackingView")
	public String showMatpaymentststus(Model model) {
		return "maturitySection/MaturityTrackingPage";
	}

	@GetMapping("/maturityPaymentapi")
	@ResponseBody
	public List<MaturityPaymentReportModel> showmatdata(HttpServletRequest hp) {
		String branch = hp.getParameter("selectbranch");
		String fdate = hp.getParameter("fromdate");
		String tdate = hp.getParameter("todate");
		try {
			List<MaturityPaymentReportModel> matbybranch = matrepo.findBypaybranch(branch);
			List<MaturityPaymentReportModel> matdatesby = matrepo.findBypaydateBetween(fdate, tdate);
			if (!matbybranch.isEmpty()) {
				return matbybranch;
			} else
				return matdatesby;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/* MATURITY PAYMENT (PARTLY) */

	@GetMapping("/maturityPartPayment")
	public String maturityPartPayment() {
		return "maturitySection/MaturityPartPayment";
	}

	@GetMapping("/getmaturityPartPayment")
	@ResponseBody
	public List<AddInvestment>  getmaturityPartPayment(HttpServletRequest request){
		String policyno=request.getParameter("PolicyNo1");
		int i =  Integer.parseInt(policyno);
		List<AddInvestment> list=addInvestmentRepo.findByid(i);
		return list;
	}

	@PostMapping("/updatematurityPartPayment")
	@ResponseBody
	public ResponseEntity<String> updateMatPayment(@RequestParam(name = "amount", required = false) String amount,
			@RequestParam(name = "paymentDate", required = false) String paymentDate,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "id", required = false) Integer id) {
		try {
			List<AddInvestment> list = addInvestmentRepo.findByid(id);
			list.forEach(s -> {
				if (amount != null && paymentDate != null && remarks != null && branchName != null && paymode != null) {
					s.setAddress(amount);
					s.setPaymentDate(paymentDate);
					s.setBranchName(branchName);
					s.setPaymode(paymode);
					s.setRemarks(remarks);
					addInvestmentRepo.save(s);
				}
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
	}

	/* MATURITY RECEIPT PRINT */

	@GetMapping("/MaturityReceiptPrint")
	public String maturityreceiptReprint() {
		return "maturitySection/MaturityReceiptPrint";
	}

	@GetMapping("/getmaturityreceiptprint")
	@ResponseBody
	public List<AddInvestment> getmaturityreceiptReprint(HttpServletRequest request){
		String policyno=request.getParameter("PolicyNo1");
		Integer id=Integer.parseInt(policyno);
		List<AddInvestment> list=addInvestmentRepo.findByid(id);
		return list;
	}

	/* MAT. PAYMENT STATUS (PARTLY) */

	@GetMapping("/matPaymentStatusPartly")
	public String matPaymentStatusPartly() {
		return "maturitySection/MatPaymentStatusPartly";
	}
}
