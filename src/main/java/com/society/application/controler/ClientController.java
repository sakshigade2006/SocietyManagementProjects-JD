package com.society.application.controler;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.Entity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.society.application.model.CasteMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.Loan;
import com.society.application.model.MappingClientAndModules;
import com.society.application.model.Member;
import com.society.application.model.ShareAllocationMaster;
import com.society.application.model.ShareTransferDto;
import com.society.application.repository.CasteMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.MappingClientAndModulesRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.ShareAllocationMasterRepo;
import com.society.application.repository.ShareTransferDtoRepo;

@Controller
public class ClientController {

	@Autowired
	private ClientMasterRepo clientMasterRepo;

	@Autowired
	private ShareTransferDtoRepo shareTransferDtoRepo;

	@Autowired
	private LoanRepo loanRepo;

	@Autowired
	private MappingClientAndModulesRepo mappingClientAndModulesRepo;

	@Autowired
	CasteMasterRepo casteMasterRepo;

	@Autowired
	private ShareAllocationMasterRepo shareAllocationMasterRepo;

	@PostMapping("/addClient")
	public ResponseEntity<String> addClient(@RequestParam(name = "clientNo", required = false) String clientNo,
			@RequestParam(name = "registrationDate", required = false) String registrationDate,
			@RequestParam(name = "memberNamePrefix", required = false) String memberberNamePrefix,
			@RequestParam(name = "memberName", required = false) String memberberName,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "gender", required = false) String gender,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "maritalStatus", required = false) String maritalStatus,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "loginID", required = false) String loginID,
			@RequestParam(name = "password", required = false) String password,
			@RequestParam(name = "memberberIncome", required = false) String memberberIncome,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "aadharNo", required = false) String aadharNo,
			@RequestParam(name = "pan", required = false) String pan,
			@RequestParam(name = "voterNo", required = false) String voterNo,
			@RequestParam(name = "phoneno", required = false) String phoneno,
			@RequestParam(name = "emailid", required = false) String emailid,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "clientPurpose", required = false) String clientPurpose,
			@RequestParam(name = "passportNumber", required = false) String passportNumber,
			@RequestParam(name = "casteName", required = false) String casteName,
			@RequestParam(name = "religionName", required = false) String religionName,
			@RequestParam(name = "categoryName", required = false) String categoryName,
			@RequestParam(name = "riskCategory", required = false) String riskCategory,
			@RequestParam(name = "nationality", required = false) String nationality,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "nRelation", required = false) String nRelation,
			@RequestParam(name = "nomineeAddress", required = false) String nomineeAddress,
			@RequestParam(name = "nomineeKycNumber", required = false) String nomineeKycNumber,
			@RequestParam(name = "nomineeMobileNo", required = false) String nomineeMobileNo,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "nomineePanNo", required = false) String nomineePanNo,
			@RequestParam(name = "nomineeKycType", required = false) String nomineeKycType,
			@RequestParam(name = "memberberJoiningFess", required = false) String memberberJoiningFess,
			@RequestParam(name = "shareAllotedfrm", required = false) String shareAllotedfrm,
			@RequestParam(name = "noOfShared", required = false) String noOfShared,
			@RequestParam(name = "enterShareAmount", required = false) String enterShareAmount,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "memberStatusIsActive", required = false) String memberberStatusIsActive,
			@RequestParam(name = "chkmobile", required = false) String chkmobile,
			@RequestParam(name = "chknetBanking", required = false) String chknetBanking,
			@RequestParam(name = "chkisSms", required = false) String chkisSms,
			@RequestParam(name = "chkMinor", required = false) String chkMinor,
			@RequestParam(name = "filetag", required = false) MultipartFile file) {
		try {
			ClientMaster client = new ClientMaster();

			byte[] image = file.getBytes();

			client.setClientNo(clientNo);
			client.setRegistrationDate(registrationDate);
			client.setMemberNamePrefix(memberberNamePrefix);
			client.setMemberName(memberberName);
			client.setRelativeName(relativeName);
			client.setRelativeRelation(relativeRelation);
			client.setGender(gender);
			client.setDob(dob);
			client.setAge(age);
			client.setMaritalStatus(maritalStatus);
			client.setAddress(address);
			client.setDistrict(district);
			client.setState(state);
			client.setBranchName(branchName);
			client.setLoginID(loginID);
			client.setPassword(password);
			client.setMemberIncome(memberberIncome);
			client.setPinCode(pinCode);
			client.setAadharNo(aadharNo);
			client.setPan(pan);
			client.setVoterNo(voterNo);
			client.setPhoneno(phoneno);
			client.setEmailid(emailid);
			client.setOccupation(occupation);
			client.setEducation(education);
			client.setClientPurpose(clientPurpose);
			client.setPassportNumber(passportNumber);
			client.setCasteName(casteName);
			client.setReligionName(religionName);
			client.setCategoryName(categoryName);
			client.setRiskCategory(riskCategory);
			client.setNationality(nationality);
			client.setNomineeName(nomineeName);
			client.setnRelation(nRelation);
			client.setNomineeAddress(nomineeAddress);
			client.setNomineeKycNumber(nomineeKycNumber);
			client.setNomineeMobileNo(nomineeMobileNo);
			client.setNomineeAge(nomineeAge);
			client.setNomineePanNo(nomineePanNo);
			client.setNomineeKycType(nomineeKycType);
			client.setMemberJoiningFess(memberberJoiningFess);
			client.setShareAllotedfrm(shareAllotedfrm);
			client.setNoOfShared(noOfShared);
			client.setEnterShareAmount(enterShareAmount);
			client.setPaymode(paymode);
			client.setRemarks(remarks);
			client.setMemberStatusIsActive(memberberStatusIsActive);
			client.setChkmobile(chkmobile);
			client.setChknetBanking(chknetBanking);
			client.setChkisSms(chkisSms);
			client.setChkMinor(chkMinor);
			client.setFlag("1");
			client.setImage(image);
			clientMasterRepo.save(client);
			return new ResponseEntity<>("Data uploaded successfully", HttpStatus.OK);
		} catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data uploaded Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/getAllClient")
	@ResponseBody
	public List<ClientMaster> getValueInEditClient() {
		return clientMasterRepo.findAll();
	}

	@PostMapping("/appenddatainfields")
	@ResponseBody
	public List<ClientMaster> appenddatainfields(@RequestBody ClientMaster cm) {
		List<ClientMaster> data1 = clientMasterRepo.findByid(cm.getId());
		data1.forEach(s -> {
			if (data1 != null) {
				String encodedPhoto = Base64.getEncoder().encodeToString(s.getImage());
				// model.addAttribute("memberSummaryPhoto", encodedPhoto);
				s.setFrontEndPhoto(encodedPhoto);
			}
		});
		return data1;
	}

	@PostMapping("/addClientEdit")
	@ResponseBody
	public List<ClientMaster> addClientEdit(@RequestBody ClientMaster cm) {
		List<ClientMaster> list = clientMasterRepo.findByid(cm.getId());
		// model.addAttribute("list", list);
		// return "member/AddMemberEdit";
		return list;
	}

	@PostMapping("/addUpdateClient")
	public ResponseEntity<String> addUpdateClient(@RequestParam(name = "clientNo", required = false) String clientNo,
			@RequestParam(name = "registrationDate", required = false) String registrationDate,
			@RequestParam(name = "memberNamePrefix", required = false) String memberberNamePrefix,
			@RequestParam(name = "memberName", required = false) String memberberName,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "gender", required = false) String gender,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "maritalStatus", required = false) String maritalStatus,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "loginID", required = false) String loginID,
			@RequestParam(name = "password", required = false) String password,
			@RequestParam(name = "memberIncome", required = false) String memberberIncome,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "aadharNo", required = false) String aadharNo,
			@RequestParam(name = "pan", required = false) String pan,
			@RequestParam(name = "voterNo", required = false) String voterNo,
			@RequestParam(name = "phoneno", required = false) String phoneno,
			@RequestParam(name = "emailid", required = false) String emailid,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "clientPurpose", required = false) String clientPurpose,
			@RequestParam(name = "passportNumber", required = false) String passportNumber,
			@RequestParam(name = "casteName", required = false) String casteName,
			@RequestParam(name = "religionName", required = false) String religionName,
			@RequestParam(name = "categoryName", required = false) String categoryName,
			@RequestParam(name = "riskCategory", required = false) String riskCategory,
			@RequestParam(name = "nationality", required = false) String nationality,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "nRelation", required = false) String nRelation,
			@RequestParam(name = "nomineeAddress", required = false) String nomineeAddress,
			@RequestParam(name = "nomineeKycNumber", required = false) String nomineeKycNumber,
			@RequestParam(name = "nomineeMobileNo", required = false) String nomineeMobileNo,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "nomineePanNo", required = false) String nomineePanNo,
			@RequestParam(name = "nomineeKycType", required = false) String nomineeKycType,
			@RequestParam(name = "memberJoiningFess", required = false) String memberberJoiningFess,
			@RequestParam(name = "shareAllotedfrm", required = false) String shareAllotedfrm,
			@RequestParam(name = "noOfShared", required = false) String noOfShared,
			@RequestParam(name = "enterShareAmount", required = false) String enterShareAmount,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "memberStatusIsActive", required = false) String memberberStatusIsActive,
			@RequestParam(name = "chkmobile", required = false) String chkmobile,
			@RequestParam(name = "chknetBanking", required = false) String chknetBanking,
			@RequestParam(name = "chkisSms", required = false) String chkisSms,
			@RequestParam(name = "chkMinor", required = false) String chkMinor,
			@RequestParam(name = "filetag", required = false) MultipartFile file,
			@RequestParam(name = "clientIDNo", required = false) Integer id) {
		try {
			List<ClientMaster> client = clientMasterRepo.findByid(id);
			client.forEach(s -> {
				if (!(file == null)) {
					try {
						byte[] image = file.getBytes();
						s.setImage(image);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				s.setRegistrationDate(registrationDate);
				s.setMemberNamePrefix(memberberNamePrefix);
				s.setMemberName(memberberName);
				s.setRelativeName(relativeName);
				s.setGender(gender);
				s.setDob(dob);
				s.setAge(age);
				s.setMaritalStatus(maritalStatus);
				s.setAddress(address);
				s.setDistrict(district);
				s.setState(state);
				s.setBranchName(branchName);
				s.setLoginID(loginID);
				s.setPassword(password);
				s.setMemberIncome(memberberIncome);
				s.setPinCode(pinCode);
				s.setAadharNo(aadharNo);
				s.setPan(pan);
				s.setVoterNo(voterNo);
				s.setPhoneno(phoneno);
				s.setEmailid(emailid);
				s.setOccupation(occupation);
				s.setEducation(education);
				s.setClientPurpose(clientPurpose);
				s.setPassportNumber(passportNumber);
				s.setCasteName(casteName);
				s.setReligionName(religionName);
				s.setCategoryName(categoryName);
				s.setRiskCategory(riskCategory);
				s.setNationality(nationality);
				s.setNomineeName(nomineeName);
				s.setnRelation(nRelation);
				s.setNomineeAddress(nomineeAddress);
				s.setNomineeKycNumber(nomineeKycNumber);
				s.setNomineeMobileNo(nomineeMobileNo);
				s.setNomineeAge(nomineeAge);
				s.setNomineePanNo(nomineePanNo);
				s.setNomineeKycType(nomineeKycType);
				s.setMemberJoiningFess(memberberJoiningFess);
				s.setShareAllotedfrm(shareAllotedfrm);
				s.setNoOfShared(noOfShared);
				s.setEnterShareAmount(enterShareAmount);
				s.setPaymode(paymode);
				s.setRemarks(remarks);
				s.setMemberStatusIsActive(memberberStatusIsActive);
				s.setChkmobile(chkmobile);
				s.setChknetBanking(chknetBanking);
				s.setChkisSms(chkisSms);
				s.setChkMinor(chkMinor);
				s.setFlag("1");
				clientMasterRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		} catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data Updated Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/clientDepulication")
	public String clientDepulication(Model model) {
		List<ClientMaster> options = clientMasterRepo.findAll();
		model.addAttribute("options", options);
		return "member/clientduplicate";
	}

	@GetMapping("/getDataOfShare")
	public String getDataOfShare(@RequestParam("ID") String id, Model model) {
		List<ShareTransferDto> data = shareTransferDtoRepo.findBymemberData(id);
		List<Loan> data2 = loanRepo.findBymemberData(id);
		List<ClientMaster> options = clientMasterRepo.findAll();

		model.addAttribute("options", options);
		model.addAttribute("data", data);
		model.addAttribute("data2", data2);

		return "member/clientduplicate";
	}

	@PostMapping("/addmappingClientAndModules")
	public ResponseEntity<String> addUpdateClient(@RequestParam(name = "id2", required = false) String id2,
			@RequestParam(name = "memberName2", required = false) String memberName2,
			@RequestParam(name = "table2input1", required = false) String shareID,
			@RequestParam(name = "table2input2", required = false) String shareHolding,
			@RequestParam(name = "table2input3", required = false) String shareValues,
			@RequestParam(name = "table2input11", required = false) String loanID,
			@RequestParam(name = "table2input12", required = false) String loanHolding,
			@RequestParam(name = "table2input13", required = false) String loanValues) {
		try {
			MappingClientAndModules mcam = new MappingClientAndModules();

			mcam.setClientid(id2);
			mcam.setClientName(memberName2);
			mcam.setShareID(shareID);
			mcam.setShareHolding(shareHolding);
			mcam.setShareValues(shareValues);
			mcam.setLoanID(loanID);
			mcam.setLoanHolding(loanHolding);
			mcam.setLoanValues(loanValues);
			mappingClientAndModulesRepo.save(mcam);
			return new ResponseEntity<>("Data Saved  successfully!!!!", HttpStatus.OK);
		} catch (Exception ex) {
			System.out.println(ex);
			return new ResponseEntity<>("Data Saved Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// Client Report Module
	@GetMapping("/fetchDropdownMemerReportClient")
	@ResponseBody
	public List<ClientMaster> fetchDropdownMemerReportClient() {
		List<ClientMaster> client3 = clientMasterRepo.findAll();
		return client3;
	}

	@GetMapping("/getCasteDetailsfordropdown")
	@ResponseBody
	public List<CasteMaster> getAllcastefordropdown(Model model) {
		return casteMasterRepo.findAll();
	}

	// get data in dropdown of share allotated from
	@GetMapping("/getDropDownShareAllotedFrom")
	@ResponseBody
	public List<ShareAllocationMaster> getDropDownShareAllotedFrom() {
		return shareAllocationMasterRepo.findAll();
	}

	@PostMapping("/memberReportSearch1233")
	@ResponseBody
	public List<ClientMaster> getClientReportSearch(@RequestBody ClientMaster clientMaster) {
		List<ClientMaster> branchName = clientMasterRepo.findBybranchName(clientMaster.getBranchName());
		List<ClientMaster> date = clientMasterRepo.findByregistrationDateBetween(clientMaster.getfDate(),
				clientMaster.gettDate());
		if (!branchName.isEmpty()) {
			return branchName;
		} else
			return date;
	}

	// Branch Dropdown Data of Search Client
	@GetMapping("/getAllBranchDataInDropDown")
	@ResponseBody
	public List<ClientMaster> getAllBranchDataInDropDown() {
		List<ClientMaster> list = clientMasterRepo.findAll();
		return list;
	}

	// Search Client of client module
	@PostMapping("/searchInTheMemeberSection")
	@ResponseBody
	public List<ClientMaster> searchInTheMemeberSection(@RequestBody ClientMaster clientMaster) {
		List<ClientMaster> data1 = clientMasterRepo.findBybranchName(clientMaster.getBranchName());
		List<ClientMaster> data2 = clientMasterRepo.findByregistrationDateBetween(clientMaster.getfDate(),
				clientMaster.gettDate());
		List<ClientMaster> data3 = clientMasterRepo.findBymemberName(clientMaster.getMemberName());
		List<ClientMaster> data4 = clientMasterRepo.findByintroMCode(clientMaster.getIntroMCode());
		List<ClientMaster> data5 = clientMasterRepo.findByphoneno(clientMaster.getPhoneno());
		List<ClientMaster> data6 = clientMasterRepo.findByaadharNo(clientMaster.getAadharNo());
		List<ClientMaster> data7 = clientMasterRepo.findBypan(clientMaster.getPan());

		if (!data1.isEmpty()) {
			return data1;
		} else if (!data2.isEmpty()) {
			return data2;
		} else if (!data3.isEmpty()) {
			return data3;
		} else if (!data4.isEmpty()) {
			return data4;
		} else if (!data5.isEmpty()) {
			return data5;
		} else if (!data6.isEmpty()) {
			return data6;
		}
		return data7;
	}
}
