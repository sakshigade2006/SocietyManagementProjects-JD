package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MaturityPaymentReportModel {
@Id
@GeneratedValue (strategy = GenerationType.AUTO)
private int id;
private int slno;
private String policyno;
private String applicantname;
private String paybranch;
private String paydate;
private String approvadate;
private String amount;
private String principal;
private String intrest;
private String paymode;
private String sbaccount;
private String payremark;
private String selectbranch;
private String fromdate;
private String todate;
private String appUser;
private String netPay;

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
public String getApplicantname() {
	return applicantname;
}
public void setApplicantname(String applicantname) {
	this.applicantname = applicantname;
}
public String getPaybranch() {
	return paybranch;
}
public void setPaybranch(String paybranch) {
	this.paybranch = paybranch;
}
public String getPaydate() {
	return paydate;
}
public void setPaydate(String paydate) {
	this.paydate = paydate;
}
public String getApprovadate() {
	return approvadate;
}
public void setApprovadate(String approvadate) {
	this.approvadate = approvadate;
}
public String getAmount() {
	return amount;
}
public void setAmount(String amount) {
	this.amount = amount;
}
public String getPrincipal() {
	return principal;
}
public void setPrincipal(String principal) {
	this.principal = principal;
}
public String getIntrest() {
	return intrest;
}
public void setIntrest(String intrest) {
	this.intrest = intrest;
}
public String getPaymode() {
	return paymode;
}
public void setPaymode(String paymode) {
	this.paymode = paymode;
}
public String getPayremark() {
	return payremark;
}
public void setPayremark(String payremark) {
	this.payremark = payremark;
}
public String getPolicyno() {
	return policyno;
}
public void setPolicyno(String policyno) {
	this.policyno = policyno;
}
public String getSbaccount() {
	return sbaccount;
}
public void setSbaccount(String sbaccount) {
	this.sbaccount = sbaccount;
}
public String getAppUser() {
	return appUser;
}
public void setAppUser(String appUser) {
	this.appUser = appUser;
}
public String getNetPay() {
	return netPay;
}
public void setNetPay(String netPay) {
	this.netPay = netPay;
}

}
