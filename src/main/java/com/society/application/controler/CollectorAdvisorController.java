package com.society.application.controler;

import org.springframework.stereotype.Controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.ClientMaster;
import com.society.application.model.DesignationMaster;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.DesignationMasterRepo;

@Controller
public class CollectorAdvisorController {
	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	ClientMasterRepo clientMasterRepo;

	@Autowired
	DesignationMasterRepo designationMasterRepo;

	/* COLLECTOR/ADVISOR TREE */

	@GetMapping("/advisorTree")
	public String advisorTree() {
		return "advisor/advisorTree";
	}

	@GetMapping("/Fetchadvdetail")
	@ResponseBody
	public List<AdvisorCollectorDetails> FetchDetails(HttpServletRequest hp) {
		String ids = hp.getParameter("id");
		// System.out.println(ids);
		int i = Integer.parseInt(ids);
		List<AdvisorCollectorDetails> data1 = advisorCollectorDetailsRepo.findByid(i);
		return data1;
	}

	@GetMapping("/FetcHPositiondata")
	@ResponseBody
	public List<AdvisorCollectorDetails> FetchDetailsforTable(HttpServletRequest hp) {
		String ids = hp.getParameter("id");
		int i = Integer.parseInt(ids);
		List<AdvisorCollectorDetails> data2 = advisorCollectorDetailsRepo.findByid(i);
		return data2;
	}

	@GetMapping("/appendSelectMember")
	@ResponseBody
	public List<ClientMaster> appendSelectMember() {
		List<ClientMaster> list = clientMasterRepo.findAll();
		return list;
	}

	@PostMapping("/fetchBySelectedMember")
	@ResponseBody
	public List<ClientMaster> fetchBySelectedMember(@RequestBody ClientMaster client) {
		List<ClientMaster> list = clientMasterRepo.findByid(client.getId());
		return list;
	}

	@PostMapping("/saveOperationForAddAdvisor")
	public ResponseEntity<String> saveOperationForAddAdvisor(
			@RequestParam(name = "joiningDate", required = false) String joiningDate,
			@RequestParam(name = "selectMember", required = false) String selectMember,
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "mobileNo", required = false) String mobileNo,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "relation", required = false) String relation,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "selectPosition", required = false) String selectPosition,
			@RequestParam(name = "introducerCode", required = false) String introducerCode,
			@RequestParam(name = "introducerName", required = false) String introducerName,
			@RequestParam(name = "position", required = false) String position,
			@RequestParam(name = "feesIfAny", required = false) String feesIfAny,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "advisorStatus", required = false) String advisorStatus,
			@RequestParam(name = "smsSend", required = false) String smsSend,
			@RequestParam(name = "filetag", required = false) MultipartFile photoFile,
	        @RequestParam(name = "secondfiletag", required = false) MultipartFile signatureFile,
			AdvisorCollectorDetails advisor,
			HttpSession session) {
		try {
			// AdvisorCollectorDetails advisor = new AdvisorCollectorDetails();
			String createdBy = session.getAttribute("ID").toString();
			advisor.setCreatedBy(createdBy);
			if (photoFile != null && signatureFile != null) {
	            byte[] photo = photoFile.getBytes();
	            byte[] signature = signatureFile.getBytes();

	            advisor.setPhoto(photo);
	            advisor.setSigniture(signature);
	        }
			advisor.setJoiningDate(joiningDate);
			advisor.setSelectMember(selectMember);
			advisor.setMemberName(memberName);
			advisor.setDob(dob);
			advisor.setAge(age);
			advisor.setRelativeName(relativeName);
			advisor.setRelativeRelation(relativeRelation);
			advisor.setMobileNo(mobileNo);
			advisor.setNomineeName(nomineeName);
			advisor.setRelation(relation);
			advisor.setBranchName(branchName);
			advisor.setNomineeAge(nomineeAge);
			advisor.setAddress(address);
			advisor.setDistrict(district);
			advisor.setState(state);
			advisor.setPinCode(pinCode);
			advisor.setOccupation(occupation);
			advisor.setEducation(education);
			advisor.setSelectPosition(selectPosition);
			advisor.setIntroducerCode(introducerCode);
			advisor.setIntroducerName(introducerName);
			advisor.setPosition(position);
			advisor.setFeesIfAny(feesIfAny);
			advisor.setPaymentBy(paymode);
			advisor.setRemarks(remarks);
			advisor.setAdvisorStatus(advisorStatus);
			advisor.setSmsSend(smsSend);
			advisor.setFlag("1");
			advisorCollectorDetailsRepo.save(advisor);
	        session.setAttribute("createdBy", createdBy);
	        return new ResponseEntity<>("Data saved successfully...!!!", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e);
			return new ResponseEntity<>("Data save failed...!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/selectCodeOfAdvisor")
	@ResponseBody
	public List<AdvisorCollectorDetails> selectCodeOfAdvisor() {
		List<AdvisorCollectorDetails> list = advisorCollectorDetailsRepo.findAll();
		return list;
	}

	@PostMapping("/fetchBySelectCode")
	@ResponseBody
	public List<AdvisorCollectorDetails> fetchBySelectCode(@RequestBody AdvisorCollectorDetails advisor) {
		List<AdvisorCollectorDetails> list = advisorCollectorDetailsRepo.findByid(advisor.getId());
		return list;
	}

	@PostMapping("/updateThroughSelectedCode")
	@ResponseBody
	public ResponseEntity<String> updateCollectionPromotion(
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "selectPosition", required = false) String selectPosition,
			@RequestParam(name = "newSenior", required = false) String newSenior,
			@RequestParam(name = "id", required = false) Integer id, 
			HttpSession session,
			AdvisorCollectorDetails advisor) {
		try {
			List<AdvisorCollectorDetails> list = advisorCollectorDetailsRepo.findByid(id);
			String createdBy = session.getAttribute("ID").toString();
			list.forEach(s -> {
				if (branchName != null && selectPosition != null && newSenior != null) {
					s.setBranchName(branchName);
					s.setSelectPosition(selectPosition);
					s.setNewSenior(newSenior);
					s.setCreatedBy(createdBy);
					advisorCollectorDetailsRepo.save(s);
					session.setAttribute("createdBy", createdBy);
				}
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
	}

	@GetMapping("/selectPosition")
	@ResponseBody
	public List<DesignationMaster> selectPosition() {
		List<DesignationMaster> list = designationMasterRepo.findAll();
		return list;
	}

}
