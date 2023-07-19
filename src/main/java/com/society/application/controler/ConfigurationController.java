package com.society.application.controler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.*;
import com.society.application.repository.*;

import com.society.application.service.*;

@Controller
public class ConfigurationController {

	@Autowired
	FileUploadDirectoryRepo fileUploadDirectoryRepo;

	@Autowired
	DepositeAccountMasterRepo depositeAccountMasterRepo;

	@Autowired
	CompanyMasterRepo companyMasterRepo;

	@Autowired
	FYMasterRepo fYMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;

	@Autowired
	DirectorMasterRepo directorMasterRepo;

	@Autowired
	UserMasterRepo userMasterRepo;

	@Autowired
	UserToServiceMapRepo userToServiceMapRepo;

	@Autowired
	ModuleListRepo moduleListRepo;

	@Autowired
	SubmoduleRepo submoduleRepo;

	@Autowired
	RelativeRelationMasterRepo relationMasterRepo;

	@Autowired
	CasteMasterRepo casteMasterRepo;

	@Autowired
	CategoryMasterRepo categoryMasterRepo;

	@Autowired
	FileStorageService fileStorageService;
	// FileStorageService fileStorageService;

	@GetMapping("/CompanyDetails")
	public String getAllLoanId(Model model, HttpSession session) {
		String ID = session.getAttribute("ID").toString();

		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);
		model.addAttribute("Logo", comMaster.getLogo());
		model.addAttribute("Signature", comMaster.getSignature());

