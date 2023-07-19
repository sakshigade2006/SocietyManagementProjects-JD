package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DueEmiReport 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String slno;
	private String loanId;
	private String memberCode;
	private String memberName;
	private String loanDate;
	private String branch;
	private String mobile;
	private String loanName;
	private String loanAmt;
	private String principalPaid;
	private String interestPaid;
	private String totalPaid;
	private String tillDue;
	private String principalDue;
	private String interestDue;
	private String plan;
	private String advisorCode;
	private String tillDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSlno() {
		return slno;
	}
	public void setSlno(String slno) {
		this.slno = slno;
	}
	public String getLoanId() {
		return loanId;
	}
	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	public String getLoanAmt() {
		return loanAmt;
	}
	public void setLoanAmt(String loanAmt) {
		this.loanAmt = loanAmt;
	}
	public String getPrincipalPaid() {
		return principalPaid;
	}
	public void setPrincipalPaid(String principalPaid) {
		this.principalPaid = principalPaid;
	}
	public String getInterestPaid() {
		return interestPaid;
	}
	public void setInterestPaid(String interestPaid) {
		this.interestPaid = interestPaid;
	}
	public String getTotalPaid() {
		return totalPaid;
	}
	public void setTotalPaid(String totalPaid) {
		this.totalPaid = totalPaid;
	}
	public String getTillDue() {
		return tillDue;
	}
	public void setTillDue(String tillDue) {
		this.tillDue = tillDue;
	}
	public String getPrincipalDue() {
		return principalDue;
	}
	public void setPrincipalDue(String principalDue) {
		this.principalDue = principalDue;
	}
	public String getInterestDue() {
		return interestDue;
	}
	public void setInterestDue(String interestDue) {
		this.interestDue = interestDue;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public String getAdvisorCode() {
		return advisorCode;
	}
	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}
	public String getTillDate() {
		return tillDate;
	}
	public void setTillDate(String tillDate) {
		this.tillDate = tillDate;
	} 
	
}
