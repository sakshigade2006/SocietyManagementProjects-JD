package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Advisor {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String DOJ;
	private String SearchMemberCode;
	private String MemberName;
	private String DOB;
	private String Age;
	private String RelativeName;
	private String relativeRelation;
	private String phoneno;
	private String nomineeName;
	private String nRelation;
	private String cspName;
	private String nAge;
	private String address;
	private String district;
	private String state;
	private String pin;
	private String occupation;
	private String education;
	private String rank;
	private String introducerCode;
	private String introName;
	private String introRank;
	private String advisorFees;
	private String payMode;
	private String remarks;
	private String isActive;
	private String isSms;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDOJ() {
		return DOJ;
	}
	public void setDOJ(String dOJ) {
		DOJ = dOJ;
	}
	public String getSearchMemberCode() {
		return SearchMemberCode;
	}
	public void setSearchMemberCode(String searchMemberCode) {
		SearchMemberCode = searchMemberCode;
	}
	public String getMemberName() {
		return MemberName;
	}
	public void setMemberName(String memberName) {
		MemberName = memberName;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getRelativeName() {
		return RelativeName;
	}
	public void setRelativeName(String relativeName) {
		RelativeName = relativeName;
	}
	public String getRelativeRelation() {
		return relativeRelation;
	}
	public void setRelativeRelation(String relativeRelation) {
		this.relativeRelation = relativeRelation;
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
	public String getnRelation() {
		return nRelation;
	}
	public void setnRelation(String nRelation) {
		this.nRelation = nRelation;
	}
	public String getCspName() {
		return cspName;
	}
	public void setCspName(String cspName) {
		this.cspName = cspName;
	}
	public String getnAge() {
		return nAge;
	}
	public void setnAge(String nAge) {
		this.nAge = nAge;
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
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getIntroducerCode() {
		return introducerCode;
	}
	public void setIntroducerCode(String introducerCode) {
		this.introducerCode = introducerCode;
	}
	public String getIntroName() {
		return introName;
	}
	public void setIntroName(String introName) {
		this.introName = introName;
	}
	public String getIntroRank() {
		return introRank;
	}
	public void setIntroRank(String introRank) {
		this.introRank = introRank;
	}
	public String getAdvisorFees() {
		return advisorFees;
	}
	public void setAdvisorFees(String advisorFees) {
		this.advisorFees = advisorFees;
	}
	public String getPayMode() {
		return payMode;
	}
	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	public String getIsSms() {
		return isSms;
	}
	public void setIsSms(String isSms) {
		this.isSms = isSms;
	}
	
	
	@Override
	public String toString() {
		return "Advisor[id=" + id +",DOJ="+DOJ+",SearchMemberCode="+SearchMemberCode+",MemberName="+MemberName+",DOB="+DOB+","
				+",Age="+Age+",RelativeName="+RelativeName+",relativeRelation="+relativeRelation+",phoneno="+phoneno+",nomineeName="+nomineeName+""
				+ ",nRelation="+nRelation+",cspName="+cspName+",nAge="+nAge+",address="+address+",district="+district+",state="+state+","
				+ ",pin="+pin+",occupation="+occupation+",education="+education+",rank="+rank+",introducerCode="+introducerCode+","
				+ ",introName="+introName+",introRank="+introRank+",advisorFees="+advisorFees+",payMode="+payMode+",remarks="+remarks+","
				+ ",isActive="+isActive+",isSms="+isSms+"]";	}
}
