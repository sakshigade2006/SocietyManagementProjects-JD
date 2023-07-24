package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class SavingsDepositWith {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;

	private String txnDate;
	
	private String branchName;
	
	private String accountNo;
	
	private String memberCode;
	
	private String accHolderName;
	
	private String mobileNumber;
	
	private String jointHolder;
	
	private String sbPlanName;

	private String avaBalance;
	
	private String transactionFor;
	
	private String remarks;
	
	private String txnType;
	
	private String amount;
	
	private String paymentBy;
	
	private String flag;
	
	private String imageApplicant;
	
	private String imageSignature;
	
	private String imgJointPhoto;
	
	private String fDate;
	
	private String tDate;
	
	private String advisorCode;
	
	private String schemeName;
	
	private String openingDate;
	
	private String closingDate;
	
	private String paidInterest;
	
	private String interestDue;
	
	private String netAmount;
	
	private String createdBy;
	
	private String createdDt;

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTxnDate() {
		return txnDate;
	}

	public void setTxnDate(String txnDate) {
		this.txnDate = txnDate;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}

	public String getAccHolderName() {
		return accHolderName;
	}

	public void setAccHolderName(String accHolderName) {
		this.accHolderName = accHolderName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getJointHolder() {
		return jointHolder;
	}

	public void setJointHolder(String jointHolder) {
		this.jointHolder = jointHolder;
	}

	public String getSbPlanName() {
		return sbPlanName;
	}

	public void setSbPlanName(String sbPlanName) {
		this.sbPlanName = sbPlanName;
	}

	public String getAvaBalance() {
		return avaBalance;
	}

	public void setAvaBalance(String avaBalance) {
		this.avaBalance = avaBalance;
	}

	public String getTransactionFor() {
		return transactionFor;
	}

	public void setTransactionFor(String transactionFor) {
		this.transactionFor = transactionFor;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getTxnType() {
		return txnType;
	}

	public void setTxnType(String txnType) {
		this.txnType = txnType;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPaymentBy() {
		return paymentBy;
	}

	public void setPaymentBy(String paymentBy) {
		this.paymentBy = paymentBy;
	}

	public String getImageApplicant() {
		return imageApplicant;
	}

	public void setImageApplicant(String imageApplicant) {
		this.imageApplicant = imageApplicant;
	}

	public String getImageSignature() {
		return imageSignature;
	}

	public void setImageSignature(String imageSignature) {
		this.imageSignature = imageSignature;
	}

	public String getImgJointPhoto() {
		return imgJointPhoto;
	}

	public void setImgJointPhoto(String imgJointPhoto) {
		this.imgJointPhoto = imgJointPhoto;
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

	public String getAdvisorCode() {
		return advisorCode;
	}

	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}

	public String getSchemeName() {
		return schemeName;
	}

	public void setSchemeName(String schemeName) {
		this.schemeName = schemeName;
	}

	public String getOpeningDate() {
		return openingDate;
	}

	public void setOpeningDate(String openingDate) {
		this.openingDate = openingDate;
	}

	public String getClosingDate() {
		return closingDate;
	}

	public void setClosingDate(String closingDate) {
		this.closingDate = closingDate;
	}

	public String getPaidInterest() {
		return paidInterest;
	}

	public void setPaidInterest(String paidInterest) {
		this.paidInterest = paidInterest;
	}

	public String getInterestDue() {
		return interestDue;
	}

	public void setInterestDue(String interestDue) {
		this.interestDue = interestDue;
	}

	public String getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(String netAmount) {
		this.netAmount = netAmount;
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