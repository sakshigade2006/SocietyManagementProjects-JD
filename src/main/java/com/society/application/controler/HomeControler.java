package com.society.application.controler;

import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import java.util.Optional;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.society.application.model.AddInvestment;
import com.society.application.model.Advisor;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.CollectorPromotionDto;
import com.society.application.model.CompanyMaster;
import com.society.application.model.DailyDeposite;
import com.society.application.model.DepartmentMaster;
import com.society.application.model.DesignationMaster;
import com.society.application.model.DirectorMaster;
import com.society.application.model.Employee;
import com.society.application.model.FileUploadDirectory;
import com.society.application.model.FixedDeposit;
import com.society.application.model.GenericGetById;
import com.society.application.model.GoldLoanPlanMaster;
import com.society.application.model.KYCMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.Login;
import com.society.application.model.MISDeposit;
import com.society.application.model.MartialStatus;
import com.society.application.model.Member;
import com.society.application.model.PaymentMaster;
import com.society.application.model.Position;
import com.society.application.model.RecurringDeposit;
import com.society.application.model.RelativeRelationMaster;
import com.society.application.model.ReportData;
import com.society.application.model.ReportDataAdvisor;
import com.society.application.model.ShareAllocationMaster;
import com.society.application.model.ShareTransferDto;
import com.society.application.model.StateMaster;
import com.society.application.model.TodaysRateMaster;
import com.society.application.model.UserMaster;
import com.society.application.model.UserToServiceMap;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.AdvisorRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.CompanyMasterRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.DepartmentMasterRepo;
import com.society.application.repository.DesignationMasterRepo;
import com.society.application.repository.DirectorMasterRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.FileUploadDirectoryRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.GoldLoanPlanRepo;
import com.society.application.repository.KYCMasterRepo;
import com.society.application.repository.LoanPlanRepo;
import com.society.application.repository.LoginRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.MartialStatusRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.PaymentMasterRepo;
import com.society.application.repository.PositionRepo;
import com.society.application.repository.RecurringDepositRepo;
import com.society.application.repository.RelativeRelationMasterRepo;
import com.society.application.repository.ShareAllocationMasterRepo;
import com.society.application.repository.ShareTransferDtoRepo;
import com.society.application.repository.StateMasterRepo;
import com.society.application.repository.TodaysRateMasterRepo;
import com.society.application.repository.UserMasterRepo;
import com.society.application.repository.UserToServiceMapRepo;
import com.society.application.service.FileStorageService;

import ch.qos.logback.core.rolling.helper.IntegerTokenConverter;

@Controller
public class HomeControler {

	@Autowired
	FileUploadDirectoryRepo fileUploadDirectoryRepo;

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	LoanPlanRepo loanPlanMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	StateMasterRepo stateMasterRepo;

	@Autowired
	UserToServiceMapRepo userToServiceMapRepo;

	@Autowired
	MartialStatusRepo martialStatusRepo;

	@Autowired
	RelativeRelationMasterRepo relativeRelationMasterRepo;

	@Autowired
	ShareAllocationMasterRepo shareAllocationMasterRepo;

	@Autowired
	PaymentMasterRepo paymentMasterRepo;

	@Autowired
	KYCMasterRepo kycMasterRepo;

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	@Autowired
	PositionRepo positionRepo;

	@Autowired
	AdvisorRepo advisorRepo;

	@Autowired
	EmployeeRepo employeeRepo;

	@Autowired
	DesignationMasterRepo designationMasterRepo;

	@Autowired
	DepartmentMasterRepo departmentMasterRepo;

	@Autowired
	LoginRepo loginRepo;

	@Autowired
	UserMasterRepo userMasterRepo;

	@Autowired
	DailyDepositeRepo dailyDepositeRepo;

	@Autowired
	RecurringDepositRepo recurringDepositRepo;

	@Autowired
	FixedDepositRepo fixedDepositRepo;

	@Autowired
	MISDepositRepo mISDepositRepo;

	@Autowired
	GoldLoanPlanRepo goldLoanPlanRepo;

	@Autowired
	TodaysRateMasterRepo todaysRateMasterRepo;

	@Autowired
	ShareTransferDtoRepo shareTransferDtoRepo;

	@Autowired
	CompanyMasterRepo companyMasterRepo;

	@Autowired
	ClientMasterRepo clientMasterRepo;
	
	@Autowired
	private FileStorageService fileStorageService;

	@Autowired
	DirectorMasterRepo directorMasterRepo;

	@GetMapping("/fetchinsharecertificate")
	@ResponseBody
	List<ClientMaster> fetchinsharecertificate() {
		return clientMasterRepo.findAll();
	}

	@GetMapping("/fetchsharecerificatebyID")
	@ResponseBody
	List<ClientMaster> fetchingClientshare(HttpServletRequest request) {
		String id = request.getParameter("id");
		int i = Integer.parseInt(id);
		List<ClientMaster> certi = clientMasterRepo.findByid(i);
		return certi;
	}

