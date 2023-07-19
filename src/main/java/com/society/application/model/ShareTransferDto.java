package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ShareTransferDto {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String memberData;
	private String memberName;
	private String doj;
	private String previousShare;
	private String previousShareNo;
	private String faceValue;
	private String branchName;
	private String transferDate;
	private String shareAllotedfrm2;
	private String sharebalance;
	private String transferAmount;
	private String noOfShare;
	private String paymode;
	private String remarks;
	private String certificateNo;
	private String flag;
	private String fDate;
	private String tDate;
	
	public String getCertificateNo() {
		return certificateNo;
	}
	public void setCertificateNo(String certificateNo) {
		this.certificateNo = certificateNo;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMemberData() {
		return memberData;
	}
	public void setMemberData(String memberData) {
		this.memberData = memberData;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getPreviousShare() {
		return previousShare;
	}
	public void setPreviousShare(String previousShare) {
		this.previousShare = previousShare;
	}
	public String getPreviousShareNo() {
		return previousShareNo;
	}
	public void setPreviousShareNo(String previousShareNo) {
		this.previousShareNo = previousShareNo;
	}
	public String getFaceValue() {
		return faceValue;
	}
	public void setFaceValue(String faceValue) {
		this.faceValue = faceValue;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getTransferDate() {
		return transferDate;
	}
	public void setTransferDate(String transferDate) {
		this.transferDate = transferDate;
	}
	public String getShareAllotedfrm2() {
		return shareAllotedfrm2;
	}
	public void setShareAllotedfrm2(String shareAllotedfrm2) {
		this.shareAllotedfrm2 = shareAllotedfrm2;
	}
	public String getSharebalance() {
		return sharebalance;
	}
	public void setSharebalance(String sharebalance) {
		this.sharebalance = sharebalance;
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
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
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
}
