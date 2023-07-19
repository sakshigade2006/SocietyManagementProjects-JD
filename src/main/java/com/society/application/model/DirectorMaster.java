package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DirectorMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String type;
	private String branchName;
	private String prefix;
	private String directorName;
	private String dateOfBirth;
	private String dinNoPromoterNo;
	private String appointmentDate;
	private String relativeName;
	private String address;
	private String district;
	private String state;
	private String pin;
	private String aadharno;
	private String panNo;
	private String mobileNo;
	private String emailId;
	private String shareNominalValue;
	private String shareAmount;
	private String noOfShare;
	private String paymode;
	private String memberCode;
	private String dnoFrom;
	private String dnoTo;
	private String photo;
	private String signature;
	
	public String getDnoFrom() {
		return dnoFrom;
	}
	public void setDnoFrom(String dnoFrom) {
		this.dnoFrom = dnoFrom;
	}
	public String getDnoTo() {
		return dnoTo;
	}
	public void setDnoTo(String dnoTo) {
		this.dnoTo = dnoTo;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
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
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getDirectorName() {
		return directorName;
	}
	public void setDirectorName(String directorName) {
		this.directorName = directorName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getDinNoPromoterNo() {
		return dinNoPromoterNo;
	}
	public void setDinNoPromoterNo(String dinNoPromoterNo) {
		this.dinNoPromoterNo = dinNoPromoterNo;
	}
	public String getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public String getRelativeName() {
		return relativeName;
	}
	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
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
	public String getAadharno() {
		return aadharno;
	}
	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getShareNominalValue() {
		return shareNominalValue;
	}
	public void setShareNominalValue(String shareNominalValue) {
		this.shareNominalValue = shareNominalValue;
	}
	public String getShareAmount() {
		return shareAmount;
	}
	public void setShareAmount(String shareAmount) {
		this.shareAmount = shareAmount;
	}
	public String getNoOfShare() {
		return noOfShare;
	}
	public void setNoOfShare(String noOfShare) {
		this.noOfShare = noOfShare;
	}
	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	

}