	@GetMapping("/addClientEditPage")
	public String addClientEditPage() {
		return "member/AddMemberEdit";
	}

	@GetMapping("/addAdvisor")
	public String addAdvisor(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "advisor/addAdvisor";
	}

	@GetMapping("/FetcHPositiondataforemployee")
	@ResponseBody
	public List<Employee> FetchDetailsforTable(HttpServletRequest hp) {
		String ids = hp.getParameter("id");
		int i = Integer.parseInt(ids);
		List<Employee> data2 = employeeRepo.findByid(i);
		return data2;
	}

	@GetMapping("/LoanCalculator")
	public String LoanCalculator() {
		return "Loan_Section/LoanCalculator";
	}

	/* MEMBER SECTION - ADD MEMBER */

	@GetMapping("/addMember")
	public String addMember(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("loggedInUserName");
		String module = "addMember";
		String type = "aadharPhoto";
		FileUploadDirectory aadharPhoto = fileUploadDirectoryRepo.getIamges(module, type, userId);
		if (aadharPhoto != null) {
			String encodedLogo = Base64.getEncoder().encodeToString(aadharPhoto.getContent());
			model.addAttribute("aadharPhoto", encodedLogo);
		}
		int count = memberRepo.countOfClient();
		model.addAttribute("count", count + 1);
		return "member/AddMember";
	}

