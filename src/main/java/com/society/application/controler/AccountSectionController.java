package com.society.application.controler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AccountLegMaster;
import com.society.application.model.AddInvestment;
import com.society.application.model.BalanceSheetDatewise;
import com.society.application.model.BalanceSheetFY;
import com.society.application.model.BankMaster;
import com.society.application.model.BankStatement;
import com.society.application.model.BranchMaster;
import com.society.application.model.CashStatement;
import com.society.application.model.ChequeClear;
import com.society.application.model.ContraEntry;
import com.society.application.model.DayBookModel;
import com.society.application.model.IncentivePayment;
import com.society.application.model.JournalEntry;
import com.society.application.model.JournalReport;
import com.society.application.model.LedgerReport;
import com.society.application.model.MandateDepositToBank;
import com.society.application.model.MisPaymentModal;
import com.society.application.model.PaymentEntry2Modal;
import com.society.application.model.TransferBookModel;
import com.society.application.model.TrialBalance;
import com.society.application.model.plstatement;
import com.society.application.model.receiveVoucher;
import com.society.application.repository.AccountLegMasterRepo;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.BalanceSheetDatewiseRepo;
import com.society.application.repository.BalanceSheetFyRepo;
import com.society.application.repository.BankMasterRepo;
import com.society.application.repository.BankStatementRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.BranchMater2REpo;
import com.society.application.repository.CashStatementrepo;
import com.society.application.repository.ChequeClear_Repo;
import com.society.application.repository.ContraEntryRepo;
import com.society.application.repository.DayBookRepo;
import com.society.application.repository.IncentivePaymentRepo;
import com.society.application.repository.JournalEntryRepo;
import com.society.application.repository.JournalReportRepo;
import com.society.application.repository.LedgerReportRepo;
import com.society.application.repository.MandateDepositToBankRepo;
import com.society.application.repository.MisPaymentRepo;
import com.society.application.repository.PaymentEntryRepo;
import com.society.application.repository.PlStatementRepo;
import com.society.application.repository.TransferBookRepo;
import com.society.application.repository.TrialBalanceRepo;
import com.society.application.repository.accountSectionRepo;

@Controller
public class AccountSectionController {

	@Autowired
	AccountLegMasterRepo accountLegMasterRepo;

	@Autowired
	IncentivePaymentRepo incentivePaymentRepo;

	@Autowired
	CashStatementrepo csrepo;

	@Autowired
	TrialBalanceRepo trialbalancerepo;

	@Autowired
	BranchMasterRepo branchmasterrepo;

	@Autowired
	PaymentEntryRepo payentryrepo;

	@Autowired
	ContraEntryRepo contraEntryRepo;

	@Autowired
	MandateDepositToBankRepo mandateDepositRepo;

	@Autowired
	JournalReportRepo journalReportRepo;

	@Autowired
	BalanceSheetDatewiseRepo balanceSheetDatewiseRepo;

	@Autowired
	BankStatementRepo bankStatementRepo;

	@Autowired
	LedgerReportRepo ledgerReportRepo;

	@Autowired
	MisPaymentRepo mispayrepo;

	@Autowired
	TransferBookRepo transferrepo;

	@Autowired
	BranchMater2REpo branchMater2REpo;

	@Autowired
	accountSectionRepo accountrepo;

	@Autowired
	ChequeClear_Repo chequerepo;

	@Autowired
	DayBookRepo dayBookRepo;

	@Autowired
	BalanceSheetFyRepo balanceSheetFyRepo;

	@Autowired
	PlStatementRepo plrepo;

	@Autowired
	JournalEntryRepo journalEntryRepo;
	
	@Autowired
	BankMasterRepo bankMasterRepo;
	
	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	/* LEDGER MASTER */

	@GetMapping("/accountLegMaster")
	public String getAccountLegMaster() {
		return "accountSection/AccountLegMaster";
	}

