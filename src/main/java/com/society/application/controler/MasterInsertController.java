package com.society.application.controler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.society.application.model.BranchMaster;
import com.society.application.model.KYCMaster;
import com.society.application.model.MartialStatus;
import com.society.application.model.PaymentMaster;
import com.society.application.model.Position;
import com.society.application.model.RelativeRelationMaster;
import com.society.application.model.ShareAllocationMaster;
import com.society.application.model.StateMaster;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.KYCMasterRepo;
import com.society.application.repository.MartialStatusRepo;
import com.society.application.repository.PaymentMasterRepo;
import com.society.application.repository.PositionRepo;
import com.society.application.repository.RelativeRelationMasterRepo;
import com.society.application.repository.ShareAllocationMasterRepo;
import com.society.application.repository.StateMasterRepo;

@RestController
public class MasterInsertController {

	@Autowired
	RelativeRelationMasterRepo relativeRelationMasterRepo;

	@Autowired
	MartialStatusRepo martialStatusRepo;

	@Autowired
	StateMasterRepo stateMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	PaymentMasterRepo paymentMasterRepo;

	@Autowired
	KYCMasterRepo kycMasterRepo;
	
	@Autowired
	ShareAllocationMasterRepo shareAllocationMasterRepo;
	
	@Autowired
	PositionRepo positionRepo;
	
	@GetMapping("insertPositionMaster")
	public String insertPositionMaster() {
		List<Position> listPositionMaster = new ArrayList<>();
		listPositionMaster.add(createListOfPositionMaster(1, "Advisor"));
		listPositionMaster.add(createListOfPositionMaster(2, "Sales Officer"));
		listPositionMaster.add(createListOfPositionMaster(3, "Development Officers"));
		listPositionMaster.add(createListOfPositionMaster(4, "Sr Development Officer"));
		listPositionMaster.add(createListOfPositionMaster(5, "BSM"));
		listPositionMaster.add(createListOfPositionMaster(6, "ASM"));
		listPositionMaster.add(createListOfPositionMaster(7, "RSM"));
		listPositionMaster.add(createListOfPositionMaster(8, "State Head"));
		listPositionMaster.add(createListOfPositionMaster(9, "Zonal Head"));
		listPositionMaster.add(createListOfPositionMaster(10, "Director Sales"));
		positionRepo.saveAll(listPositionMaster);
		return "Position Master List Inserted Successfully";
	}
	
