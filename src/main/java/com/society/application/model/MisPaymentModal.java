package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MisPaymentModal {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)

//MIS_POLICY_DETAILS
private int policyno;
private String applicantname;
private String policydate;
private Double policyamount;
private Double intrestamount;
private String schemename;
private String policybranch;
private String membercode;
public int getPolicyno() {
	return policyno;
}
public void setPolicyno(int policyno) {
	this.policyno = policyno;
}
public String getApplicantname() {
	return applicantname;
}
public void setApplicantname(String applicantname) {
	this.applicantname = applicantname;
}
public String getPolicydate() {
	return policydate;
}
public void setPolicydate(String policydate) {
	this.policydate = policydate;
}
public Double getPolicyamount() {
	return policyamount;
}
public void setPolicyamount(Double policyamount) {
	this.policyamount = policyamount;
}
public Double getIntrestamount() {
	return intrestamount;
}
public void setIntrestamount(Double intrestamount) {
	this.intrestamount = intrestamount;
}
public String getSchemename() {
	return schemename;
}
public void setSchemename(String schemename) {
	this.schemename = schemename;
}
public String getPolicybranch() {
	return policybranch;
}
public void setPolicybranch(String policybranch) {
	this.policybranch = policybranch;
}
public String getMembercode() {
	return membercode;
}
public void setMembercode(String membercode) {
	this.membercode = membercode;
}


//MIS_PAYMENT_DETAILS

private Double payamount;
private String  paybranch;
private String paydate;
private String paymentby;
public Double getPayamount() {
	return payamount;
}
public void setPayamount(Double payamount) {
	this.payamount = payamount;
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
public String getPaymentby() {
	return paymentby;
}
public void setPaymentby(String paymentby) {
	this.paymentby = paymentby;
}

}
