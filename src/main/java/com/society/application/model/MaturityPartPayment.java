package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MaturityPartPayment {
    //SearchBox
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String policyno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPolicyno() {
		return policyno;
	}
	public void setPolicyno(String policyno) {
		this.policyno = policyno;
	}
	
	//Policy Details
	private String applicantname;
	private String planname;
	private String plancode;
	private String term;
	private String policyamount;
	private String actualmaturity;
	private String maturitydate;
	private String syspayable;
	private String deduction;
	private String adjustment;
	private String netpayable;
	private String approvalbranch;
	private String approvaldate;
	private String approveremarks;
	private String approveuser;
	public String getApplicantname() {
		return applicantname;
	}
	public void setApplicantname(String applicantname) {
		this.applicantname = applicantname;
	}
	public String getPlanname() {
		return planname;
	}
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getPolicyamount() {
		return policyamount;
	}
	public void setPolicyamount(String policyamount) {
		this.policyamount = policyamount;
	}
	public String getActualmaturity() {
		return actualmaturity;
	}
	public void setActualmaturity(String actualmaturity) {
		this.actualmaturity = actualmaturity;
	}
	public String getSyspayable() {
		return syspayable;
	}
	public void setSyspayable(String syspayable) {
		this.syspayable = syspayable;
	}
	public String getDeduction() {
		return deduction;
	}
	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}
	public String getAdjustment() {
		return adjustment;
	}
	public void setAdjustment(String adjustment) {
		this.adjustment = adjustment;
	}
	public String getApprovalbranch() {
		return approvalbranch;
	}
	public void setApprovalbranch(String approvalbranch) {
		this.approvalbranch = approvalbranch;
	}
	public String getApprovaldate() {
		return approvaldate;
	}
	public void setApprovaldate(String approvaldate) {
		this.approvaldate = approvaldate;
	}
	public String getApproveremarks() {
		return approveremarks;
	}
	public void setApproveremarks(String approveremarks) {
		this.approveremarks = approveremarks;
	}
	
	public String getPlancode() {
		return plancode;
	}
	public void setPlancode(String plancode) {
		this.plancode = plancode;
	}
	public String getMaturitydate() {
		return maturitydate;
	}
	public void setMaturitydate(String maturitydate) {
		this.maturitydate = maturitydate;
	}
	public String getNetpayable() {
		return netpayable;
	}
	public void setNetpayable(String netpayable) {
		this.netpayable = netpayable;
	}
	public String getApproveuser() {
		return approveuser;
	}
	public void setApproveuser(String approveuser) {
		this.approveuser = approveuser;
	}

	//Payable Details
	private String amount;
	private String paidamount;
	private String dueamount;
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPaidamount() {
		return paidamount;
	}
	public void setPaidamount(String paidamount) {
		this.paidamount = paidamount;
	}
	public String getDueamount() {
		return dueamount;
	}
	public void setDueamount(String dueamount) {
		this.dueamount = dueamount;
	}
	//Payment Details
	private String paymentdate;
	private String paybranch;
	private String paymentby;
	private String payremarks;
	public String getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(String paymentdate) {
		this.paymentdate = paymentdate;
	}
	public String getPaybranch() {
		return paybranch;
	}
	public void setPaybranch(String paybranch) {
		this.paybranch = paybranch;
	}
	public String getPaymentby() {
		return paymentby;
	}
	public void setPaymentby(String paymentby) {
		this.paymentby = paymentby;
	}
	public String getPayremarks() {
		return payremarks;
	}
	public void setPayremarks(String payremarks) {
		this.payremarks = payremarks;
	}
	
	
}
