package com.society.application.model;

public class ReportDataAdvisor {
	
	
	private String id;
	private String branchName;
	private String fDate;
	private String tDate;
	private String memberName;
	private String mobileNo;
	private String introducerCode;
	private String selectPosition;
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
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getIntroducerCode() {
		return introducerCode;
	}
	public void setIntroducerCode(String introducerCode) {
		this.introducerCode = introducerCode;
	}
	public String getSelectPosition() {
		return selectPosition;
	}
	public void setSelectPosition(String selectPosition) {
		this.selectPosition = selectPosition;
	}
	@Override
	public String toString() {
		return "ReportDataAdvisor [id=" + id + ", branchName=" + branchName + ", fDate=" + fDate + ", tDate=" + tDate
				+ ", memberName=" + memberName + ", mobileNo=" + mobileNo + ", introducerCode=" + introducerCode
				+ ", selectPosition=" + selectPosition + "]";
	}
	
	
	

}
