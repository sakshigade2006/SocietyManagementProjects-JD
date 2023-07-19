package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class InvestmentSummarymodel {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)

//table variables
private int id;
private String bccode;
private String branchname;
private String newbuisness;
private String fees;
private String renewbuisness;
private String latefine;
private String investmentdate;

//search variables
private String selectbranch;
private String fromdate;
private String todate;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBccode() {
	return bccode;
}
public void setBccode(String bccode) {
	this.bccode = bccode;
}
public String getBranchname() {
	return branchname;
}
public void setBranchname(String branchname) {
	this.branchname = branchname;
}
public String getNewbuisness() {
	return newbuisness;
}
public void setNewbuisness(String newbuisness) {
	this.newbuisness = newbuisness;
}
public String getFees() {
	return fees;
}
public void setFees(String fees) {
	this.fees = fees;
}
public String getRenewbuisness() {
	return renewbuisness;
}
public void setRenewbuisness(String renewbuisness) {
	this.renewbuisness = renewbuisness;
}
public String getLatefine() {
	return latefine;
}
public void setLatefine(String latefine) {
	this.latefine = latefine;
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
public String getInvestmentdate() {
	return investmentdate;
}
public void setInvestmentdate(String investmentdate) {
	this.investmentdate = investmentdate;
}

}