	@GetMapping("/addMemberTable")
	@ResponseBody
	public List<Member> getaddMemberTable(HttpServletRequest request) {
		try {
			List<Member> list = memberRepo.findAll();
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@GetMapping("/addMemberEdit")
	public List<Member> addMemberEdit(@RequestParam Member member, Model model, HttpSession session) {
//		String userId = (String)session.getAttribute("loggedInUserName");
//		String module = "addMember";
//		String type = "aadharPhoto";
//		FileUploadDirectory aadharPhoto = fileUploadDirectoryRepo.getIamges(module, type, userId);
//		if(aadharPhoto!=null) {
//			String encodedLogo = Base64.getEncoder().encodeToString(aadharPhoto.getContent());
//			model.addAttribute("aadharPhoto", encodedLogo);
//		}
		List<Member> list = memberRepo.findByid(member.getId());
		model.addAttribute("list", list);
		// return "member/AddMemberEdit";
		return list;
	}

	@PostMapping("/updateAddMember")
	@ResponseBody
	public String getupdateMember(@RequestBody Member mem) {
		int i = memberRepo.updateThroughid(mem.getVerifyWithAadhar(), mem.getRegistrationDate(),
				mem.getMemberNamePrefix(), mem.getMemberName(), mem.getRelativeName(), mem.getRelativeRelation(),
				mem.getGender(), mem.getDob(), mem.getAge(), mem.getMaritalStatus(), mem.getAddress(),
				mem.getDistrict(), mem.getState(), mem.getBranchName(), mem.getPinCode(), mem.getAadharNo(),
				mem.getPan(), mem.getVoterNo(), mem.getPhoneno(), mem.getEmailid(), mem.getOccupation(),
				mem.getEducation(), mem.getIntroMCode(), mem.getIntroMName(), mem.getNomineeName(), mem.getnRelation(),
				mem.getNomineeAddress(), mem.getNomineeKycNumber(), mem.getNomineeMobileNo(), mem.getNomineeAge(),
				mem.getNomineePanNo(), mem.getNomineeKycType(), mem.getMemberJoiningFess(), mem.getShareAllotedfrm(),
				mem.getNoOfShared(), mem.getEnterShareAmount(), mem.getPaymode(), mem.getRemarks(), mem.getId());

		/*
		 * int i = memberrepo.updateThroughid("1", "2", "3", "4", "5", "6", "7", "8",
		 * "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21",
		 * "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34",
		 * "35", "36", "37", "38", 820);
		 */

		return null;
	}

	@GetMapping("/RelativeRelation")
	@ResponseBody
	public List<RelativeRelationMaster> RelativeRelation() {
		List<RelativeRelationMaster> List = relativeRelationMasterRepo.findAll();
		return List;
	}

	@GetMapping("/")
	public String login(Model model) {
		model.addAttribute("msg", "");
		return "index";
	}

	@GetMapping("/advisorDownLine")
	public String advisorDownLine() {
		return "advisor/advisorDownLine";
	}

	@GetMapping("/collectorPromotion")
	public String collectorPromotion() {
		return "advisor/collectorPromotion";
	}

	@GetMapping("/idCardPrinting")
	public String idCardPrinting() {
		return "advisor/idCardPrinting";
	}

	@GetMapping("/advisorSearch")
	public String advisorSearch() {
		return "advisor/advisorSearch";
	}

	@GetMapping("/logout")
	public String logout() {
		return "index";
	}

	@GetMapping("/getAlldd")
	@ResponseBody
	public List<DailyDeposite> getAlldd() {
		return dailyDepositeRepo.findAll();
	}

	@GetMapping("/getAllrd")
	@ResponseBody
	public List<RecurringDeposit> getAllrd() {
		return recurringDepositRepo.findAll();
	}

	@GetMapping("/getAllfd")
	@ResponseBody
	public List<FixedDeposit> getAllfd() {
		return fixedDepositRepo.findAll();
	}

	@GetMapping("/getAllmis")
	@ResponseBody
	public List<MISDeposit> getAllmis() {
		return mISDepositRepo.findAll();
	}

	@GetMapping("/getAllMember")
	@ResponseBody
	public List<ClientMaster> getAllMember() {
		List<ClientMaster> listMember = clientMasterRepo.findAll();
//		for (Member member : listMember) {
//			if (member.getBranchName() != null) {
//				Optional<BranchMaster> branchMaster = branchMasterRepo
//						.findById(Integer.parseInt(member.getBranchName()));
//				if (branchMaster.get() != null) {
//					member.setBranchName(branchMaster.get().getName());
//				}
//			}
//		}
		return listMember;
	}

	@PostMapping("/loginValidate")
	public String loginValidate(@ModelAttribute("user") UserMaster login, Model model, HttpSession session) {
	    if (login.getUserId() != null && login.getPassword() != null) {
	        UserMaster loginData = userMasterRepo.fetchMatchedData(login.getUserId(), login.getPassword());
	        if (loginData != null) {
	            SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy hh:mm a");
	            String formattedDate = formatter.format(new Date());
	            loginData.setLastLoginDate(formattedDate);
	            userMasterRepo.save(loginData);
	            List<UserToServiceMap> userMap = userToServiceMapRepo.getDataByuserId(login.getUserId());
	            List<String> myList = new ArrayList<String>();
	            for (UserToServiceMap usr : userMap) {
	                String service = usr.getService();
	                if (service != null) {
	                    String[] str = service.split(",");
	                    if (str != null) {
	                        for (int i = 0; i < str.length; i++) {
	                            myList.add(str[i]);
	                        }
	                    }
	                }
	            }

	            // List<CompanyMaster> CompMasters=
	            // companyMasterRepo.findBycompanyName(loginData.getCompanyName());
	            session.setAttribute(formattedDate, session);
	            session.setAttribute("user", myList);
	            session.setAttribute("loggedInUserName", loginData.getUserId());
	            session.setAttribute("loggedInUserType", loginData.getUserType());
	            session.setAttribute("loggedInBranchName", loginData.getBranchName());
	            session.setAttribute("userLastLogin", loginData.getLastLoginDate());
	            session.setAttribute("userCompanyName", loginData.getCompanyName());
	            session.setAttribute("userShortName", loginData.getShortName());
	            session.setAttribute("ID", loginData.getId());
	            return "dashboard/home";
	        } else {
	            model.addAttribute("msg", "Invalid username or password");
	            return "index";
	        }
	    }
	    return "index";
	}

	@PostMapping("/getAdvisor")
	@ResponseBody
	public List<AdvisorCollectorDetails> getAdvisor(@RequestBody AdvisorCollectorDetails acd) {
		int id = Integer.parseInt(acd.getMemberName());
		List<AdvisorCollectorDetails> listAdvisorCollectorDetails = advisorCollectorDetailsRepo.findByid(id);
		return listAdvisorCollectorDetails;
	}
	
	@PostMapping("/advisorDownline")
	@ResponseBody
	public List<AdvisorCollectorDetails> getAdvisorDownline(@RequestBody AdvisorCollectorDetails advisor) {
		List<AdvisorCollectorDetails> list = advisorCollectorDetailsRepo.findAllById(advisor.getId());
		return list;
	}
	
	@PostMapping("/advisorDownlineTable")
	@ResponseBody
	public List<AdvisorCollectorDetails> getAdvisorDownlineTable(@RequestBody AdvisorCollectorDetails advisor) {
	    List<AdvisorCollectorDetails> list = advisorCollectorDetailsRepo.findAllById(advisor.getId());
	    return list;
	}

	@GetMapping("/getAllBranch")
	@ResponseBody
	public List<BranchMaster> getAllBranch() {
		return branchMasterRepo.findAll();
	}

	@GetMapping("/getAllPosition")
	@ResponseBody
	public List<Position> getAllPosition() {
		return positionRepo.findAll();
	}

	@GetMapping("/getAllState")
	@ResponseBody
	public List<StateMaster> getAllState() {
		return stateMasterRepo.findAll();
	}

	@GetMapping("/getAllMartial")
	@ResponseBody
	public List<MartialStatus> getAllMartial() {
		return martialStatusRepo.findAll();
	}

	@GetMapping("/getAllRelativeRelationl")
	@ResponseBody
	public List<RelativeRelationMaster> getAllRelativeRelationl() {
		return relativeRelationMasterRepo.findAll();
	}

	@GetMapping("/getAllShareAllocation")
	@ResponseBody
	public List<ShareAllocationMaster> getAllShareAllocation() {
		return shareAllocationMasterRepo.findAll();
	}

	@GetMapping("/getAllPaymentMaster")
	@ResponseBody
	public List<PaymentMaster> getAllPaymentMaster() {
		return paymentMasterRepo.findAll();
	}

	@GetMapping("/getAllKYC")
	@ResponseBody
	public List<KYCMaster> getAllKYC() {
		return kycMasterRepo.findAll();
	}

	@GetMapping("/getAllAdvisor")
	@ResponseBody
	public List<AdvisorCollectorDetails> getAllAdvisor() {
		return advisorCollectorDetailsRepo.findAll();
	}

	@GetMapping("/addMemberKyc")
	public String addMemberKyc(Model model) {
		//List<Member> allMember = memberRepo.findAll();
		List<ClientMaster> allMember = clientMasterRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "member/AddMemberKYC";
	}

	@GetMapping("/memberAllDetails")
	public String memberAllDetails(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("loggedInUserName");
		String module = "addMember";
		String type = "aadharPhoto";
		FileUploadDirectory aadharPhoto = fileUploadDirectoryRepo.getIamges(module, type, userId);
		if (aadharPhoto != null) {
			String encodedLogo = Base64.getEncoder().encodeToString(aadharPhoto.getContent());
			model.addAttribute("aadharPhoto", encodedLogo);
		}
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "member/MemberAllDetails";
	}

	@GetMapping("/fetchDropdownMemerSummary")
	@ResponseBody
	public List<Member> fetchDropdownMemerSummary() {
		List<Member> allMember = memberRepo.findAll();
		return allMember;
	}

	/* MEMBER SECTION - MEMBER REPORT */

	@GetMapping("/memberDetailRptt")
	public String getmemberDetailRptt() {
		return "member/MemberDetailRpt";
	}

	@GetMapping("/fetchDropdownMemerReport")
	@ResponseBody
	public List<Member> fetchDropdownMemerReport() {
		List<Member> allMember = memberRepo.findAll();
		return allMember;
	}

	@GetMapping("/memberDetailRpt")
	public String memberDetailRpt(Model model) {
		List<Member> allMember = memberRepo.findAll();
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster.get().getName());
		}
		model.addAttribute("allMember", allMember);
		return "member/MemberDetailRpt";
	}

