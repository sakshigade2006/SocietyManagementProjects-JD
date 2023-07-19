package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanSheetPrint 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String loanId; 
	private String loanType;
	private String appName;
	private String address;
	private String mobileLoanDate;
	private String loanAmount;
	private String totalReturnTotalPaid;
	private String balance;
	private String payDate;
	private String emiAmount;
	private String termMode;
	private String overDue;
	private String advance;
	private String emiDue;
	private String remarks;
	private String sign;
	private String plan;
	private String advisorCode;
	private String tillDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLoanId() {
		return loanId;
	}
	public void setLoanId(String loanId) {
		this.loanId = loanId;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobileLoanDate() {
		return mobileLoanDate;
	}
	public void setMobileLoanDate(String mobileLoanDate) {
		this.mobileLoanDate = mobileLoanDate;
	}
	public String getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	public String getTotalReturnTotalPaid() {
		return totalReturnTotalPaid;
	}
	public void setTotalReturnTotalPaid(String totalReturnTotalPaid) {
		this.totalReturnTotalPaid = totalReturnTotalPaid;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getEmiAmount() {
		return emiAmount;
	}
	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}
	public String getTermMode() {
		return termMode;
	}
	public void setTermMode(String termMode) {
		this.termMode = termMode;
	}
	public String getOverDue() {
		return overDue;
	}
	public void setOverDue(String overDue) {
		this.overDue = overDue;
	}
	public String getAdvance() {
		return advance;
	}
	public void setAdvance(String advance) {
		this.advance = advance;
	}
	public String getEmiDue() {
		return emiDue;
	}
	public void setEmiDue(String emiDue) {
		this.emiDue = emiDue;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
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