	private Position createListOfPositionMaster(int id, String relation) {
		Position positionMaster = new Position();
		positionMaster.setId(id);
		positionMaster.setName(relation);
		return positionMaster;
	}

	
	@GetMapping("insertShareAllocationMaster")
	public String insertShareAllocationMaster() {
		List<ShareAllocationMaster> listShareAllocationMaster = new ArrayList<>();
		listShareAllocationMaster.add(createListOfShareAllocationMaster(1, "ANKUSH GAJANANRAO BHELKAR-01/NGP/ 000001"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(2, "SUDHIR KRISHNARAO BOREKAR-01/NGP/ 000002"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(3, "MANGESH KRUSHNARAO BOREKAR-01/NGP/ 000003"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(4, "RAJESH BABULAL BHAGAT-01/NGP/ 000004"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(5, "ROSHAN SHANKARRAOJI RAUT-01/NGP/ 000005"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(6, "REKHA GAJANAN BHELKAR-01/NGP/ 000006"));
		listShareAllocationMaster.add(createListOfShareAllocationMaster(7, "MAYURI ANKUSH BHELKAR-01/NGP/ 000007"));
		shareAllocationMasterRepo.saveAll(listShareAllocationMaster);
		return "Share Allocation Master List Inserted Successfully";
	}
	
	private ShareAllocationMaster createListOfShareAllocationMaster(int id, String relation) {
		ShareAllocationMaster shareAllocationMaster = new ShareAllocationMaster();
		shareAllocationMaster.setId(id);
		shareAllocationMaster.setName(relation);
		return shareAllocationMaster;
	}

	@GetMapping("insertKYCMaster")
	public String insertKYCMaster() {
		List<KYCMaster> listkycMaster = new ArrayList<>();
		listkycMaster.add(createListOfKYCMaster(1, "Aadhar"));
		listkycMaster.add(createListOfKYCMaster(2, "Voter"));
		listkycMaster.add(createListOfKYCMaster(3, "Ration Card"));
		listkycMaster.add(createListOfKYCMaster(4, "Driving Licence"));
		kycMasterRepo.saveAll(listkycMaster);
		return "KYC Master List Inserted Successfully";
	}
	
	private KYCMaster createListOfKYCMaster(int id, String relation) {
		KYCMaster kycMaster = new KYCMaster();
		kycMaster.setId(id);
		kycMaster.setName(relation);
		return kycMaster;
	}

	@GetMapping("insertPaymentMaster")
	public String insertPaymentMaster() {
		List<PaymentMaster> listPaymentMaster = new ArrayList<>();
		listPaymentMaster.add(createListOfPaymentMaster(1, "Cash"));
		listPaymentMaster.add(createListOfPaymentMaster(2, "Cheque"));
		listPaymentMaster.add(createListOfPaymentMaster(3, "Online"));
		listPaymentMaster.add(createListOfPaymentMaster(4, "NEFT"));
		paymentMasterRepo.saveAll(listPaymentMaster);
		return "Payment Master List Inserted Successfully";
	}

	private PaymentMaster createListOfPaymentMaster(int id, String relation) {
		PaymentMaster paymentMaster = new PaymentMaster();
		paymentMaster.setId(id);
		paymentMaster.setName(relation);
		return paymentMaster;
	}

	@GetMapping("insertBranchMaster")
	public String insertBranchMaster() {
		List<BranchMaster> listBranchMaster = new ArrayList<>();
		listBranchMaster.add(createListOfBranchMaster(1, "Main Office - 001"));
		branchMasterRepo.saveAll(listBranchMaster);
		return "Branch Master List Inserted Successfully";
	}

	private BranchMaster createListOfBranchMaster(int id, String relation) {
		BranchMaster branchMaster = new BranchMaster();
		branchMaster.setId(id);
		branchMaster.setName(relation);
		return branchMaster;
	}

	@GetMapping("insertStateMaster")
	public String insertIntoStateMaster() {
		List<StateMaster> listStateMaster = new ArrayList<>();
		listStateMaster.add(createListOfStateMaster(1, "ANDRA PRADESH"));
		listStateMaster.add(createListOfStateMaster(2, "ARUNACHAL PRADESH"));
		listStateMaster.add(createListOfStateMaster(3, "ASSAM"));
		listStateMaster.add(createListOfStateMaster(4, "BIHAR"));
		listStateMaster.add(createListOfStateMaster(5, "CHHATTISGARH"));
		listStateMaster.add(createListOfStateMaster(6, "DELHI"));
		listStateMaster.add(createListOfStateMaster(7, "GUJARAT"));
		listStateMaster.add(createListOfStateMaster(8, "HARYANA"));
		listStateMaster.add(createListOfStateMaster(9, "HIMACHAL PRADESH"));
		listStateMaster.add(createListOfStateMaster(10, "JAMMU AND KASHMIR"));
		listStateMaster.add(createListOfStateMaster(11, "JHARKHAND"));
		listStateMaster.add(createListOfStateMaster(12, "KARNATAKA"));
		listStateMaster.add(createListOfStateMaster(13, "KERALA"));
		listStateMaster.add(createListOfStateMaster(14, "MADYA PRADESH"));
		listStateMaster.add(createListOfStateMaster(15, "MAHARASHTRA"));
		listStateMaster.add(createListOfStateMaster(16, "MANIPUR"));
		listStateMaster.add(createListOfStateMaster(17, "MEGHALAYA"));
		listStateMaster.add(createListOfStateMaster(18, "MIZORAM"));
		listStateMaster.add(createListOfStateMaster(19, "NAGALAND"));
		listStateMaster.add(createListOfStateMaster(20, "ODISSA"));
		listStateMaster.add(createListOfStateMaster(21, "PUNJAB"));
		listStateMaster.add(createListOfStateMaster(22, "RAJASTHAN"));
		listStateMaster.add(createListOfStateMaster(23, "SIKKIM"));
		listStateMaster.add(createListOfStateMaster(24, "TAMIL NADU"));
		listStateMaster.add(createListOfStateMaster(25, "TRIPURA"));
		listStateMaster.add(createListOfStateMaster(26, "UTTAR PRADESH"));
		listStateMaster.add(createListOfStateMaster(27, "UTTARAKHAND"));
		listStateMaster.add(createListOfStateMaster(28, "WEST BENGAL"));
		stateMasterRepo.saveAll(listStateMaster);
		return "State Master List Inserted Successfully";
	}

	private StateMaster createListOfStateMaster(int id, String relation) {
		StateMaster stateMaster = new StateMaster();
		stateMaster.setId(id);
		stateMaster.setName(relation);
		return stateMaster;
	}

	@GetMapping("insertRelativeRelationMaster")
	public String insertIntoRelativeRelationMaster() {
		List<RelativeRelationMaster> listRelativeRelationMaster = new ArrayList<>();
		listRelativeRelationMaster.add(createListOfRelation(1, "Father"));
		listRelativeRelationMaster.add(createListOfRelation(2, "Mother"));
		listRelativeRelationMaster.add(createListOfRelation(3, "Son"));
		listRelativeRelationMaster.add(createListOfRelation(4, "Daughter"));
		listRelativeRelationMaster.add(createListOfRelation(5, "Spouse(Husband/Wife)"));
		listRelativeRelationMaster.add(createListOfRelation(6, "Husband"));
		listRelativeRelationMaster.add(createListOfRelation(7, "Wife"));
		listRelativeRelationMaster.add(createListOfRelation(8, "Brother"));
		listRelativeRelationMaster.add(createListOfRelation(9, "Sister"));
		listRelativeRelationMaster.add(createListOfRelation(10, "Daughter in Law"));
		listRelativeRelationMaster.add(createListOfRelation(11, "Brother in Law"));
		listRelativeRelationMaster.add(createListOfRelation(12, "Grand Daughter"));
		listRelativeRelationMaster.add(createListOfRelation(13, "Grand Son"));
		listRelativeRelationMaster.add(createListOfRelation(14, "Other"));
		relativeRelationMasterRepo.saveAll(listRelativeRelationMaster);
		return "Relative Relation Master List Inserted Successfully";
	}

	private RelativeRelationMaster createListOfRelation(int id, String relation) {
		RelativeRelationMaster relativeRelation = new RelativeRelationMaster();
		relativeRelation.setId(id);
		relativeRelation.setName(relation);
		return relativeRelation;
	}

	@GetMapping("insertMartialStatus")
	public String insertIntoMartialStatus() {
		List<MartialStatus> listMartialStatus = new ArrayList<>();
		listMartialStatus.add(createListOfMartialStatus(1, "Married"));
		listMartialStatus.add(createListOfMartialStatus(2, "Separated"));
		listMartialStatus.add(createListOfMartialStatus(3, "Divorced"));
		listMartialStatus.add(createListOfMartialStatus(4, "Widowed"));
		listMartialStatus.add(createListOfMartialStatus(5, "Unmarried"));
		listMartialStatus.add(createListOfMartialStatus(6, "Single"));
		martialStatusRepo.saveAll(listMartialStatus);
		return "Martial Status Master List Inserted Successfully";
	}

	private MartialStatus createListOfMartialStatus(int id, String relation) {
		MartialStatus martialStatus = new MartialStatus();
		martialStatus.setId(id);
		martialStatus.setName(relation);
		return martialStatus;
	}
}
