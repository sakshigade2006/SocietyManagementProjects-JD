package com.society.application.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.IncentiveMaster;
import com.society.application.model.YearMaster;
import com.society.application.repository.IncentiveMasterRepo;
import com.society.application.repository.YearMasterRepo;

@Controller
public class IncentiveSectionController {

	@Autowired
	IncentiveMasterRepo incentiveMasterRepo;

	@Autowired
	YearMasterRepo yearMasterRepo;

	/* INCENTIVE MASTER */

	@GetMapping("/incentiveMaster")
	public String incentiveMaster(Model model) {
		return "incentiveSection/IncentiveMaster";
	}

	@PostMapping("/saveIncentiveMaster")
	public String saveIncentiveMaster(@ModelAttribute("incentiveMaster") IncentiveMaster incentive) {
		if (incentive.getInvmonth() != null && !incentive.getInvmonth().isEmpty() && incentive.getfDate() != null
				&& !incentive.getfDate().isEmpty() && incentive.gettDate() != null && !incentive.gettDate().isEmpty()
				&& incentive.getRemark() != null && !incentive.getRemark().isEmpty()) {
			incentiveMasterRepo.save(incentive);
		} else {

		}
		return "incentiveSection/IncentiveMaster";
	}

	@PostMapping("/tableOfIncentiveMaster")
	@ResponseBody
	public List<IncentiveMaster> tableOfIncentiveMaster() {
		List<IncentiveMaster> list = incentiveMasterRepo.findAll();
		return list;
	}

	/* INCENTIVE GENERATE */

	@GetMapping("/incentiveGeneration")
	public String incentiveGeneration(Model model) {
		return "incentiveSection/IncentiveGeneration";
	}

	@PostMapping("/fetchingmonths")
	@ResponseBody
	public List<YearMaster> fetchyear() {
		return yearMasterRepo.findAll();
	}

	@PostMapping("/SaveIncentive")
	public String SaveIncentiveGeneration234(@ModelAttribute("SaveIncentive") IncentiveMaster incentiveMaster,
			Model model) {
		incentiveMasterRepo.save(incentiveMaster);
		return "incentiveSection/IncentiveGeneration";
	}

	/* INCENTIVE DETAILS */

	@GetMapping("/incentiveDetailsPrint")
	public String incentiveDetailsPrint(Model model) {
		return "incentiveSection/IncentiveDetailsPrint";
	}

	@PostMapping("/searchIncentiveDetailsPrint")
	@ResponseBody
	public List<IncentiveMaster> searchIncentiveDetailsPrint(@RequestBody IncentiveMaster model) {
		List<IncentiveMaster> list1 = incentiveMasterRepo.findByinvmonth(model.getInvmonth());
		List<IncentiveMaster> list2 = incentiveMasterRepo.findBycode(model.getCode());
		if (!list1.isEmpty()) {
			return list1;
		} else
			return list2;
	}

	/* INCENTIVE LIST */

	@GetMapping("/incentiveListPrint")
	public String incentiveListPrint(Model model) {
		return "incentiveSection/IncentiveListPrint";
	}

	@PostMapping("/searchIncentiveListPrint")
	@ResponseBody
	public List<IncentiveMaster> searchIncentiveListPrint(@RequestBody IncentiveMaster model) {
		List<IncentiveMaster> list1 = incentiveMasterRepo.findByinvmonth(model.getInvmonth());
		List<IncentiveMaster> list2 = incentiveMasterRepo.findBybranchName(model.getBranchName());
		List<IncentiveMaster> list3 = incentiveMasterRepo.findBycode(model.getCode());
		if (!list1.isEmpty()) {
			return list1;
		} else if (!list2.isEmpty()) {
			return list2;
		} else
			return list3;
	}

}