	@GetMapping("/searchMember")
	public String searchMember(Model model) {
//		List<Member> allMember = memberRepo.findAll();
//		for (Member member : allMember) {
//			Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
//			member.setBranchName(branchMaster.get().getName());
//		}
//		model.addAttribute("allMember", allMember);
		return "member/SearchMember";
	}

	@GetMapping("/shareIssue")
	public String shareIssue(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "memberShare/shareTransfer";
	}

	@GetMapping("/memberShareReport")
	public String memberShareReport(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "memberShare/memberShareReport";
	}

	@GetMapping("/fetchDropdownMemerShare")
	@ResponseBody
	public List<Member> fetchDropdownMemerShare() {
		List<Member> allMember = memberRepo.findAll();
		return allMember;
	}

	@PostMapping("/memberShareSearch")
	@ResponseBody
	public List<Member> getMemberShareSearch(@RequestBody Member mem) {
		List<Member> list1 = memberRepo.findBybranchName(mem.getBranchName());
		List<Member> list2 = memberRepo.findBytransferDateBetween(mem.getfDate(), mem.gettDate());
		if (!list1.isEmpty()) {
			return list1;
		} else
			return list2;
	}

	@GetMapping("/DNOGenerate")
	public String DNOGenerate() {
		return "memberShare/DNOGenerate";
	}

	@GetMapping("/unallotedShareReport")
	public String unallotedShareReport(Model model) {
		return "memberShare/unallotedShareReport";
	}

	@GetMapping("/shareCertificate")
	public String shareCertificate(Model model) {
		return "memberShare/shareCertificate";
	}

	@PostMapping("addMember")
	public String addMember(@ModelAttribute("user") Member member, Model model) {
		String status = "error";
		if (member.getRegistrationDate() != null && member.getMemberName() != null && !member.getMemberName().equals("")
				&& !member.getPinCode().equals("") && !member.getAadharNo().equals("")
				&& !member.getPhoneno().equals("") && !member.getOccupation().equals("")
				&& !member.getEducation().equals("")) {
			member.setStatus("Active");
			// BranchMaster branchMaster =
			// branchMasterRepo.findByname(member.getBranchName());
			// member.setBranchName(String.valueOf(branchMaster.getId()));
			StateMaster stateData = stateMasterRepo.findByname(member.getState());
			member.setState(String.valueOf(stateData.getId()));
			Member savedmember = memberRepo.save(member);
			if (savedmember != null) {
				status = "saved";
			}
			model.addAttribute("status", status);
		}
		return "member/AddMember";
	}

