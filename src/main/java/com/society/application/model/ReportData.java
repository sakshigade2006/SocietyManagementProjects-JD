package com.society.application.model;

public class ReportData {

	private String id;
	private String branchName;
	private String fDate;
	private String tDate;
	private String memberName;
	private String memberCode;
	private String mobile;
	private String aadharno;
	private String pan;

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAadharno() {
		return aadharno;
	}

	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
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

	@Override
	public String toString() {
		return "ReportData [id=" + id + ", branchName=" + branchName + ", fDate=" + fDate + ", tDate=" + tDate
				+ ", memberName=" + memberName + ", memberCode=" + memberCode + ", mobile=" + mobile + ", aadharno="
				+ aadharno + ", pan=" + pan + "]";
	}

}
