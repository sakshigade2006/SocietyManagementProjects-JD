package com.society.application.model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GroupMasterApplication {
	
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
	private String loanDate;
	private String purposeMsg;
	private String memberName;
	private String relativeName;
	private String dob;
	private String age;
	private String phoneno;
	private String groupID;
	private String address;
	private String pinCode;
	private String branchName;
	private String loanPlanName;
	private String loanType;
	private String planTerm;
	private String mode;
	private String loanROI;
	private String loanAmount;
	private String roitype;
	private String emiAmount;
	private String loanPurpose;
	private String processingFee;
	private String legalAmt;
	private String advisorCode;
	private String gst;
	private String insuranceAmt;
	private String advisorName;
	private String flag;
	private byte[] photo;
	private byte[] signature;
	private String approvalStatus;
	private String approvalDate;
	private String createdDt;
	
	public String getApprovalStatus() {
		return approvalStatus;
	}
	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
	public String getApprovalDate() {
		return approvalDate;
	}
	public void setApprovalDate(String approvalDate) {
		this.approvalDate = approvalDate;
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
	public String getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}
	public String getPurposeMsg() {
		return purposeMsg;
	}
	public void setPurposeMsg(String purposeMsg) {
		this.purposeMsg = purposeMsg;
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
	public String getGroupID() {
		return groupID;
	}
	public void setGroupID(String groupID) {
		this.groupID = groupID;
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
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
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
	public String getRoitype() {
		return roitype;
	}
	public void setRoitype(String roitype) {
		this.roitype = roitype;
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
	public String getAdvisorCode() {
		return advisorCode;
	}
	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
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
	public String getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}
	@Override
	public String toString() {
		return "GroupMasterApplication [id=" + id + ", groupName=" + groupName + ", opDate=" + opDate + ", csp=" + csp
				+ ", grLeaderName=" + grLeaderName + ", mobile=" + mobile + ", grAddr=" + grAddr + ", employee="
				+ employee + ", cDay=" + cDay + ", cTime=" + cTime + ", createdDate=" + createdDate + ", createdBy="
				+ createdBy + ", updatedDate=" + updatedDate + ", updatedBy=" + updatedBy + ", loanDate=" + loanDate
				+ ", purposeMsg=" + purposeMsg + ", memberName=" + memberName + ", relativeName=" + relativeName
				+ ", dob=" + dob + ", age=" + age + ", phoneno=" + phoneno + ", groupID=" + groupID + ", address="
				+ address + ", pinCode=" + pinCode + ", branchName=" + branchName + ", loanPlanName=" + loanPlanName
				+ ", loanType=" + loanType + ", planTerm=" + planTerm + ", mode=" + mode + ", loanROI=" + loanROI
				+ ", loanAmount=" + loanAmount + ", roitype=" + roitype + ", emiAmount=" + emiAmount + ", loanPurpose="
				+ loanPurpose + ", processingFee=" + processingFee + ", legalAmt=" + legalAmt + ", advisorCode="
				+ advisorCode + ", gst=" + gst + ", insuranceAmt=" + insuranceAmt + ", advisorName=" + advisorName
				+ ", flag=" + flag + ", photo=" + Arrays.toString(photo) + ", signature=" + Arrays.toString(signature)
				+ ", approvalStatus=" + approvalStatus + ", approvalDate=" + approvalDate + "]";
	}
	
}
