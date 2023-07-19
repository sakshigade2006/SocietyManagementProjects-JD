package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MaturityStatusReportModel {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private int policyno;
private String policybranch;
private String applicationname;
private String mdate;
private String applicationdate;
private String username;
private String bname;
private String calculatematurity;
private String netpay;
private String status;
private String duematurity;
private String paidmaturity;
private String payby;

//searching
private String selectbranch;
private String fromdate;
private String todate;

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
public int getPolicyno() {
	return policyno;
}
public void setPolicyno(int policyno) {
	this.policyno = policyno;
}
public String getPolicybranch() {
	return policybranch;
}
public void setPolicybranch(String policybranch) {
	this.policybranch = policybranch;
}
public String getApplicationname() {
	return applicationname;
}
public void setApplicationname(String applicationname) {
	this.applicationname = applicationname;
}
public String getMdate() {
	return mdate;
}
public void setMdate(String mdate) {
	this.mdate = mdate;
}
public String getApplicationdate() {
	return applicationdate;
}
public void setApplicationdate(String applicationdate) {
	this.applicationdate = applicationdate;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getBname() {
	return bname;
}
public void setBname(String bname) {
	this.bname = bname;
}
public String getCalculatematurity() {
	return calculatematurity;
}
public void setCalculatematurity(String calculatematurity) {
	this.calculatematurity = calculatematurity;
}
public String getNetpay() {
	return netpay;
}
public void setNetpay(String netpay) {
	this.netpay = netpay;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getDuematurity() {
	return duematurity;
}
public void setDuematurity(String duematurity) {
	this.duematurity = duematurity;
}
public String getPaidmaturity() {
	return paidmaturity;
}
public void setPaidmaturity(String paidmaturity) {
	this.paidmaturity = paidmaturity;
}
public String getPayby() {
	return payby;
}
public void setPayby(String payby) {
	this.payby = payby;
}

}
