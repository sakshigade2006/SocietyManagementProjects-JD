package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class AddInvestment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String policyDate;
	private String searchMemberCode;
	private String memberName;
	private String dob;
	private String age;
	private String relativeName;
	private String phoneno;
	private String nomineeName;
	private String nomineeAge;
	private String nomineeRelation;
	private String address;
	private String district;
	private String state;
	private String pin;
	private String cspname;
	private String modeOfOp;
	private String jointCode;
	private String jointName;
	private String mDate;
	private String schemeType;
	private String schemeName;
	private String term;
	private String mode;
	private String misMode;
	private String policyAmount;
	private String totalDeposit;
	private String maturityAmount;
	private String mISInterest;
	private String paymode;
	private String remarks;
	private String advisorCode;
	private String advisorName;
	private String chkisSms;
	private byte[] photo;
	private byte[] signature;
	private String policyno;
	private String amount;
	private String transactionType;
	private String transactionFor;
	private String balance;
	private String planCode;
	private String empCode;
	private String tDate;
	private String fDate;
	private String branchName;
	private String applicantName;
	private String planName;
	private String renewalDate;
	private String amtDue;	
	private String lastInstPaid;	
	private String dueDate;	
	private String latefine;	
	private String noOfInstPaid;	
	private String collectorCode;
	private String flag;
	private String applicationDate;
	private String paymentDate;
    private String roi;
    private String penalty;
    private String reqUser;
    private String approvalDate;
    private String appBranch;
    private String deduction;
    private String adjustment;
    private String aprovalStatus;
    @Transient
	private String frontEndPhoto;
	@Transient
	private String frontEndSignature;
	private String createdBy;
	private String createdDt;
	
	public String getAppBranch() {
		return appBranch;
	}
	public void setAppBranch(String appBranch) {
		this.appBranch = appBranch;
	}
	public String getReqUser() {
		return reqUser;
	}
	public void setReqUser(String reqUser) {
		this.reqUser = reqUser;
	}
	public String getApprovalDate() {
		return approvalDate;
	}
	public void setApprovalDate(String approvalDate) {
		this.approvalDate = approvalDate;
	}
	public String getRoi() {
		return roi;
	}
	public void setRoi(String roi) {
		this.roi = roi;
	}
	public String getPenalty() {
		return penalty;
	}
	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}
	public String getAmtDue() {
		return amtDue;
	}
	public void setAmtDue(String amtDue) {
		this.amtDue = amtDue;
	}
	public String getLastInstPaid() {
		return lastInstPaid;
	}
	public void setLastInstPaid(String lastInstPaid) {
		this.lastInstPaid = lastInstPaid;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getLatefine() {
		return latefine;
	}
	public void setLatefine(String latefine) {
		this.latefine = latefine;
	}
	public String getNoOfInstPaid() {
		return noOfInstPaid;
	}
	public void setNoOfInstPaid(String noOfInstPaid) {
		this.noOfInstPaid = noOfInstPaid;
	}
	public String getCollectorCode() {
		return collectorCode;
	}
	public void setCollectorCode(String collectorCode) {
		this.collectorCode = collectorCode;
	}
	public String getRenewalDate() {
		return renewalDate;
	}
	public void setRenewalDate(String renewalDate) {
		this.renewalDate = renewalDate;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public byte[] getSignature() {
		return signature;
	}
	public void setSignature(byte[] signature) {
		this.signature = signature;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPolicyDate() {
		return policyDate;
	}
	public void setPolicyDate(String policyDate) {
		this.policyDate = policyDate;
	}
	public String getSearchMemberCode() {
		return searchMemberCode;
	}
	public void setSearchMemberCode(String searchMemberCode) {
		this.searchMemberCode = searchMemberCode;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
	public String getRelativeName() {
		return relativeName;
	}
	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getNomineeName() {
		return nomineeName;
	}
	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}
	public String getNomineeAge() {
		return nomineeAge;
	}
	public void setNomineeAge(String nomineeAge) {
		this.nomineeAge = nomineeAge;
	}
	public String getNomineeRelation() {
		return nomineeRelation;
	}
	public void setNomineeRelation(String nomineeRelation) {
		this.nomineeRelation = nomineeRelation;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getCspname() {
		return cspname;
	}
	public void setCspname(String cspname) {
		this.cspname = cspname;
	}
	public String getModeOfOp() {
		return modeOfOp;
	}
	public void setModeOfOp(String modeOfOp) {
		this.modeOfOp = modeOfOp;
	}
	public String getJointCode() {
		return jointCode;
	}
	public void setJointCode(String jointCode) {
		this.jointCode = jointCode;
	}
	public String getJointName() {
		return jointName;
	}
	public void setJointName(String jointName) {
		this.jointName = jointName;
	}
	public String getmDate() {
		return mDate;
	}
	public void setmDate(String mDate) {
		this.mDate = mDate;
	}
	public String getSchemeType() {
		return schemeType;
	}
	public void setSchemeType(String schemeType) {
		this.schemeType = schemeType;
	}
	public String getSchemeName() {
		return schemeName;
	}
	public void setSchemeName(String schemeName) {
		this.schemeName = schemeName;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getMisMode() {
		return misMode;
	}
	public void setMisMode(String misMode) {
		this.misMode = misMode;
	}
	public String getPolicyAmount() {
		return policyAmount;
	}
	public void setPolicyAmount(String policyAmount) {
		this.policyAmount = policyAmount;
	}
	public String getTotalDeposit() {
		return totalDeposit;
	}
	public void setTotalDeposit(String totalDeposit) {
		this.totalDeposit = totalDeposit;
	}
	public String getMaturityAmount() {
		return maturityAmount;
	}
	public void setMaturityAmount(String maturityAmount) {
		this.maturityAmount = maturityAmount;
	}
	public String getmISInterest() {
		return mISInterest;
	}
	public void setmISInterest(String mISInterest) {
		this.mISInterest = mISInterest;
	}
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
	public String getChkisSms() {
		return chkisSms;
	}
	public void setChkisSms(String chkisSms) {
		this.chkisSms = chkisSms;
	}
	public String getPolicyno() {
		return policyno;
	}
	public void setPolicyno(String policyno) {
		this.policyno = policyno;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getTransactionFor() {
		return transactionFor;
	}
	public void setTransactionFor(String transactionFor) {
		this.transactionFor = transactionFor;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getPlanCode() {
		return planCode;
	}
	public void setPlanCode(String planCode) {
		this.planCode = planCode;
	}
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public String getfDate() {
		return fDate;
	}
	public void setfDate(String fDate) {
		this.fDate = fDate;
	}
	public String getApplicantName() {
		return applicantName;
	}
	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getFrontEndPhoto() {
		return frontEndPhoto;
	}
	public void setFrontEndPhoto(String frontEndPhoto) {
		this.frontEndPhoto = frontEndPhoto;
	}
	public String getFrontEndSignature() {
		return frontEndSignature;
	}
	public void setFrontEndSignature(String frontEndSignature) {
		this.frontEndSignature = frontEndSignature;
	}
	public String getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(String applicationDate) {
		this.applicationDate = applicationDate;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getDeduction() {
		return deduction;
	}
	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}
	public String getAdjustment() {
		return adjustment;
	}
	public void setAdjustment(String adjustment) {
		this.adjustment = adjustment;
	}
	public String getAprovalStatus() {
		return aprovalStatus;
	}
	public void setAprovalStatus(String aprovalStatus) {
		this.aprovalStatus = aprovalStatus;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}
	
}
