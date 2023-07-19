package com.society.application.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.BankMaster;
import com.society.application.model.BranchMaster;
import com.society.application.model.Member;
import com.society.application.model.WalletMaster;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BankMasterRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.GroupMasterRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.RecurringDepositRepo;
import com.society.application.repository.ShareTransferDtoRepo;
import com.society.application.repository.WalletMasterRepo;

@Controller
public class DashboardController {

	@Autowired
	WalletMasterRepo walletMasterRepo;

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	ShareTransferDtoRepo shareTransferDtoRepo;

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	RecurringDepositRepo recurringDepositRepo;

	@Autowired
	DailyDepositeRepo dailyDepositeRepo;

	@Autowired
	FixedDepositRepo fixedDepositRepo;

	@Autowired
	MISDepositRepo misDepositRepo;

	@Autowired
	LoanRepo loanRepo;

	@Autowired
	GroupMasterRepo groupMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;

	@GetMapping("/dashboard")
	public String addMember() {
		return "dashboard/home";
	}

	@GetMapping("/getAllWalletAmount")
	@ResponseBody
	public WalletMaster getAllWalletAmount() {
		List<WalletMaster> walletBal = walletMasterRepo.findAll();
		return walletBal.get(0);
	}

	@GetMapping("/getMemberCount")
	@ResponseBody
	public String getMemberCount() {
		long memberCount = memberRepo.countMember();
		return String.valueOf(memberCount);
	}

	@GetMapping("/getShareCount")
	@ResponseBody
	public String getShareCount() {
		long shareCount = shareTransferDtoRepo.countShare();
		return String.valueOf(shareCount);
	}

	@GetMapping("/getAdvisorCount")
	@ResponseBody
	public String getAdvisorCount() {
		long advisorCount = advisorCollectorDetailsRepo.countAdvisor();
		return String.valueOf(advisorCount);
	}

	@GetMapping("/getRdCount")
	@ResponseBody
	public String getRdCount() {
		long rdCount = recurringDepositRepo.countRd();
		return String.valueOf(rdCount);
	}

	@GetMapping("/getDailyDepositeCount")
	@ResponseBody
	public String getDailyDepositeCount() {
		long dailyDepositeCount = dailyDepositeRepo.countDailyDeposite();
		return String.valueOf(dailyDepositeCount);
	}

	@GetMapping("/getFixedDepositeCount")
	@ResponseBody
	public String getFixedDepositeCount() {
		long fixedDepositeCount = fixedDepositRepo.countFixedDeposit();
		return String.valueOf(fixedDepositeCount);
	}

	@GetMapping("/getMisCount")
	@ResponseBody
	public String getMisCount() {
		long misCount = misDepositRepo.countMis();
		return String.valueOf(misCount);
	}

	@GetMapping("/getSavingCount")
	@ResponseBody
	public String getSavingCount() {
		// missing code
		return String.valueOf("0");
	}

	@GetMapping("/getLoanCount")
	@ResponseBody
	public String getLoanCount() {
		long loanCount = loanRepo.countLoan();
		return String.valueOf(loanCount);
	}

	@GetMapping("/getGroupCount")
	@ResponseBody
	public String getGroupCount() {
		long groupMasterCount = groupMasterRepo.countGroupMaster();
		return String.valueOf(groupMasterCount);
	}

	@GetMapping("/getCashBalance")
	@ResponseBody
	public List<BranchMaster> getCashBalance() {
		List<BranchMaster> cashBalance = branchMasterRepo.getlastFiveRecords();
		return cashBalance;
	}

	@GetMapping("/getBankMaster")
	@ResponseBody
	public List<BankMaster> getBankMaster() {
		List<BankMaster> bankMaster = bankMasterRepo.getlastFiveRecords();
		return bankMaster;
	}

}