	/*
	 * @PostMapping("getMember")
	 * 
	 * @ResponseBody public Optional<Member> getAllMember(@RequestBody
	 * GenericGetById id) { Optional<Member> member =
	 * memberRepo.findById(Integer.parseInt(id.getId())); // Optional<BranchMaster>
	 * branchMaster =
	 * branchMasterRepo.findById(Integer.parseInt(member.get().getBranchName())); //
	 * member.get().setBranchName(branchMaster.get().getName()); //
	 * Optional<StateMaster> stateData =
	 * stateMasterRepo.findById(Integer.parseInt(member.get().getState())); //
	 * member.get().setState(stateData.get().getName()); // return member.get();
	 * return member; }
	 */
	
	@PostMapping("getMember")
	@ResponseBody
	public Optional<ClientMaster> getAllMember(@RequestBody GenericGetById id) {
		Optional<ClientMaster> member = clientMasterRepo.findById(Integer.parseInt(id.getId()));
//		Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.get().getBranchName()));
//		member.get().setBranchName(branchMaster.get().getName());
//		Optional<StateMaster> stateData = stateMasterRepo.findById(Integer.parseInt(member.get().getState()));
//		member.get().setState(stateData.get().getName());
//		return member.get();
		return member;
	}

	@PostMapping("getShareMemberData")
	@ResponseBody
	public List<Member> getShareMemberData(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		if (data.getBranchName() != null && !data.getBranchName().isEmpty()) {
			Optional<Member> member = memberRepo.findById(Integer.parseInt(data.getBranchName()));
			return allMember.stream().filter(p -> p.getId() == member.get().getId()).collect(Collectors.toList());
		}
		return new ArrayList<>();
	}

	@PostMapping("searchAdvisor")
	public String searchAdvisor(@ModelAttribute("user") ReportDataAdvisor data) {
		List<AdvisorCollectorDetails> allAdvisorCollectorDetails = advisorCollectorDetailsRepo.findAll();
		allAdvisorCollectorDetails.stream().filter(p -> p.getBranchName().equals(data.getBranchName()))
				.collect(Collectors.toList());
		return "advisor/advisorSearch";
	}

