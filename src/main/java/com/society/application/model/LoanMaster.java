package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String type;
	private String loanName;
	private String loanType;
	private String emiCollection;
	private String roiType;
	private String emiType;
	private String minAge;
	private String maxAge;
	private String minAmount;
	private String maxAmount;
	private String planStatus;
	private String minTerm;
	private String maxTerm;
	private String roi;
	private String securityType;
	private String processingFee;
	private String legalAmt;
	private String gst;
	private String insuranceAmt;
	private String valuerFees;
	private String gracePeriodDays;
	private String penaltyType;
	private String penalty;
	private String createdDate;
	private String updatedDate;
	private String updatedBy;
	private String loanDate;
	private String memberName;
	private String relativeName;
	private String dob;
	private String age;
	private String phoneno;
	private String status;
	private String address;
	private String pinCode;
	private String branchName;
	private String loanPlanName;
	private String planTerm;
	private String mode;
	private String loanROI;
	private String loanAmount;
	private String emiAmount;
	private String loanPurpose;
	private byte[] Photo;
	private String searchMemberCode;
	private String guarantorName;
	private String addressGuarantor;
	private String pincodeGuarantor;
	private String phone;
	private String coApplicantCode;
	private String memberRelativesName;
	private String addressco;
	private String pincodeco;
	private String phoneco;
	private String securityDetails;
	private String advisorCode;
	private String advisorName;
	private byte[] signature;
	private String flag = "1";
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
	private String eligibleLoan;
	private String netQty;
	private String totItemWt;
	private String totalNetWt;
	private String totalEligibleAmt;
	private String vFeesAmt;
	private String createdBy;
	private String CreatedDt;
	
	public String getCreatedDt() {
		return CreatedDt;
	}

	public void setCreatedDt(String createdDt) {
		CreatedDt = createdDt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getEmiCollection() {
		return emiCollection;
	}

	public void setEmiCollection(String emiCollection) {
		this.emiCollection = emiCollection;
	}

	public String getRoiType() {
		return roiType;
	}

	public void setRoiType(String roiType) {
		this.roiType = roiType;
	}

	public String getEmiType() {
		return emiType;
	}

	public void setEmiType(String emiType) {
		this.emiType = emiType;
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

	public String getMinTerm() {
		return minTerm;
	}

	public void setMinTerm(String minTerm) {
		this.minTerm = minTerm;
	}

	public String getMaxTerm() {
		return maxTerm;
	}

	public void setMaxTerm(String maxTerm) {
		this.maxTerm = maxTerm;
	}

	public String getRoi() {
		return roi;
	}

	public void setRoi(String roi) {
		this.roi = roi;
	}

	public String getSecurityType() {
		return securityType;
	}

	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}

	public String getProcessingFee() {
		return processingFee;
	}

	public void setProcessingFee(String processingFee) {
		this.processingFee = processingFee;
	}

	public String getLegalAmt() {
		return legalAmt;
	}

	public void setLegalAmt(String legalAmt) {
		this.legalAmt = legalAmt;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getInsuranceAmt() {
		return insuranceAmt;
	}

	public void setInsuranceAmt(String insuranceAmt) {
		this.insuranceAmt = insuranceAmt;
	}

	public String getValuerFees() {
		return valuerFees;
	}

	public void setValuerFees(String valuerFees) {
		this.valuerFees = valuerFees;
	}

	public String getGracePeriodDays() {
		return gracePeriodDays;
	}

	public void setGracePeriodDays(String gracePeriodDays) {
		this.gracePeriodDays = gracePeriodDays;
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
	
	public String getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getRelativeName() {
		return relativeName;
	}

	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getLoanPlanName() {
		return loanPlanName;
	}

	public void setLoanPlanName(String loanPlanName) {
		this.loanPlanName = loanPlanName;
	}

	public String getPlanTerm() {
		return planTerm;
	}

	public void setPlanTerm(String planTerm) {
		this.planTerm = planTerm;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getLoanROI() {
		return loanROI;
	}

	public void setLoanROI(String loanROI) {
		this.loanROI = loanROI;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getEmiAmount() {
		return emiAmount;
	}

	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}

	public String getLoanPurpose() {
		return loanPurpose;
	}

	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}

	public String getSearchMemberCode() {
		return searchMemberCode;
	}

	public void setSearchMemberCode(String searchMemberCode) {
		this.searchMemberCode = searchMemberCode;
	}

	public String getGuarantorName() {
		return guarantorName;
	}

	public void setGuarantorName(String guarantorName) {
		this.guarantorName = guarantorName;
	}

	public String getAddressGuarantor() {
		return addressGuarantor;
	}

	public void setAddressGuarantor(String addressGuarantor) {
		this.addressGuarantor = addressGuarantor;
	}

	public String getPincodeGuarantor() {
		return pincodeGuarantor;
	}

	public void setPincodeGuarantor(String pincodeGuarantor) {
		this.pincodeGuarantor = pincodeGuarantor;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCoApplicantCode() {
		return coApplicantCode;
	}

	public void setCoApplicantCode(String coApplicantCode) {
		this.coApplicantCode = coApplicantCode;
	}

	public String getMemberRelativesName() {
		return memberRelativesName;
	}

	public void setMemberRelativesName(String memberRelativesName) {
		this.memberRelativesName = memberRelativesName;
	}

	public String getAddressco() {
		return addressco;
	}

	public void setAddressco(String addressco) {
		this.addressco = addressco;
	}

	public String getPincodeco() {
		return pincodeco;
	}

	public void setPincodeco(String pincodeco) {
		this.pincodeco = pincodeco;
	}

	public String getPhoneco() {
		return phoneco;
	}

	public void setPhoneco(String phoneco) {
		this.phoneco = phoneco;
	}

	public String getSecurityDetails() {
		return securityDetails;
	}

	public void setSecurityDetails(String securityDetails) {
		this.securityDetails = securityDetails;
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

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public byte[] getPhoto() {
		return Photo;
	}

	public void setPhoto(byte[] photo) {
		Photo = photo;
	}

	public byte[] getSignature() {
		return signature;
	}

	public void setSignature(byte[] signature) {
		this.signature = signature;
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

	public String getEligibleLoan() {
		return eligibleLoan;
	}

	public void setEligibleLoan(String eligibleLoan) {
		this.eligibleLoan = eligibleLoan;
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

	@Override
	public String toString() {
		return "LoanMaster [id=" + id + ", type=" + type + ", loanName=" + loanName + ", loanType=" + loanType
				+ ", emiCollection=" + emiCollection + ", roiType=" + roiType + ", emiType=" + emiType + ", minAge="
				+ minAge + ", maxAge=" + maxAge + ", minAmount=" + minAmount + ", maxAmount=" + maxAmount
				+ ", planStatus=" + planStatus + ", minTerm=" + minTerm + ", maxTerm=" + maxTerm + ", roi=" + roi
				+ ", securityType=" + securityType + ", processingFee=" + processingFee + ", legalAmt=" + legalAmt
				+ ", gst=" + gst + ", insuranceAmt=" + insuranceAmt + ", valuerFees=" + valuerFees
				+ ", gracePeriodDays=" + gracePeriodDays + ", penaltyType=" + penaltyType + ", penalty=" + penalty
				+ ", createdDate=" + createdDate + ", createdBy=" + createdBy + ", updatedDate=" + updatedDate
				+ ", updatedBy=" + updatedBy + "]";
	}

}