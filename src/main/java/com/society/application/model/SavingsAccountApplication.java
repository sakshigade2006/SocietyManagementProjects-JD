package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SavingsAccountApplication {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String opDate;
	private String searchMemberCode;
	private String memberName;
	private String dOB;
	private String age;
	private String relativeName;
	private String phoneno;
	private String nomineeName;
	private String nomName;
	private String nRelation;
	private String address;
	private String district;
	private String cspName;
	private String state;
	private String pin;
	private String modeOfOp;
	private String jointCode;
	private String jointName;
	private String jointRelation;
	private String sBPlan;
	private String openingAmount;
	private String advisorCode;
	private String advisorName;
	private String opFees;
	private String paymode;
	private String remarks;
	private String chkisactive;
	private String chkisSms;
	private String chkdebitcard;
	private String txtTDate;
	private String accountNo;
	private String transactionFor;
	private String transactionType;
	private String txtAmount;
	private String createdBy;
	private String CreatedDt;
	
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDt() {
		return CreatedDt;
	}
	public void setCreatedDt(String createdDt) {
		CreatedDt = createdDt;
	}
	public String getTxtTDate() {
		return txtTDate;
	}
	public void setTxtTDate(String txtTDate) {
		this.txtTDate = txtTDate;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getTransactionFor() {
		return transactionFor;
	}
	public void setTransactionFor(String transactionFor) {
		this.transactionFor = transactionFor;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getTxtAmount() {
		return txtAmount;
	}
	public void setTxtAmount(String txtAmount) {
		this.txtAmount = txtAmount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOpDate() {
		return opDate;
	}
	public void setOpDate(String opDate) {
		this.opDate = opDate;
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
	public String getdOB() {
		return dOB;
	}
	public void setdOB(String dOB) {
		this.dOB = dOB;
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
	public String getNomName() {
		return nomName;
	}
	public void setNomName(String nomName) {
		this.nomName = nomName;
	}
	public String getnRelation() {
		return nRelation;
	}
	public void setnRelation(String nRelation) {
		this.nRelation = nRelation;
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
	public String getCspName() {
		return cspName;
	}
	public void setCspName(String cspName) {
		this.cspName = cspName;
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
	public String getJointRelation() {
		return jointRelation;
	}
	public void setJointRelation(String jointRelation) {
		this.jointRelation = jointRelation;
	}
	public String getsBPlan() {
		return sBPlan;
	}
	public void setsBPlan(String sBPlan) {
		this.sBPlan = sBPlan;
	}
	public String getOpeningAmount() {
		return openingAmount;
	}
	public void setOpeningAmount(String openingAmount) {
		this.openingAmount = openingAmount;
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
	public String getOpFees() {
		return opFees;
	}
	public void setOpFees(String opFees) {
		this.opFees = opFees;
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
	public String getChkisactive() {
		return chkisactive;
	}
	public void setChkisactive(String chkisactive) {
		this.chkisactive = chkisactive;
	}
	public String getChkisSms() {
		return chkisSms;
	}
	public void setChkisSms(String chkisSms) {
		this.chkisSms = chkisSms;
	}
	public String getChkdebitcard() {
		return chkdebitcard;
	}
	public void setChkdebitcard(String chkdebitcard) {
		this.chkdebitcard = chkdebitcard;
	}
	@Override
	public String toString() {
		return "SavingsAccountApplication [id=" + id + ", opDate=" + opDate + ", searchMemberCode=" + searchMemberCode
				+ ", memberName=" + memberName + ", dOB=" + dOB + ", age=" + age + ", relativeName=" + relativeName
				+ ", phoneno=" + phoneno + ", nomineeName=" + nomineeName + ", nomName=" + nomName + ", nRelation="
				+ nRelation + ", address=" + address + ", district=" + district + ", cspName=" + cspName + ", state="
				+ state + ", pin=" + pin + ", modeOfOp=" + modeOfOp + ", jointCode=" + jointCode + ", jointName="
				+ jointName + ", jointRelation=" + jointRelation + ", sBPlan=" + sBPlan + ", openingAmount="
				+ openingAmount + ", advisorCode=" + advisorCode + ", advisorName=" + advisorName + ", opFees=" + opFees
				+ ", paymode=" + paymode + ", remarks=" + remarks + ", chkisactive=" + chkisactive + ", chkisSms="
				+ chkisSms + ", chkdebitcard=" + chkdebitcard + "]";
	}
	
	
}
