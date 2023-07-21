package com.society.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Transient;

@Entity
public class AdvisorCollectorDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String joiningDate;

	private int memberId;

	private String selectMember;

	private String memberName;

	private String dob;

	private String relativeName;

	private String relativeRelation;

	private String mobileNo;

	private String nomineeName;

	private String relation;

	private String branchName;

	private String nomineeAge;

	private String address;

	private String district;

	private String state;

	private String pinCode;

	private String occupation;

	private String education;

	private String selectPosition;

	private String introducerCode;

	private String introducerName;

	private String position;

	private String feesIfAny;

	private String paymentBy;

	private String remarks;

	private String advisorStatus;

	private String smsSend;

	private String seniorCode;

	private String seniorPosition;

	private String immidiateSr;

	private String srPosition;

	private String immidiateJr;

	private String JrPosition;

	private String newSenior;

	private String seniorName;
	
	private String policyDate;
	
	private String applicationDate;
	
	private String age;
	
	private String fDate;
	
	private String tDate;
	
	@Lob
	@Column(name = "photo", length = 1048576)
	private byte[] photo;
	
	@Lob
	@Column(name = "signiture", length = 1048576)
	private byte[] signiture;
	
	@Transient
	private String frontEndPhoto;
	
	@Transient
	private String frontEndSignature;
	
	private String createdBy;
	
	private String createdDt;
	
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public byte[] getSigniture() {
		return signiture;
	}

	public void setSigniture(byte[] signiture) {
		this.signiture = signiture;
	}

	private String flag;

	public String getPolicyDate() {
		return policyDate;
	}

	public void setPolicyDate(String policyDate) {
		this.policyDate = policyDate;
	}

	public String getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(String applicationDate) {
		this.applicationDate = applicationDate;
	}

	public String getSeniorCode() {
		return seniorCode;
	}

	public void setSeniorCode(String seniorCode) {
		this.seniorCode = seniorCode;
	}

	public String getSeniorPosition() {
		return seniorPosition;
	}

	public void setSeniorPosition(String seniorPosition) {
		this.seniorPosition = seniorPosition;
	}

	public String getImmidiateSr() {
		return immidiateSr;
	}

	public void setImmidiateSr(String immidiateSr) {
		this.immidiateSr = immidiateSr;
	}

	public String getSrPosition() {
		return srPosition;
	}

	public void setSrPosition(String srPosition) {
		this.srPosition = srPosition;
	}

	public String getImmidiateJr() {
		return immidiateJr;
	}

	public void setImmidiateJr(String immidiateJr) {
		this.immidiateJr = immidiateJr;
	}

	public String getJrPosition() {
		return JrPosition;
	}

	public void setJrPosition(String jrPosition) {
		JrPosition = jrPosition;
	}

	public String getNewSenior() {
		return newSenior;
	}

	public void setNewSenior(String newSenior) {
		this.newSenior = newSenior;
	}

	public String getSeniorName() {
		return seniorName;
	}

	public void setSeniorName(String seniorName) {
		this.seniorName = seniorName;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	public String getSelectMember() {
		return selectMember;
	}

	public void setSelectMember(String selectMember) {
		this.selectMember = selectMember;
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

	public String getRelativeName() {
		return relativeName;
	}

	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}

	public String getRelativeRelation() {
		return relativeRelation;
	}

	public void setRelativeRelation(String relativeRelation) {
		this.relativeRelation = relativeRelation;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getNomineeName() {
		return nomineeName;
	}

	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getNomineeAge() {
		return nomineeAge;
	}

	public void setNomineeAge(String nomineeAge) {
		this.nomineeAge = nomineeAge;
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

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getSelectPosition() {
		return selectPosition;
	}

	public void setSelectPosition(String selectPosition) {
		this.selectPosition = selectPosition;
	}

	public String getIntroducerCode() {
		return introducerCode;
	}

	public void setIntroducerCode(String introducerCode) {
		this.introducerCode = introducerCode;
	}

	public String getIntroducerName() {
		return introducerName;
	}

	public void setIntroducerName(String introducerName) {
		this.introducerName = introducerName;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getFeesIfAny() {
		return feesIfAny;
	}

	public void setFeesIfAny(String feesIfAny) {
		this.feesIfAny = feesIfAny;
	}

	public String getPaymentBy() {
		return paymentBy;
	}

	public void setPaymentBy(String paymentBy) {
		this.paymentBy = paymentBy;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getAdvisorStatus() {
		return advisorStatus;
	}

	public void setAdvisorStatus(String advisorStatus) {
		this.advisorStatus = advisorStatus;
	}

	public String getSmsSend() {
		return smsSend;
	}

	public void setSmsSend(String smsSend) {
		this.smsSend = smsSend;
	}
	
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
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

	@Override
	public String toString() {
		return "AdvisorCollectorDetails [id=" + id + ", joiningDate=" + joiningDate + ", memberId=" + memberId
				+ ", selectMember=" + selectMember + ", memberName=" + memberName + ", dob=" + dob + ", relativeName="
				+ relativeName + ", relativeRelation=" + relativeRelation + ", mobileNo=" + mobileNo + ", nomineeName="
				+ nomineeName + ", relation=" + relation + ", branchName=" + branchName + ", nomineeAge=" + nomineeAge
				+ ", address=" + address + ", district=" + district + ", state=" + state + ", pinCode=" + pinCode
				+ ", occupation=" + occupation + ", education=" + education + ", selectPosition=" + selectPosition
				+ ", introducerCode=" + introducerCode + ", introducerName=" + introducerName + ", position=" + position
				+ ", feesIfAny=" + feesIfAny + ", paymentBy=" + paymentBy + ", remarks=" + remarks + ", advisorStatus="
				+ advisorStatus + ", smsSend=" + smsSend + ", seniorCode=" + seniorCode + ", seniorPosition="
				+ seniorPosition + ", immidiateSr=" + immidiateSr + ", srPosition=" + srPosition + ", immidiateJr="
				+ immidiateJr + ", JrPosition=" + JrPosition + ", newSenior=" + newSenior + ", seniorName=" + seniorName
				+ "]";
	}

}
