package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RecurringDueReportModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String policyno;
	private String applicantname;
	private String branchname;
	private String plancode;
	private String mobileno;
	private String txndate;
	private String paidinst;
	private String paidamount;
	private String dueinst;
	private String dueamount;
	private String advisor;
	private String advisoramount;
	
	//variables for searching 
	private String selectbranch;
	private String fromdate;
	private String todate;
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
	public String getApplicantname() {
		return applicantname;
	}
	public void setApplicantname(String applicantname) {
		this.applicantname = applicantname;
	}
	public String getBranchname() {
		return branchname;
	}
	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}
	public String getPlancode() {
		return plancode;
	}
	public void setPlancode(String plancode) {
		this.plancode = plancode;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getTxndate() {
		return txndate;
	}
	public void setTxndate(String txndate) {
		this.txndate = txndate;
	}
	public String getPaidinst() {
		return paidinst;
	}
	public void setPaidinst(String paidinst) {
		this.paidinst = paidinst;
	}
	public String getPaidamount() {
		return paidamount;
	}
	public void setPaidamount(String paidamount) {
		this.paidamount = paidamount;
	}
	public String getDueinst() {
		return dueinst;
	}
	public void setDueinst(String dueinst) {
		this.dueinst = dueinst;
	}
	public String getDueamount() {
		return dueamount;
	}
	public void setDueamount(String dueamount) {
		this.dueamount = dueamount;
	}
	public String getAdvisor() {
		return advisor;
	}
	public void setAdvisor(String advisor) {
		this.advisor = advisor;
	}
	public String getAdvisoramount() {
		return advisoramount;
	}
	public void setAdvisoramount(String advisoramount) {
		this.advisoramount = advisoramount;
	}
	public String getSelectbranch() {
		return selectbranch;
	}
	public void setSelectbranch(String selectbranch) {
		this.selectbranch = selectbranch;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	
}