	@PostMapping("accountLegMaster1")
	public String getAccountLegMaster(@ModelAttribute("accountlegmodelattribute") AccountLegMaster alm, Model model) {
		if (alm.getLedgername() != null && alm.getSelectgroup() != null) {
			accountLegMasterRepo.save(alm);
			model.addAttribute("msg", "Record Saved");
			// System.out.println("Saved");
		} else {
			model.addAttribute("msg", "Data not saved");
			// System.out.println(" Not Saved");
		}
		return "accountSection/AccountLegMaster";
	}

	@GetMapping("/accountLegMaster2")
	public String getAccountLegMasterList(Model model) {
		List<AccountLegMaster> list = accountLegMasterRepo.findAll();
		model.addAttribute("list", list);
		return "accountSection/AccountLegMaster";
	}

	/* INCENTIVE PAYMENT */

	@GetMapping("/incentivepayment")
	public String getIncentivePayment() {
		return "accountSection/IncentivePayment";
	}

	@PostMapping("/incentivepayments")
	@ResponseBody
	public List<IncentivePayment> getIncentivePaymentSearch(@RequestBody IncentivePayment model){
		List<IncentivePayment> list1 = incentivePaymentRepo.findBymonthname(model.getMonthname());
		List<IncentivePayment> list2 = incentivePaymentRepo.findBycode(model.getCode());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}

	/* CASH BOOK */

	@GetMapping("/cashbook")
	public String getCashBook() {
		return "accountSection/CashBook";
	}