		return "configuration/CompanyDetails";
	}

	@GetMapping("/getConmapnyDetails")
	@ResponseBody
	public CompanyMaster getConmapnyDetails(@ModelAttribute("user") UserMaster login, Model model,
			HttpSession session) {
		// System.out.println(user.getCompanyName());
		// session.setAttribute("usercompanyname", login.getCompanyName());
		// String group=""+session. getAttribute("group");

		String ID = session.getAttribute("ID").toString();
		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);

		String encodedLogo = Base64.getEncoder().encodeToString(comMaster.getLogo());
		String encodedLogo2 = Base64.getEncoder().encodeToString(comMaster.getSignature());

		comMaster.setFrontEndPhoto(encodedLogo);
		comMaster.setFrontEndSignature(encodedLogo2);

		if (comMaster != null) {

			return comMaster;
		} else {
			CompanyMaster comMas = new CompanyMaster();

			comMas.setAddress("");
			comMas.setAuthorizedcapital("");
			comMas.setCin("");
			comMas.setCompanyName("");
			comMas.setDoj("");
			comMas.setEmail("");
			comMas.setGst("");
			comMas.setLandLine("");
			comMas.setMobile("");
			comMas.setPaidup("");
			comMas.setPan("");
			comMas.setPinCode("");
			comMas.setShareValue("");
			comMas.setShortName("");
			comMas.setState("");
			comMas.setTan("");
			comMas.setTax("");
			comMas.setTaxSr("");
			comMas.settDSWithoutPAN("");
			comMas.settDSWithPAN("");
			// comMas.setLogo("");
			// comMas.setSignature("");
			return null;
		}
	}

	@PostMapping("/updateCompanyDetails")
	@ResponseBody
	public ResponseEntity<String> updateCompanyDetails(
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file23,
			@RequestParam("companyName") String companyName, @RequestParam("shortName") String shortName,
			@RequestParam("doj") String doj, @RequestParam("cin") String cin, @RequestParam("pan") String pan,
			@RequestParam("tan") String tan, @RequestParam("gst") String gst,
			@RequestParam("shareValue") String shareValue, @RequestParam("address") String address,
			@RequestParam("state") String state, @RequestParam("pinCode") String pinCode,
			@RequestParam("email") String email, @RequestParam("authorizedcapital") String authorizedcapital,
			@RequestParam("paidup") String paidup, @RequestParam("landLine") String landLine,
			@RequestParam("mobile") String mobile, @RequestParam("tDSWithPAN") String tDSWithPAN,
			@RequestParam("tDSWithoutPAN") String tDSWithoutPAN, @RequestParam("tax") String tax,
			@RequestParam("taxSr") String taxSr, HttpSession session
	) {
		String ID = session.getAttribute("ID").toString();
		int id = Integer.parseInt(ID);

		CompanyMaster comMaster = companyMasterRepo.findByiDcompany(ID);
		UserMaster um = userMasterRepo.findByid(id);

		// System.out.println(!(file1==null));
		// System.out.println(!(file23==null));

		if (!(file1 == null) && !(file23 == null)) {
			try {
				byte[] image1 = file1.getBytes();
				comMaster.setLogo(image1);

				byte[] image2 = file23.getBytes();
				comMaster.setSignature(image2);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		comMaster.setCompanyName(companyName);
		comMaster.setShortName(shortName);
		comMaster.setDoj(doj);
		comMaster.setCin(cin);
		comMaster.setPan(pan);
		comMaster.setTan(tan);
		comMaster.setGst(gst);
		comMaster.setShareValue(shareValue);
		comMaster.setAddress(address);
		comMaster.setState(state);
		comMaster.setPinCode(pinCode);
		comMaster.setEmail(email);
		comMaster.setAuthorizedcapital(authorizedcapital);
		comMaster.setPaidup(paidup);
		comMaster.setLandLine(landLine);
		comMaster.setMobile(mobile);
		comMaster.settDSWithPAN(tDSWithPAN);
		comMaster.settDSWithoutPAN(tDSWithoutPAN);
		comMaster.setTax(tax);
		comMaster.setTaxSr(taxSr);

		um.setCompanyName(companyName);
		um.setShortName(shortName);

		userMasterRepo.save(um);
		companyMasterRepo.save(comMaster);

		return new ResponseEntity<>("DATA UPDATED SUCCESSFULLY...!!!", HttpStatus.OK);
	}

	@GetMapping("/FYMater")
	public String FYMater(Model model) {
		return "configuration/AddFinancialMaster";
	}

	@GetMapping("/getAllFYDetails")
	@ResponseBody
	public List<FYMaster> getAllFYDetails(Model model) {
		return fYMasterRepo.findAll();
	}

	@GetMapping("/getRelativeDetails")
	@ResponseBody
	public List<RelativeRelationMaster> gettAllRelations(Model model) {
		return relationMasterRepo.findAll();
	}

	@GetMapping("/getCasteDetails")
	@ResponseBody
	public List<CasteMaster> getAllcaste(Model model) {
		return casteMasterRepo.findAll();
	}

	@PostMapping("/updateFYDetails")
	public String updateFYDetails(@ModelAttribute("updateFYDetails") FYMaster fyMaster, Model model) {
		fYMasterRepo.save(fyMaster);
		return "configuration/AddFinancialMaster";
	}

	@PostMapping("/SaveRelation")
	public String saveRelativerelation(@ModelAttribute("Relationrelative") RelativeRelationMaster relationMaster,
			Model model) {
		relationMasterRepo.save(relationMaster);
		return "configuration/RelativeMaster";
	}

	@PostMapping("/SaveCaste")
	public String saveCasteMaster(@ModelAttribute("CasteModel") CasteMaster casteMaster, Model model) {
		casteMasterRepo.save(casteMaster);
		return "configuration/CasteMaster";
	}

	@PostMapping("/SaveCategory")
	public String saveCategoryMaster(@ModelAttribute("CategoryModel") CategoryMaster categoryMaster, Model model) {
		categoryMasterRepo.save(categoryMaster);
		return "configuration/CategoryMaster";
	}
	
	// In Configuration BranchMaster SubModule
	@GetMapping("/branchMaster")
	public String branch(Model model) {
		return "configuration/Branch";
	}

	@GetMapping("getDataByidBranchMaster")
	public String getDataByidBranchMaster(@RequestParam String id, Model model) {
		List<BranchMaster> list = branchMasterRepo.findByid(Integer.parseInt(id));
		model.addAttribute("list", list);
		return "configuration/BranchFieldsShown";
	}

	@GetMapping("/getAllBranchMaster")
	@ResponseBody
	public List<BranchMaster> getAllBranchMaster(Model model) {
		return branchMasterRepo.findAll(Sort.by(Sort.Direction.DESC, "id"));
	}

	@PostMapping("/saveAllBranchMaster")
	@ResponseBody
	public String saveBranchMaster(@RequestBody BranchMaster branchMaster) {
		branchMasterRepo.save(branchMaster);
		return "configuration/Branch";
	}

	@PostMapping("/updateBranchMasterById")
	@ResponseBody
	public String updateBranchMasterById(@RequestBody BranchMaster branchMaster) {
		BranchMaster branchObj = branchMasterRepo.getById(branchMaster.getId());
		if (branchObj != null) {
			branchMasterRepo.save(branchMaster);
		}
		return "configuration/BranchFieldsShown";
	}

	@GetMapping("/AddBankAccount")
	public String AddBankAccount(Model model) {
		return "configuration/AddBankAccount";
	}

	@GetMapping("/getAllBankAccount")
	@ResponseBody
	public List<BankMaster> getAllBankAccount(Model model) {
		return bankMasterRepo.findAll();
	}

	@PostMapping("/saveBankAccount")
	public String saveBankAccount(@ModelAttribute("saveBankAccount") BankMaster bankMaster, Model model) {
		bankMasterRepo.save(bankMaster);
		return "configuration/AddBankAccount";
	}

	@GetMapping("/CodeSetting")
	public String CodeSetting(Model model) {
		return "configuration/CodeSetting";
	}

	@GetMapping("/getDeposistAC")
	@ResponseBody
	public List<DepositeAccountMaster> getDepositeAccountNo(Model model) {
		return depositeAccountMasterRepo.findAll();
	}

	@GetMapping("/getCategoryDetails")
	@ResponseBody
	public List<CategoryMaster> getCategoryMasters(Model model) {
		return categoryMasterRepo.findAll();
	}

	@GetMapping("/DirectorDetail")
	public String DirectorDetail(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("loggedInUserName");
		String module = "Director";
		String type = "logo";
		String type2 = "signature";
		FileUploadDirectory logo = fileUploadDirectoryRepo.getIamges(module, type, userId);
		if (logo != null) {
			String encodedLogo = Base64.getEncoder().encodeToString(logo.getContent());
			model.addAttribute("directorLogo", encodedLogo);
		}
		FileUploadDirectory signature = fileUploadDirectoryRepo.getIamges(module, type2, userId);
		if (signature != null) {
			String encodedSignature = Base64.getEncoder().encodeToString(signature.getContent());
			model.addAttribute("directorSignature", encodedSignature);
		}
		return "configuration/DirectorDetail";
	}

	@PostMapping("/api/upload")
	public ResponseEntity<String> uploadLogoAndSignature(@RequestParam("module") String module,
			@RequestParam("type") String type, @RequestParam("file") MultipartFile file, HttpSession session) {
		try {
			String userId = (String) session.getAttribute("loggedInUserName");
			byte[] content = file.getBytes();
			System.out.println(content);
			FileUploadDirectory fileEntity = new FileUploadDirectory();
			fileEntity.setName(file.getOriginalFilename());
			fileEntity.setContent(content);
			fileEntity.setUserId(userId);
			fileEntity.setModule(module);
			fileEntity.setType(type);
			fileUploadDirectoryRepo.save(fileEntity);
			return new ResponseEntity<>("File uploaded successfully", HttpStatus.OK);
		} catch (Exception ex) {
			return new ResponseEntity<>("Failed to upload file", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/deleterow")
	public String getdeleterow(@RequestParam String id) {
		int ID = Integer.parseInt(id);
		directorMasterRepo.deleteById(ID);
		return "configuration/DirectorDetail";
	}

	@GetMapping("/deleterowcategory")
	public String getdeleterowCategory(@RequestParam String id) {
		int ID = Integer.parseInt(id);
		categoryMasterRepo.deleteById(ID);
		return "configuration/CategoryMaster";
	}

	@GetMapping("/deleterowcaste")
	public String getdeleterowCaste(@RequestParam String id) {
		int ID = Integer.parseInt(id);
		casteMasterRepo.deleteById(ID);
		return "configuration/CasteMaster";
	}

	@GetMapping("/deleterowrelative")
	public String getdeleterowrelative(@RequestParam String id) {
		int ID = Integer.parseInt(id);
		relationMasterRepo.deleteById(ID);
		return "configuration/CasteMaster";
	}

	@GetMapping("/getAllDirectorMaster")
	@ResponseBody
	public List<DirectorMaster> getAllDirectorMaster(Model model) {
		return directorMasterRepo.findAll();
	}

	@PostMapping("/saveDirectorMaster")
	@ResponseBody
	public int saveDirectorMaster(@RequestParam(value = "filetag", required = false) MultipartFile file,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam("type") String type, @RequestParam("branchName") String branchName,
			@RequestParam("prefix") String prefix, @RequestParam("directorName") String directorName,
			@RequestParam("dateOfBirth") String dateOfBirth, @RequestParam("dinNoPromoterNo") String dinNoPromoterNo,
			@RequestParam("appointmentDate") String appointmentDate, @RequestParam("relativeName") String relativeName,
			@RequestParam("address") String address, @RequestParam("district") String district,
			@RequestParam("state") String state, @RequestParam("pin") String pin,
			@RequestParam("aadharno") String aadharno, @RequestParam("panNo") String panNo,
			@RequestParam("mobileNo") String mobileNo, @RequestParam("emailId") String emailId,
			@RequestParam("shareNominalValue") String shareNominalValue,
			@RequestParam("shareAmount") String shareAmount, @RequestParam("noOfShare") String noOfShare,
			@RequestParam("paymode") String paymode, DirectorMaster dm) {

		String fileName = fileStorageService.storeFile(file);
		String fileName2 = fileStorageService.storeFile(file2);

		dm.setType(type);
		dm.setType(branchName);
		dm.setType(prefix);
		dm.setType(directorName);
		dm.setType(dateOfBirth);
		dm.setType(dinNoPromoterNo);
		dm.setType(appointmentDate);
		dm.setType(relativeName);
		dm.setType(address);
		dm.setType(district);
		dm.setType(state);
		dm.setType(pin);
		dm.setType(aadharno);
		dm.setType(panNo);
		dm.setType(mobileNo);
		dm.setType(emailId);
		dm.setType(shareNominalValue);
		dm.setType(shareAmount);
		dm.setType(noOfShare);
		dm.setType(paymode);
		dm.setPhoto(fileName);
		dm.setSignature(fileName2);

		directorMasterRepo.save(dm);
		return 1;
	}

	@GetMapping("/UserCreate")
	public String UserCreate(Model model) {
		return "configuration/UserCreate";
	}

	@GetMapping("/getAllUserMaster")
	@ResponseBody
	public List<UserMaster> getAllUserMaster(Model model) {
		return userMasterRepo.findAll();
	}

	@PostMapping("/userCreation")
	public String userCreation(@ModelAttribute("userCreation") UserMaster userMaster, Model model) {
		userMaster.setUserType("Admin");
		userMaster.setCompanyName("EQFI");
		userMasterRepo.save(userMaster);
		return "configuration/UserCreate";
	}

	@GetMapping("/UserMenuAccess")
	public String UserMenuAccess(Model model) {
		return "configuration/UserMenuAccess";
	}

	@PostMapping("/userToServiceMap")
	public String userToServiceMap(@ModelAttribute("userToServiceMap") UserToServiceMap userToServiceMap, Model model) {
		userToServiceMapRepo.save(userToServiceMap);
		return "configuration/UserMenuAccess";
	}

	@GetMapping("/getAllServiceMap")
	@ResponseBody
	public List<Submodule> getAllUserToServiceMap1(Model model) {
		List<Submodule> newList = new ArrayList<Submodule>();
		List<ModuleList> modList = moduleListRepo.findAll();
		List<Submodule> submodList = submoduleRepo.findAll();
		submodList.stream().forEach(p -> {
			modList.forEach(e -> {
				if (e.getId() == Integer.parseInt(p.getModule())) {
					Submodule subMod = new Submodule();
					subMod.setId(p.getId());
					subMod.setModule(e.getName());
					subMod.setName(p.getName());
					newList.add(subMod);
				}
			});
		});
		return newList;
	}

	@GetMapping("/UserActivityReport")
	public String UserActivityReport(Model model) {
		return "configuration/UserActivityReport";
	}

	@GetMapping("/callTheDepossiAccountNumber")
	@ResponseBody
	public List<BankMaster> callTheDepossitNumber(Model model) {
		List<BankMaster> data = bankMasterRepo.findAll();
		return data;
	}

	// Relative Master
	@GetMapping("/relativeMaster")
	public String ShowRelativeMAsterPage() {
		return "configuration/RelativeMaster";
	}

	@GetMapping("/casteMaster")
	public String showCasteRelation(Model model) {
		return "configuration/CasteMaster";
	}

	@GetMapping("/categoryMaster")
	public String CategoryMasterPage(Model model) {
		return "configuration/CategoryMaster";
	}
}
