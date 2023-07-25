package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GroupMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String groupName;
	private String opDate;
	private String csp;
	private String grLeaderName;
	private String mobile;
	private String grAddr;
	private String employee;
	private String cDay;
	private String cTime;
	private String createdDate;
	private String createdBy;
	private String updatedDate;
	private String updatedBy;
	private String flag="1";
	private String fDate;
	private String tDate;
	private String emiCollection;
	private String emiType;
	private String gst;
	private String gracePeriodDays;
	private String insuranceAmt;
	private String legalAmt;
	private String loanName;
	private String loanType;
	private String minAge;
	private String maxAge;
	private String minAmount;
	private String maxAmount;
	private String planStatus;
	private String penaltyType;
	private String penalty;
	private String processingFee;
	private String roi;
	private String roiType;
	private String securityType;
	private String type;
	private String valuerFees;
	private byte[] Photo;
	private String address;
	private String addressGuarantor;
	private String addressco;
	private String advisorCode;
	private String advisorName;
	private String age;
	private String branchName;
	private String coApplicantCode;
	private String dob;
	private String emiAmount;
	private String guarantorName;
	private String loanAmount;
	private String loanDate;
	private String loanPlanName;
	private String loanROI;
	private String loanPurpose;
	private String memberName;
	private String memberRelativesName;
	private String mode;
	private String phoneno;
	private String phone;
	private String phoneco;
	private String pinCode;
	private String pincodeGuarantor;
	private String pincodeco;
	private String planTerm;
	private String relativeName;
	private String searchMemberCode;
	private String securityDetails;
	private byte[] signature;
	private String status;
	private String eligibleLoan;
	private byte[] goldItem;
	private String karat;
	private String itemType;
	private String todayRate;
	private String itemName;
	private String lockerLoc;
	private String purity;
	private String itemQty;
	private String itemWt;
	private String grossWt;
	private String stonewt;
	private String netWt;
	private String marketValuation;
	private String netQty;
	private String totItemWt;
	private String totalNetWt;
	private String totalEligibleAmt;
	private String vFeesAmt;
	private String planeName;
	private String paymode;
	private String remarks;
	private String payDate;
	private String paymentStatus;
	private String ddlcharges;
	private String cspName;
	

	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getDdlcharges() {
		return ddlcharges;
	}
	public void setDdlcharges(String ddlcharges) {
		this.ddlcharges = ddlcharges;
	}
	public String getCspName() {
		return cspName;
	}
	public void setCspName(String cspName) {
		this.cspName = cspName;
	}
	public String getPlaneName() {
		return planeName;
	}
	public void setPlaneName(String planeName) {
		this.planeName = planeName;
	}
	public String getEmiCollection() {
		return emiCollection;
	}
	public void setEmiCollection(String emiCollection) {
		this.emiCollection = emiCollection;
	}
	public String getEmiType() {
		return emiType;
	}
	public void setEmiType(String emiType) {
		this.emiType = emiType;
	}
	public String getGst() {
		return gst;
	}
	public void setGst(String gst) {
		this.gst = gst;
	}
	public String getGracePeriodDays() {
		return gracePeriodDays;
	}
	public void setGracePeriodDays(String gracePeriodDays) {
		this.gracePeriodDays = gracePeriodDays;
	}
	public String getInsuranceAmt() {
		return insuranceAmt;
	}
	public void setInsuranceAmt(String insuranceAmt) {
		this.insuranceAmt = insuranceAmt;
	}
	public String getLegalAmt() {
		return legalAmt;
	}
	public void setLegalAmt(String legalAmt) {
		this.legalAmt = legalAmt;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public String getMinAge() {
		return minAge;
	}
	public void setMinAge(String minAge) {
		this.minAge = minAge;
	}
	public String getMaxAge() {
		return maxAge;
	}
	public void setMaxAge(String maxAge) {
		this.maxAge = maxAge;
	}
	public String getMinAmount() {
		return minAmount;
	}
	public void setMinAmount(String minAmount) {
		this.minAmount = minAmount;
	}
	public String getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(String maxAmount) {
		this.maxAmount = maxAmount;
	}
	public String getPlanStatus() {
		return planStatus;
	}
	public void setPlanStatus(String planStatus) {
		this.planStatus = planStatus;
	}
	public String getPenaltyType() {
		return penaltyType;
	}
	public void setPenaltyType(String penaltyType) {
		this.penaltyType = penaltyType;
	}
	public String getPenalty() {
		return penalty;
	}
	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}
	public String getProcessingFee() {
		return processingFee;
	}
	public void setProcessingFee(String processingFee) {
		this.processingFee = processingFee;
	}
	public String getRoi() {
		return roi;
	}
	public void setRoi(String roi) {
		this.roi = roi;
	}
	public String getRoiType() {
		return roiType;
	}
	public void setRoiType(String roiType) {
		this.roiType = roiType;
	}
	public String getSecurityType() {
		return securityType;
	}
	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getValuerFees() {
		return valuerFees;
	}
	public void setValuerFees(String valuerFees) {
		this.valuerFees = valuerFees;
	}
	public byte[] getPhoto() {
		return Photo;
	}
	public void setPhoto(byte[] photo) {
		Photo = photo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressGuarantor() {
		return addressGuarantor;
	}
	public void setAddressGuarantor(String addressGuarantor) {
		this.addressGuarantor = addressGuarantor;
	}
	public String getAddressco() {
		return addressco;
	}
	public void setAddressco(String addressco) {
		this.addressco = addressco;
	}
	public String getAdvisorCode() {
		return advisorCode;
	}
	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}
	public String getAdvisorName() {
		return advisorName;
	}
	public void setAdvisorName(String advisorName) {
		this.advisorName = advisorName;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getCoApplicantCode() {
		return coApplicantCode;
	}
	public void setCoApplicantCode(String coApplicantCode) {
		this.coApplicantCode = coApplicantCode;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmiAmount() {
		return emiAmount;
	}
	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}
	public String getGuarantorName() {
		return guarantorName;
	}
	public void setGuarantorName(String guarantorName) {
		this.guarantorName = guarantorName;
	}
	public String getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	public String getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}
	public String getLoanPlanName() {
		return loanPlanName;
	}
	public void setLoanPlanName(String loanPlanName) {
		this.loanPlanName = loanPlanName;
	}
	public String getLoanROI() {
		return loanROI;
	}
	public void setLoanROI(String loanROI) {
		this.loanROI = loanROI;
	}
	public String getLoanPurpose() {
		return loanPurpose;
	}
	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberRelativesName() {
		return memberRelativesName;
	}
	public void setMemberRelativesName(String memberRelativesName) {
		this.memberRelativesName = memberRelativesName;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhoneco() {
		return phoneco;
	}
	public void setPhoneco(String phoneco) {
		this.phoneco = phoneco;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getPincodeGuarantor() {
		return pincodeGuarantor;
	}
	public void setPincodeGuarantor(String pincodeGuarantor) {
		this.pincodeGuarantor = pincodeGuarantor;
	}
	public String getPincodeco() {
		return pincodeco;
	}
	public void setPincodeco(String pincodeco) {
		this.pincodeco = pincodeco;
	}
	public String getPlanTerm() {
		return planTerm;
	}
	public void setPlanTerm(String planTerm) {
		this.planTerm = planTerm;
	}
	public String getRelativeName() {
		return relativeName;
	}
	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}
	public String getSearchMemberCode() {
		return searchMemberCode;
	}
	public void setSearchMemberCode(String searchMemberCode) {
		this.searchMemberCode = searchMemberCode;
	}
	public String getSecurityDetails() {
		return securityDetails;
	}
	public void setSecurityDetails(String securityDetails) {
		this.securityDetails = securityDetails;
	}
	public byte[] getSignature() {
		return signature;
	}
	public void setSignature(byte[] signature) {
		this.signature = signature;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEligibleLoan() {
		return eligibleLoan;
	}
	public void setEligibleLoan(String eligibleLoan) {
		this.eligibleLoan = eligibleLoan;
	}
	public byte[] getGoldItem() {
		return goldItem;
	}
	public void setGoldItem(byte[] goldItem) {
		this.goldItem = goldItem;
	}
	public String getKarat() {
		return karat;
	}
	public void setKarat(String karat) {
		this.karat = karat;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public String getTodayRate() {
		return todayRate;
	}
	public void setTodayRate(String todayRate) {
		this.todayRate = todayRate;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getLockerLoc() {
		return lockerLoc;
	}
	public void setLockerLoc(String lockerLoc) {
		this.lockerLoc = lockerLoc;
	}
	public String getPurity() {
		return purity;
	}
	public void setPurity(String purity) {
		this.purity = purity;
	}
	public String getItemQty() {
		return itemQty;
	}
	public void setItemQty(String itemQty) {
		this.itemQty = itemQty;
	}
	public String getItemWt() {
		return itemWt;
	}
	public void setItemWt(String itemWt) {
		this.itemWt = itemWt;
	}
	public String getGrossWt() {
		return grossWt;
	}
	public void setGrossWt(String grossWt) {
		this.grossWt = grossWt;
	}
	public String getStonewt() {
		return stonewt;
	}
	public void setStonewt(String stonewt) {
		this.stonewt = stonewt;
	}
	public String getNetWt() {
		return netWt;
	}
	public void setNetWt(String netWt) {
		this.netWt = netWt;
	}
	public String getMarketValuation() {
		return marketValuation;
	}
	public void setMarketValuation(String marketValuation) {
		this.marketValuation = marketValuation;
	}
	public String getNetQty() {
		return netQty;
	}
	public void setNetQty(String netQty) {
		this.netQty = netQty;
	}
	public String getTotItemWt() {
		return totItemWt;
	}
	public void setTotItemWt(String totItemWt) {
		this.totItemWt = totItemWt;
	}
	public String getTotalNetWt() {
		return totalNetWt;
	}
	public void setTotalNetWt(String totalNetWt) {
		this.totalNetWt = totalNetWt;
	}
	public String getTotalEligibleAmt() {
		return totalEligibleAmt;
	}
	public void setTotalEligibleAmt(String totalEligibleAmt) {
		this.totalEligibleAmt = totalEligibleAmt;
	}
	public String getvFeesAmt() {
		return vFeesAmt;
	}
	public void setvFeesAmt(String vFeesAmt) {
		this.vFeesAmt = vFeesAmt;
	}
	public String getfDate() {
		return fDate;
	}
	public void setfDate(String fDate) {
		this.fDate = fDate;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getOpDate() {
		return opDate;
	}
	public void setOpDate(String opDate) {
		this.opDate = opDate;
	}
	public String getCsp() {
		return csp;
	}
	public void setCsp(String csp) {
		this.csp = csp;
	}
	public String getGrLeaderName() {
		return grLeaderName;
	}
	public void setGrLeaderName(String grLeaderName) {
		this.grLeaderName = grLeaderName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGrAddr() {
		return grAddr;
	}
	public void setGrAddr(String grAddr) {
		this.grAddr = grAddr;
	}
	public String getEmployee() {
		return employee;
	}
	public void setEmployee(String employee) {
		this.employee = employee;
	}
	public String getcDay() {
		return cDay;
	}
	public void setcDay(String cDay) {
		this.cDay = cDay;
	}
	public String getcTime() {
		return cTime;
	}
	public void setcTime(String cTime) {
		this.cTime = cTime;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

}