	@PostMapping("/cashbook1")
	@ResponseBody
	public List<CashStatement> getCashBookSearch(@RequestBody CashStatement model1){
		List<CashStatement> list1 = csrepo.findByselectBranch(model1.getSelectBranch());
		List<CashStatement> list2 = csrepo.findBytxnDateBetween(model1.getFromDate(), model1.getToDate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}

	/* TRIAL BALANCE */

	@GetMapping("/trialBalance")
	public String getTrialBalance() {
		return "accountSection/FinancialTrialBalance";
	}

	@GetMapping("/trialBalance1")
	@ResponseBody
	public List<TrialBalance> getTrialBalance1(HttpServletRequest request) {
		try {
			String Branch_Name = request.getParameter("BranchName");
			String FromDate = request.getParameter("Fromdate");
			String ToDate = request.getParameter("Todate");

			List<TrialBalance> list1 = trialbalancerepo.findBybranchName(Branch_Name);
			List<TrialBalance> list2 = trialbalancerepo.findBydateBetween(FromDate, ToDate);

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

	/* BRANCH CASH TRANSFER */

	@GetMapping("/branchCashTransfer")
	public String getBranchCashTransfer() {
		return "accountSection/BranchCashTransfer";
	}

	@GetMapping("/findAllBranchCashTransfer")
	@ResponseBody
	public List<BranchMaster> findAllBranchCashTransfer(){
		List<BranchMaster> list = branchmasterrepo.findAll();
		return list;
	}
	
	@GetMapping("/branchCashTransferUpdate")
	@ResponseBody
	public String updateBranchCashTransfer(HttpServletRequest request) {
	    String transferDate = request.getParameter("TransferDate");
	    String fromBranch = request.getParameter("FromBranch");
	    String toBranch = request.getParameter("ToBranch");
	    String amount = request.getParameter("Amount");

	    branchmasterrepo.updateByFromBranchAndToBranch(amount, transferDate, fromBranch, toBranch);

	    return "Data updated successfully";
	}

	/* PAYMENT ENTRY */

	@GetMapping("/paymentEntryView")
	public String paymententry(Model model) {
		return "accountSection/PaymentEntry";
	}

	@GetMapping("/searchPaymentEntry")
	@ResponseBody
	public List<PaymentEntry2Modal> showpayentry(HttpServletRequest hp) {
		try {
			String fdate = hp.getParameter("fDate");
			String tdate = hp.getParameter("todate");
			String branch = hp.getParameter("selectbranch");

			List<PaymentEntry2Modal> pebranch = payentryrepo.findByselectbranch(branch);
			List<PaymentEntry2Modal> pedate = payentryrepo.findBytxndateBetween(fdate, tdate);

			if (!pebranch.isEmpty()) {
				return pebranch;
			} else
				return pedate;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	@GetMapping("/ledgerMaster")
	@ResponseBody
	public List<AccountLegMaster> ledgerMaster(){
		List<AccountLegMaster> list = accountLegMasterRepo.findAll();
		return list;
	}
	
	@GetMapping("/accountNumber")
	@ResponseBody
	public List<BankMaster> accountNumber(){
		List<BankMaster> list = bankMasterRepo.findAll();
		return list;
	}

	@PostMapping("/paymentEntry")
	public String savePaymentEntry(HttpServletRequest request, Model model) {
	    String status = "exception";
	    String selectBranch = request.getParameter("selectbranch");
	    String txndate = request.getParameter("txndate");
	    String dtransfer = request.getParameter("dtransfer");
	    String selectLedger = request.getParameter("selectledger");
	    String amount = request.getParameter("amount");
	    String narration = request.getParameter("narration");
	    String reciept = request.getParameter("reciept");

	    if (selectBranch != null && txndate != null && dtransfer != null
	            && selectLedger != null && amount != null) {
	        
	        PaymentEntry2Modal payentry2 = new PaymentEntry2Modal();
	        payentry2.setSelectbranch(selectBranch);
	        payentry2.setTxndate(txndate);
	        payentry2.setDtransfer(dtransfer);
	        payentry2.setSelectledger(selectLedger);
	        payentry2.setAmount(amount);
	        payentry2.setNarration(narration);
	        payentry2.setReciept(reciept);

	        PaymentEntry2Modal payentry = payentryrepo.save(payentry2);
	        if (payentry != null) {
	            status = "Data saved successfully";
	        }
	        model.addAttribute("status", status);
	    } else {
	        System.out.println("Data not saved");
	    }
	    return "accountSection/PaymentEntry";
	}

	/* CONTRA ENTRY */

	@GetMapping("/contraEntry")
	public String getContraEntry() {
		return "accountSection/ContraEntry";
	}

	@PostMapping("/getAllRecord")
	@ResponseBody
	public List<ContraEntry> getAllContraEntry(@RequestBody ContraEntry contraEntry){
		List<ContraEntry> list = contraEntryRepo.findByselectbranch(contraEntry.getSelectbranch());
		List<ContraEntry> list1 = contraEntryRepo.findBytxndateBetween(contraEntry.getFromdate(), contraEntry.getTodate());
		if(!list.isEmpty()) {
			return list;
		}else
			return list1;
	}

	@PostMapping("/contraEntry1")
	public String getContraEntry(@ModelAttribute("ContramodelAttribute") ContraEntry contraEntry, Model model) {
		contraEntryRepo.save(contraEntry);
		return "accountSection/ContraEntry";
	}

	/* MANDATE DEPOSITE TO BANK */

	@GetMapping("/mandateDeposit")
	public String getMandateDeposit() {
		return "accountSection/MandateDepositToBank";
	}

	@PostMapping("/mandateDeposit1")
	public String getMandateDeposit(@ModelAttribute("MandateDepositToBank") MandateDepositToBank mandateDepBank,
			Model model) {
		mandateDepositRepo.save(mandateDepBank);
		return "accountSection/MandateDepositToBank";
	}
	
	@PostMapping("/getAllRecords")
	@ResponseBody
	public List<MandateDepositToBank> getAllMandateRecord(@RequestBody MandateDepositToBank model) {
		List<MandateDepositToBank> data1 = mandateDepositRepo.findByfddateBetween(model.getFromdate(), model.getTodate());
		return data1;
	}
	
	/* JOURNAL REPORT */

	@GetMapping("/journalReport")
	public String getJournalReport() {
		return "accountSection/JournalReport";
	}
	
	@PostMapping("/journalReport1")
	@ResponseBody
	public List<JournalReport> getjournalReport(@RequestBody JournalReport model){
		List<JournalReport> list = journalReportRepo.findByselectbranch(model.getSelectbranch());
		List<JournalReport> list1 = journalReportRepo.findBydateBetween(model.getFromdate(), model.getTodate());
		if(!list.isEmpty()) {
			return list;
		}else 
			return list1;
	}

	/* BALANCE SHEET */

	@GetMapping("/Balancesheet")
	public String getBalancesheet() {
		return "accountSection/BalanceSheetDatewise";
	}

	@GetMapping("/Balancesheet123")
	@ResponseBody
	public List<BalanceSheetDatewise> getgetBalancesheet1(HttpServletRequest request) {
	    String branch = request.getParameter("Branch");
	    List<BalanceSheetDatewise> list1 = balanceSheetDatewiseRepo.findByselectbranch(branch);

	    String fromdate = request.getParameter("Fromdate");
	    String todate = request.getParameter("Todate");

	    List<BalanceSheetDatewise> list2 = balanceSheetDatewiseRepo.findBydateBetween(fromdate, todate);

	    if (!list1.isEmpty()) {
	        return list1;
	    } else {
	        return list2;
	    }
	}

	/* BANK STATEMENT */

	@GetMapping("/bankstatement")
	public String getBankStatement(Model model1) {
		List<BankStatement> list3 = bankStatementRepo.findAll();
		model1.addAttribute("list3", list3);
		return "accountSection/BankStatement";
	}

	@GetMapping("/bankstatement1")
	@ResponseBody
	public List<BankStatement> getbankstatement(@ModelAttribute("BankStatement") BankStatement model,
			HttpServletRequest request) {
		String accountno = request.getParameter("Accountno");
		String fromdate = request.getParameter("Fromdate");
		String todate = request.getParameter("Todate");

		List<BankStatement> list1 = bankStatementRepo.findByaccountno(accountno);
		List<BankStatement> list2 = bankStatementRepo.findBydateBetween(fromdate, todate);

		if (!list1.isEmpty()) {
			return list1;
		}
		else
			return list2;
	}

	/* LEDGER REPORT */

	@GetMapping("/ledgerReport")
	public String getLedgerReport() {
		return "accountSection/LedgerReport";
	}
	
	@PostMapping("/getAllLedgerReport")
	@ResponseBody
	public List<LedgerReport> getAllLedgerReport(@RequestBody LedgerReport ledReport){
		List<LedgerReport> list1 = ledgerReportRepo.findByselectledger(ledReport.getSelectledger());
		List<LedgerReport> list2 = ledgerReportRepo.findBydateBetween(ledReport.getFromdate(), ledReport.getTodate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}

	/* MIS INT. PAYMENT */

	@GetMapping("/misIntPayment")
	public String ShowMisintpage(Model model) {
		return "accountSection/MisIntPayment";
	}

	/*
	 * @PostMapping("/addPolicyDetails") public String
	 * SavePolicyDetails(@ModelAttribute("MisPaymentModal") MisPaymentModal mpm,
	 * Model model) { mispayrepo.save(mpm); return "accountSection/MisIntPayment"; }
	 */

	@PostMapping("/enterPolicyNumber")
	@ResponseBody
	public List<AddInvestment> enterPolicyNumber(@RequestBody AddInvestment model){
		List<AddInvestment> list = addInvestmentRepo.findBypolicyno(model.getPolicyno());
		return list;
	}
	
	/* TRANSFER BOOK */

	@GetMapping("/transferBook")
	public String getTransferBook() {
		return "accountSection/TransferBookPage";
	}
	
	@PostMapping("/fetchAllData")
	@ResponseBody
	public List<TransferBookModel> showListofuser(@RequestBody TransferBookModel tbm) {
	    List<TransferBookModel> tbMode = transferrepo.findBybranchname(tbm.getSelectbraanch());
	    List<TransferBookModel> tbModeldate = transferrepo.findBytxndateBetween(tbm.getFromdate(), tbm.getTodate());
	    if (!tbMode.isEmpty()) {
	        return tbMode;
	    } else {
	        return tbModeldate;
	    }
	}

	/* RECEIVE ENTRY */

	@GetMapping("/addrecievceVoucher")
	public String addrecievceVoucher(Model model) {
		int i = accountrepo.getMaxReceiptNumber();
		model.addAttribute("receiptNO", i + 1);
		// System.out.println(i+1);
		return "accountSection/ReceiveVoucher";
	}

	@GetMapping("/searchRecieveVoucher")
	@ResponseBody
	public List<receiveVoucher> searchRecieveVoucher(HttpServletRequest hp) {
		String Branch = hp.getParameter("selectbranch");
		String FromDate = hp.getParameter("fDate");
		String TOdate = hp.getParameter("tDate");

		List<receiveVoucher> rv = accountrepo.findByselectBranch(Branch);
		List<receiveVoucher> rvDate = accountrepo.findBytxnDateBetween(FromDate, TOdate);

		if (!rv.isEmpty()) {
			return rv;
		}
		return rvDate;
	}
	
	@PostMapping("/addrecievceVoucherdata")
	public String addMember(HttpServletRequest request, Model model) {
	    String status = "error";
	    String selectBranch = request.getParameter("selectBranch");
	    String txnDate = request.getParameter("txnDate");
	    String directTransfer = request.getParameter("directTransfer");
	    String selectLedger = request.getParameter("selectLedger");
	    String amount = request.getParameter("amount");
	    String narration = request.getParameter("narration");
	    String receiptNo = request.getParameter("receiptNo");

	    if (selectBranch != null && txnDate != null && directTransfer != null
	            && selectLedger != null && amount != null) {
	    	
	    	receiveVoucher receive = new receiveVoucher();
	    	receive.setSelectBranch(selectBranch);
	    	receive.setTxnDate(txnDate);
	    	receive.setDirectTransfer(directTransfer);
	    	receive.setSelectLedger(selectLedger);
	    	receive.setAmount(amount);
	    	receive.setNarration(narration);
	    	
	        receiveVoucher obj = accountrepo.save(receive);
	        if (obj != null) {
	            status = "Data saved successfully";
	        }
	        model.addAttribute("status", status);
	    	} else {
	    		System.out.println("Data not saved");
	    	}
	    	return "accountSection/PaymentEntry";
	}

	/* CHEQUE CLEARING */

	@GetMapping("/ChequeClear")
	public String addChequeClear() {
		return "accountSection/ChequeClear";
	}

	@PostMapping("/searchChequeClears")
	@ResponseBody
	public List<ChequeClear> searchChequeClear(@RequestBody ChequeClear model) {
		List<ChequeClear> data1 = chequerepo.findBytype(model.getType());
		List<ChequeClear> data2 = chequerepo.findBybranch(model.getBranch());
		List<ChequeClear> data3 = chequerepo.findBytxndateBetween(model.getFdate(), model.getTdate());
		List<ChequeClear> data4 = chequerepo.findBycheque(model.getCheque());

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		} else if (!data3.isEmpty()) {
			return data3;
		}
		return data4;
	}

	/* DAY BOOK */

	@GetMapping("/DayBook")
	public String addDayBook() {
		return "accountSection/DayBook";
	}

	@PostMapping("/searchDayBook")
	@ResponseBody
	public List<DayBookModel> searchDayBook(@RequestBody DayBookModel model) {
	    List<DayBookModel> result = new ArrayList<>();

	    if (model.getSelectBranch() != null && !model.getSelectBranch().isEmpty()) {
	        List<DayBookModel> list1 = dayBookRepo.findBySelectBranch(model.getSelectBranch());
	        result.addAll(list1);
	    }
	    
	    if (model.getSelectLedger() != null && !model.getSelectLedger().isEmpty()) {
	        List<DayBookModel> list2 = dayBookRepo.findBySelectLedger(model.getSelectLedger());
	        result.addAll(list2);
	    }
	    
	    if (model.getfDate() != null && model.gettDate() != null) {
	        List<DayBookModel> list3 = dayBookRepo.findByDateBetween(model.getfDate(), model.gettDate());
	        result.addAll(list3);
	    }

	    return result;
	}

	/* BALANCE SHEET (FY) */

	@GetMapping("/FinancialBalanceSheet")
	public String addFinancialBalanceSheet() {
		return "accountSection/FinancialBalanceSheet";
	}
	
	@PostMapping("/searchFirstButton")
	@ResponseBody
	public List<BranchMaster> searchFirstButton(@RequestBody BranchMaster model){
		List<BranchMaster> list1 = branchMater2REpo.findByname(model.getName());
		List<BranchMaster> list2 = branchMater2REpo.findByopeningDateBetween(model.getFdate(), model.getTdate());
		if(!list1.isEmpty()) {
			return list1;
		}else
			return list2;
	}
	
	@GetMapping("/searchSecondButton")
	@ResponseBody
	public List<BalanceSheetFY> searchSecondButton(HttpServletRequest hp) {
		String Branch = hp.getParameter("Branch1");
		String Fyear = hp.getParameter("Fyear1");
		String FromDate = hp.getParameter("FromDate1");
		String ToDate = hp.getParameter("ToDate1");
		int i = Integer.parseInt(Fyear);

		List<BalanceSheetFY> data1 = balanceSheetFyRepo.findAllByyear(i);
		List<BalanceSheetFY> data2 = balanceSheetFyRepo.findBybranch(Branch);
		List<BalanceSheetFY> data3 = balanceSheetFyRepo.findBydateBetween(FromDate, ToDate);

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		}

		return data3;
	}

	/* P&L STATEMENT(FY) */

	@GetMapping("/PLStatementView")
	public String showPlstatmentPage(Model model) {
		return "accountSection/PlstatementPage";
	}

	@GetMapping("/searchPlstatement")
	@ResponseBody
	public List<plstatement> showplData(HttpServletRequest hp) {
		try {
			String fdate = hp.getParameter("fromdate");
			String tdate = hp.getParameter("todate");
			String branch = hp.getParameter("selectbranch");

			List<plstatement> plbycombo = plrepo.findBybranchname(branch);
			List<plstatement> plbydates = plrepo.findBypldateBetween(fdate, tdate);

			if (!plbycombo.isEmpty()) {
				return plbycombo;
			} else if (!plbydates.isEmpty()) {
				return plbydates;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	@GetMapping("/searchPlstatementfy")
	@ResponseBody
	public List<plstatement> showsomeList(HttpServletRequest hp) {
		String fdatefy = hp.getParameter("fromdatefy");
		String tdatefy = hp.getParameter("todatefy");
		String branchfy = hp.getParameter("selectbranchfyz");
		String yearyf = hp.getParameter("selectyearfyz");
		int i = Integer.parseInt(yearyf);
		List<plstatement> plycombofy = plrepo.findBybranchname(branchfy);
		List<plstatement> plyplbydatesfy = plrepo.findBypldateBetween(fdatefy, tdatefy);
		List<plstatement> plybyyear = plrepo.findAllBypldate(i);
		if (!plycombofy.isEmpty()) {
			return plycombofy;
		} else if (!plyplbydatesfy.isEmpty()) {
			return plyplbydatesfy;
		} else if (!plybyyear.isEmpty()) {
			return plybyyear;
		}
		return null;
	}

	/* JOURNAL ENTRY */

	@GetMapping("/journalEntry")
	public String getJournalEntry(Model model) {
		int rcptno = journalEntryRepo.getreceiptno();
		model.addAttribute("rcptno", rcptno + 1);
		return "accountSection/JournalEntry";
	}
	
	@PostMapping("/journalEntry1")
	public String getJournalEntry1(@ModelAttribute("JournalEntryModelAttribute") JournalEntry journal, Model model) {
		journalEntryRepo.save(journal);
		return "accountSection/JournalEntry";
	}

	@PostMapping("/getAllRecord123")
	@ResponseBody
	public List<JournalEntry> getAllRecord123(@RequestBody JournalEntry model){
		List<JournalEntry> list = journalEntryRepo.findByselectbranch(model.getSelectbranch());
		List<JournalEntry> list2 = journalEntryRepo.findBytxndateBetween(model.getFromdate(), model.getTodate());
		if(!list.isEmpty()) {
			return list;
		}else
			return list2;
	}
	
	/* P&L STATEMENT */
	
	@GetMapping("/pandlstatement")
	public String getPAndLStatement() {
		return "accountSection/PandLStatement";
	}

}
