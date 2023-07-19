package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Shares {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int memberId;
	private String previousBalance;
	private String faceValue;
	private String previousNoOfShare;
	private String branch;
	private String transferDate;
	private String shareAllotedFrom;
	private String shareBalance;
	private String transferAmount;
	private String noOfShare;
	private String paymentBy;
	private String remarks;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getPreviousBalance() {
		return previousBalance;
	}

	public void setPreviousBalance(String previousBalance) {
		this.previousBalance = previousBalance;
	}

	public String getFaceValue() {
		return faceValue;
	}

	public void setFaceValue(String faceValue) {
		this.faceValue = faceValue;
	}

	public String getPreviousNoOfShare() {
		return previousNoOfShare;
	}

	public void setPreviousNoOfShare(String previousNoOfShare) {
		this.previousNoOfShare = previousNoOfShare;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(String transferDate) {
		this.transferDate = transferDate;
	}

	public String getShareAllotedFrom() {
		return shareAllotedFrom;
	}

	public void setShareAllotedFrom(String shareAllotedFrom) {
		this.shareAllotedFrom = shareAllotedFrom;
	}

	public String getShareBalance() {
		return shareBalance;
	}

	public void setShareBalance(String shareBalance) {
		this.shareBalance = shareBalance;
	}

	public String getTransferAmount() {
		return transferAmount;
	}

	public void setTransferAmount(String transferAmount) {
		this.transferAmount = transferAmount;
	}

	public String getNoOfShare() {
		return noOfShare;
	}

	public void setNoOfShare(String noOfShare) {
		this.noOfShare = noOfShare;
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

}
