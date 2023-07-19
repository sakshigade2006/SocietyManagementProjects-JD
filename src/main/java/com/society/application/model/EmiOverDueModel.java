package com.society.application.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmiOverDueModel {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private int slno;
private String loanid;
private String membercode;
private String membername;
private String loandate;
private String branchname;
private String mobileno;
private String loanname;
private String loanamt;
private String totalpaid;
private String overdue;
private String currentdue;
private String totaldue;
private String advisoramount;

//extra data for i/p
private String plannames;
private String advisorcode;
private String duedate;

//searching
private String selectbranch;
private String selectplan;
private String typeadvisorcode;
private String tilldate;

public String getDuedate() {
	return duedate;
}
public void setDuedate(String duedate) {
	this.duedate = duedate;
}
public String getPlannames() {
	return plannames;
}
public void setPlannames(String plannames) {
	this.plannames = plannames;
}
public String getTypeadvisorcode() {
	return typeadvisorcode;
}
public void setTypeadvisorcode(String typeadvisorcode) {
	this.typeadvisorcode = typeadvisorcode;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getSlno() {
	return slno;
}
public void setSlno(int slno) {
	this.slno = slno;
}
public String getLoanid() {
	return loanid;
}
public void setLoanid(String loanid) {
	this.loanid = loanid;
}
public String getMembercode() {
	return membercode;
}
public void setMembercode(String membercode) {
	this.membercode = membercode;
}
public String getMembername() {
	return membername;
}
public void setMembername(String membername) {
	this.membername = membername;
}
public String getLoandate() {
	return loandate;
}
public void setLoandate(String loandate) {
	this.loandate = loandate;
}
public String getBranchname() {
	return branchname;
}
public void setBranchname(String branchname) {
	this.branchname = branchname;
}
public String getMobileno() {
	return mobileno;
}
public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}
public String getLoanname() {
	return loanname;
}
public void setLoanname(String loanname) {
	this.loanname = loanname;
}
public String getLoanamt() {
	return loanamt;
}
public void setLoanamt(String loanamt) {
	this.loanamt = loanamt;
}
public String getTotalpaid() {
	return totalpaid;
}
public void setTotalpaid(String totalpaid) {
	this.totalpaid = totalpaid;
}
public String getOverdue() {
	return overdue;
}
public void setOverdue(String overdue) {
	this.overdue = overdue;
}
public String getCurrentdue() {
	return currentdue;
}
public void setCurrentdue(String currentdue) {
	this.currentdue = currentdue;
}
public String getTotaldue() {
	return totaldue;
}
public void setTotaldue(String totaldue) {
	this.totaldue = totaldue;
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
public String getSelectplan() {
	return selectplan;
}
public void setSelectplan(String selectplan) {
	this.selectplan = selectplan;
}
public String getAdvisorcode() {
	return advisorcode;
}
public void setAdvisorcode(String advisorcode) {
	this.advisorcode = advisorcode;
}
public String getTilldate() {
	return tilldate;
}
public void setTilldate(String tilldate) {
	this.tilldate = tilldate;
}

}