	@PostMapping("getMemberReport")
	@ResponseBody
	public List<Member> getMemberReport(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
		allMember = allMember.stream()
				.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
						&& dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
						&& dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate())))
				.collect(Collectors.toList());
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster2 = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster2.get().getName());
		}
		return allMember;
	}

	@PostMapping("getMemberShareReport")
	@ResponseBody
	public List<Member> getMemberShareReport(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		if (!data.getBranchName().equals("All")) {
			BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
			allMember = allMember.stream()
					.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
							&& dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
							&& dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate())))
					.collect(Collectors.toList());
			for (Member member : allMember) {
				Optional<BranchMaster> branchMaster2 = branchMasterRepo
						.findById(Integer.parseInt(member.getBranchName()));
				member.setBranchName(branchMaster2.get().getName());
			}
			return allMember;
		}
		return allMember;
	}

	@PostMapping("getSerachMember")
	@ResponseBody
	public List<Member> getSerachMember(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
		allMember = allMember.stream()
				.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
						|| dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
						|| dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate()))
						|| p.getMemberName().equalsIgnoreCase(data.getMemberName())
						|| p.getPhoneno().equals(data.getMobile()) || p.getAadharNo().equals(data.getAadharno())
						|| p.getPan().equals(data.getPan()))
				.collect(Collectors.toList());
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster2 = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster2.get().getName());
		}
		return allMember;
	}

	@GetMapping("updateMember")
	public String updateMember(@ModelAttribute("user") ClientMaster member, Model model, HttpSession session) {
		//Optional<Member> memberObj = memberRepo.findById(member.getId());
		Optional<ClientMaster> memberObj = clientMasterRepo.findById(member.getId());
		String createdBy = session.getAttribute("ID").toString();
		memberObj.get().setCreatedBy(createdBy);
		//System.out.println(createdBy);
		memberObj.get().setVoterNo(member.getVoterNo());
		memberObj.get().setRationNo(member.getRationNo());
		memberObj.get().setdLNo(member.getdLNo());
		memberObj.get().setBankName(member.getBankName());
		memberObj.get().setBankBranch(member.getBankBranch());
		memberObj.get().setAccountNo(member.getAccountNo());
		memberObj.get().setiFSC(member.getiFSC());
		clientMasterRepo.save(memberObj.get());
		session.setAttribute("createdBy", createdBy);
		model.addAttribute("status", "success");
		//List<Member> allMember = memberRepo.findAll();
		List<ClientMaster> allMember = clientMasterRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "member/AddMemberKYC";
	}

	@PostMapping("updateColectorPromotion")
	public String updateColectorPromotion(@ModelAttribute("user") CollectorPromotionDto collectorPromotionDto,
			Model model) {
		Optional<AdvisorCollectorDetails> advisorCollector = advisorCollectorDetailsRepo
				.findById(Integer.parseInt(collectorPromotionDto.getCollector()));
		advisorCollector.get().setBranchName(collectorPromotionDto.getBranchName());
		advisorCollector.get().setSelectPosition(collectorPromotionDto.getPosition());
		advisorCollector.get().setNewSenior(collectorPromotionDto.getNewSenior());
		advisorCollectorDetailsRepo.save(advisorCollector.get());
		return "advisor/collectorPromotion";
	}

	@GetMapping("/getAllShareTransferData")
	@ResponseBody
	public List<ClientMaster> getAllShareTransferData() {
		List<ClientMaster> list = clientMasterRepo.findAll();
		return list;
	}

	// Conversion HTml TO PDF
	@GetMapping("downloadCerificate")
	public String downloadCerificate(@RequestParam String id, Model model, HttpSession session) {
		List<ShareTransferDto> sharedtoObj = shareTransferDtoRepo.findByid(Integer.parseInt(id));
		String companyName = session.getAttribute("userShortName").toString();
		// System.out.println(companyName);
		List<CompanyMaster> comMaster = companyMasterRepo.findByshortName(companyName);
		model.addAttribute("comMaster", comMaster);
		model.addAttribute("sharedtoObj", sharedtoObj);
		return "sh1";
	}

	@PostMapping("getShareCertificate")
	@ResponseBody
	public List<ShareTransferDto> getShareCertificate(@RequestBody GenericGetById id) {
		List<Member> listMember = new ArrayList<Member>();
		Optional<Member> member = memberRepo.findById(Integer.parseInt(id.getId()));
		Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.get().getBranchName()));
		member.get().setBranchName(branchMaster.get().getName());
		List<ShareTransferDto> getListofShareTransfer = shareTransferDtoRepo
				.searchUsingName(member.get().getMemberName());
		// listMember.add(member.get());
		return getListofShareTransfer;
	}

	@PostMapping("saveAdvisor")
	public String saveAdvisor(@ModelAttribute("user") AdvisorCollectorDetails advisorCollectorDetails, Model model) {
		advisorCollectorDetailsRepo.save(advisorCollectorDetails);
		model.addAttribute("status", "success");
		return "advisor/addAdvisor";
	}

	/* INVESTMENT SECTION - NEW INVESTMENT */

	@PostMapping("/saveInvestment")
	public String saveInvestment(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		addInvestmentRepo.save(addInvestment);
		return "investmentSection/AddInvestment";
	}

	@PostMapping("/updateInvestment")
	public String updateInvestment(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		Optional<AddInvestment> allInvestment = addInvestmentRepo.findById(addInvestment.getId());
		if (addInvestment.getPaymode() != null && addInvestment.getAdvisorCode() != null
				&& addInvestment.getRemarks() != null) {
			allInvestment.get().setPaymode(addInvestment.getPaymode());
			allInvestment.get().setAdvisorCode(addInvestment.getAdvisorCode());
			allInvestment.get().setRemarks(addInvestment.getRemarks());
			addInvestmentRepo.save(allInvestment.get());
		}
		return "investmentSection/RDRenewal";
	}

	@PostMapping("/investmentSearch")
	public List<AddInvestment> investmentSearch(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		List<AddInvestment> allInvestment = addInvestmentRepo.findAll();
		allInvestment = allInvestment.stream().filter(p -> p.getCspname().equals(addInvestment.getCspname()))
				.collect(Collectors.toList());
		return allInvestment;
	}

	/* EMPLOYEE SECTION - ADD EMPLOYEE */

	@GetMapping("/addEmployee")
	public String addEmployee() {
		return "employee/AddEmployee";
	}

	@PostMapping("/addEmployee")
	public String addEmployee(@ModelAttribute("emp") Employee employee, Model model) {
		employeeRepo.save(employee);
		return "employee/AddEmployee";
	}

	@PostMapping("/saveEmployee")
	public String addEmployeee(@ModelAttribute("emp") Employee employee, Model model) {
		employeeRepo.save(employee);
		return "employee/AddEmployee";
	}

	/* */

	/* EMPLOYEE SECTION - ADD Designation */

	@GetMapping("/DesignationMaster")
	public String DesignationMaster() {
		return "employee/DesignationMaster";
	}

	@PostMapping("DesignationMasterSave")
	public String DesignationMaster(@ModelAttribute("designationMaster") DesignationMaster designationMaster,
	        Model model) {
	    if (designationMaster.getDesignation() != null && !designationMaster.getDesignation().isEmpty()) {
	        designationMasterRepo.save(designationMaster);
	    }
	    return "employee/DesignationMaster";
	}

	@GetMapping("/getAllDesignation123456")
	@ResponseBody
	public List<DesignationMaster> getAllDesignation(Model model) {
		List<DesignationMaster> getAllDesignation = designationMasterRepo.findAll();
		return getAllDesignation;
	}

	/* */

	/* EMPLOYEE SECTION - ADD DEPARTMENT */

	@GetMapping("/DepartmentMaster")
	public String DepartmentMaster() {
		return "employee/DepartmentMaster";
	}

	@PostMapping("/DepartmentMaster")
	public String departmentMaster(@ModelAttribute("departmentMaster") DepartmentMaster departmentMaster,
	                               BindingResult bindingResult, Model model) {
	    if (departmentMaster.getDepartment() == null || departmentMaster.getDepartment().isEmpty()) {
	        model.addAttribute("error", "Please enter a department name");
	        return "employee/DepartmentMaster";
	    }
	    departmentMasterRepo.save(departmentMaster);
	    return "employee/DepartmentMaster";
	}

	@GetMapping("/FindDepartment")
	@ResponseBody
	public List<DepartmentMaster> FindDepartment() {
		List<DepartmentMaster> alldepartment = departmentMasterRepo.findAll();
		return alldepartment;
	}

	@PostMapping("DepartmentMaster123")
	public String DepartmentMaster123(@ModelAttribute("departmentMaster") DepartmentMaster departmentMaster,
			Model model) {
		departmentMasterRepo.save(departmentMaster);
		return "employee/DepartmentMaster";
	}

	/* */

	/* EMPLOYEE SECTION - EMPLOYEE I-CARD */

	@GetMapping("/EmployeeIDCardPrinting")
	public String EmployeeIDCardPrinting() {
		return "employee/EmployeeIDCardPrinting";
	}

	@PostMapping("/employeeCode")
	@ResponseBody
	public List<Employee> employeeCode(HttpServletRequest request) {
		String id = request.getParameter("id");
		int EID = Integer.parseInt(id);
		List<Employee> list = employeeRepo.findByid(EID);
		return list;
	}

	/* */

	/* EMPLOYEE SECTION - SEARCH EMPLOYEE */

	@GetMapping("/SearchEmployee")
	public String SearchEmployee() {
		return "employee/SearchEmployee";
	}

	@GetMapping("/getEmployeeBranchName")
	@ResponseBody
	public List<Employee> getEmployeeBranchName() {
		List<Employee> allemployee = employeeRepo.findAll();
		return allemployee;
	}

	@PostMapping("/searchInTheEmployeeSection")
	@ResponseBody
	public List<Employee> searchInTheEmployeeSection(@RequestBody Employee emp) {
		List<Employee> data1 = employeeRepo.findBydojBetween(emp.getfDate(), emp.gettDate());
		List<Employee> data2 = employeeRepo.findByempName(emp.getEmpName());
		List<Employee> data3 = employeeRepo.findByempCode(emp.getEmpCode());
		List<Employee> data4 = employeeRepo.findByphoneNo(emp.getPhoneNo());
		List<Employee> data5 = employeeRepo.findBydesignation(emp.getDesignation());
		List<Employee> data6 = employeeRepo.findBydepartment(emp.getDepartment());
		List<Employee> data7 = employeeRepo.findBybranch(emp.getBranch());
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
		} else {
			return data7;
		}
	}

	/* */

	@GetMapping("/getaddEmployeeBranchName")
	@ResponseBody
	public List<BranchMaster> findBranch() {
		return branchMasterRepo.findAll();
	}

	private Date dateFormat(String dateToFormat) {
		DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
		String dateAsString = dateToFormat;
		Date date = null;
		try {
			date = sourceFormat.parse(dateAsString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	private Date dateFormatForFrontEnd(String dateToFormat) {
		DateFormat sourceFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateAsString = dateToFormat;
		Date date = null;
		try {
			date = sourceFormat.parse(dateAsString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	@GetMapping("/goldLoanPlan")
	public String goldLoanPlan() {
		return "Gold_Loan/Gold_LoanPlan";
	}

	@PostMapping("todaysRateMaster")
	public String todaysRateMaster(@ModelAttribute("todaysRateMaster") TodaysRateMaster todaysRateMaster, Model model) {
		todaysRateMasterRepo.save(todaysRateMaster);
		return "Gold_Loan/goldLoanMaster";
	}

	@PostMapping("goldLoanPlan")
	public String goldLoanPlan(@ModelAttribute("goldLoanPlan") GoldLoanPlanMaster goldLoanPlanMaster, Model model) {
		goldLoanPlanRepo.save(goldLoanPlanMaster);
		return "Gold_Loan/Gold_LoanPlan";
	}

	@PostMapping("getLoanDetails")
	@ResponseBody
	public LoanPlanMaster getLoanDetails(@RequestBody GenericGetById id) {
		Optional<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanPlanMaster.get();
	}

	@RequestMapping(value = "/id", method = RequestMethod.GET)
	public LoanPlanMaster getLoanAsPerId() {
		return null;
	}

	@GetMapping("/rDRenewal")
	public String rDRenewal() {
		return "investmentSection/RDRenewal";
	}

	@GetMapping("/renewalPassbook")
	public String renewalPassbook() {
		return "investmentSection/RenewalPassbook";
	}

	@GetMapping("/getDropDownBranch")
	@ResponseBody
	public List<Member> getDropDownBranch() {
		List<Member> allMember = memberRepo.findAll();
		return allMember;
	}

	@RequestMapping(value = "/ViewAddMember", method = RequestMethod.GET)
	public String redirect(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("loggedInUserName");
		String module = "addMember";
		String type = "aadharPhoto";
		FileUploadDirectory aadharPhoto = fileUploadDirectoryRepo.getIamges(module, type, userId);
		if (aadharPhoto != null) {
			String encodedLogo = Base64.getEncoder().encodeToString(aadharPhoto.getContent());
			model.addAttribute("aadharPhoto", encodedLogo);
		}
		return "member/AddMember";
	}

	@GetMapping("/getHomePage")
	public String getHomePage() {
		return "dashboard/home";
	}

	// nomineeRelation
	@GetMapping("/nomineeRelation")
	@ResponseBody
	public List<RelativeRelationMaster> nomineeRelation() {
		List<RelativeRelationMaster> List = relativeRelationMasterRepo.findAll();
		return List;
	}

	/* MEMBER SHARE - SHARE TRANSFER */

	@PostMapping("getShareTransferDataByID")
	@ResponseBody
	public List<ClientMaster> getShareTransferDataByID(@RequestBody ClientMaster clientmaster) {
		List<ClientMaster> data = clientMasterRepo.findByid(clientmaster.getId());
		return data;
	}

	@PostMapping("updateShareTransfer")
	@ResponseBody
	public ResponseEntity<String> updateShareTransfer(@RequestBody ShareTransferDto shareTransferDto, Model model) {
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		// System.out.println(String.format("%06d", number));
		int i = shareTransferDtoRepo.updateThroughID(shareTransferDto.getMemberName(), shareTransferDto.getDoj(),
				shareTransferDto.getPreviousShare(), shareTransferDto.getPreviousShareNo(),
				shareTransferDto.getFaceValue(), shareTransferDto.getBranchName(), shareTransferDto.getTransferDate(),
				shareTransferDto.getShareAllotedfrm2(), shareTransferDto.getSharebalance(),
				shareTransferDto.getTransferAmount(), shareTransferDto.getNoOfShare(), shareTransferDto.getPaymode(),
				shareTransferDto.getRemarks(), shareTransferDto.getId());
		return ResponseEntity.ok("Updated SucessFully");
	}

	/* MEMBER SHARE - DNO RE-GENERATE */

	@GetMapping("/FetchTheDataOfDirectorMaster")
	@ResponseBody
	public List<DirectorMaster> FetchTheDataOfDirectorMaster() {
		List<DirectorMaster> data = directorMasterRepo.findAll();
		return data;
	}

	@PostMapping("/FetchTheDataOfDirectorMasterINTheTable")
	@ResponseBody
	public List<DirectorMaster> FetchTheDataOfDirectorMasterINTheTable(@RequestBody DirectorMaster dm,
			HttpServletRequest request) {
//		String directorName = request.getParameter("MemberData");
		List<DirectorMaster> data = directorMasterRepo.findBydirectorName(dm.getDirectorName());
		return data;
	}

	@PostMapping("/updateShareTranfer")
	@ResponseBody
	public ResponseEntity<String> updateShareTranfer(@RequestBody ClientMaster member, Model model, HttpSession session) {
		String userId = session.getAttribute("ID").toString();
		member.setCreatedBy(userId);
		int i = clientMasterRepo.updateThroughID1(member.getMemberName(), member.getRegistrationDate(),
				member.getSharebalance(), member.getPreviousNoOfShared(), member.getBranchName(),
				member.getTransferDate(), member.getShareAllotedfrm(), member.getSharebalance(),
				member.getTransferAmount(), member.getNoOfShared(), member.getPaymode(), member.getRemarks(),
				member.getId(), userId);
		return ResponseEntity.ok("Updated SucessFully");
	}

}
