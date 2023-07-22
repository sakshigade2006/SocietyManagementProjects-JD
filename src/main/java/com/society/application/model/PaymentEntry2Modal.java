package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PaymentEntry2Modal {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String selectbranch;
private String reciept;
private String txndate;
private String selectledger;
private String selectype;
private String dtransfer;
private String amount;
private String narration;
private String selectBranchSearch;
private String fDate;
private String todate;
private String createdBy;
private String CreatedDt;  
public String getCreatedBy() {
	return createdBy;
}
public void setCreatedBy(String createdBy) {
	this.createdBy = createdBy;
}
public String getCreatedDt() {
	return CreatedDt;
}
public void setCreatedDt(String createdDt) {
	CreatedDt = createdDt;
}
public String getTodate() {
	return todate;
}
public void setTodate(String todate) {
	this.todate = todate;
}
public String getfDate() {
	return fDate;
}
public void setfDate(String fDate) {
	this.fDate = fDate;
}
public String getReciept() {
	return reciept;
}
public void setReciept(String reciept) {
	this.reciept = reciept;
}

public String getSelectBranchSearch() {
	return selectBranchSearch;
}
public void setSelectBranchSearch(String selectBranchSearch) {
	this.selectBranchSearch = selectBranchSearch;
}
public String getAmount() {
	return amount;
}
public void setAmount(String amount) {
	this.amount = amount;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSelectbranch() {
	return selectbranch;
}
public void setSelectbranch(String selectbranch) {
	this.selectbranch = selectbranch;
}
public String getTxndate() {
	return txndate;
}
public void setTxndate(String txndate) {
	this.txndate = txndate;
}
public String getSelectledger() {
	return selectledger;
}
public void setSelectledger(String selectledger) {
	this.selectledger = selectledger;
}
public String getSelectype() {
	return selectype;
}
public void setSelectype(String selectype) {
	this.selectype = selectype;
}
public String getDtransfer() {
	return dtransfer;
}
public void setDtransfer(String dtransfer) {
	this.dtransfer = dtransfer;
}
public String getNarration() {
	return narration;
}
public void setNarration(String narration) {
	this.narration = narration;
}

}
