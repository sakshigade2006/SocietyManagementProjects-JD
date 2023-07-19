package com.society.application.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LoanSearchRequest {
	@JsonProperty("branch")
	private String branch;

	@JsonProperty("fDate")
	private String fDate;

	@JsonProperty("tDate")
	private String tDate;

	@JsonProperty("applicantName")
	private String applicantName;

	@JsonProperty("loanID")
	private String loanID;

	@JsonProperty("memberCode")
	private String memberCode;

	@JsonProperty("planName")
	private String planName;

	@JsonProperty("advisorCode")
	private String advisorCode;

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
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

	public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	public String getLoanID() {
		return loanID;
	}

	public void setLoanID(String loanID) {
		this.loanID = loanID;
	}

	public String getMemberCode() {
		return memberCode;
	}

	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public String getAdvisorCode() {
		return advisorCode;
	}

	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}

}
