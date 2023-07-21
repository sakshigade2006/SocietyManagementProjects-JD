package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MandateDepositToBank {
	
 @Id	
 @GeneratedValue(strategy = GenerationType.IDENTITY)	
 private int id;
 private String fromdate;
 private String todate;
 private String fddeposit;
 private String misdeposit;
 private String rddeposit;
 private String savingsdeposit;
 private String savingswithdrawal;
 private String flexideposit;
 private String flexiwithdrawal;
 private String maturityprincipal;
 private String totaldeposit;
 private String totalwithdrawal;
 private String totalbalance;
 private String previousfddeposited;
 private String unencumbered ;
 private String unencumberedamount;
 private String bankname;
 private String bankaddress;
 private String fdno;
 private String fdamt;
 private String maturityamt;
 private String fddate;
 private String maturitydate;
 private String paymentby;
 private String remarks;
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
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
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
public String getFddeposit() {
	return fddeposit;
}
public void setFddeposit(String fddeposit) {
	this.fddeposit = fddeposit;
}
public String getMisdeposit() {
	return misdeposit;
}
public void setMisdeposit(String misdeposit) {
	this.misdeposit = misdeposit;
}
public String getRddeposit() {
	return rddeposit;
}
public void setRddeposit(String rddeposit) {
	this.rddeposit = rddeposit;
}
public String getSavingsdeposit() {
	return savingsdeposit;
}
public void setSavingsdeposit(String savingsdeposit) {
	this.savingsdeposit = savingsdeposit;
}
public String getSavingswithdrawal() {
	return savingswithdrawal;
}
public void setSavingswithdrawal(String savingswithdrawal) {
	this.savingswithdrawal = savingswithdrawal;
}
public String getFlexideposit() {
	return flexideposit;
}
public void setFlexideposit(String flexideposit) {
	this.flexideposit = flexideposit;
}
public String getFlexiwithdrawal() {
	return flexiwithdrawal;
}
public void setFlexiwithdrawal(String flexiwithdrawal) {
	this.flexiwithdrawal = flexiwithdrawal;
}
public String getMaturityprincipal() {
	return maturityprincipal;
}
public void setMaturityprincipal(String maturityprincipal) {
	this.maturityprincipal = maturityprincipal;
}
public String getTotaldeposit() {
	return totaldeposit;
}
public void setTotaldeposit(String totaldeposit) {
	this.totaldeposit = totaldeposit;
}
public String getTotalwithdrawal() {
	return totalwithdrawal;
}
public void setTotalwithdrawal(String totalwithdrawal) {
	this.totalwithdrawal = totalwithdrawal;
}
public String getTotalbalance() {
	return totalbalance;
}
public void setTotalbalance(String totalbalance) {
	this.totalbalance = totalbalance;
}
public String getPreviousfddeposited() {
	return previousfddeposited;
}
public void setPreviousfddeposited(String previousfddeposited) {
	this.previousfddeposited = previousfddeposited;
}
public String getUnencumbered() {
	return unencumbered;
}
public void setUnencumbered(String unencumbered) {
	this.unencumbered = unencumbered;
}
public String getUnencumberedamount() {
	return unencumberedamount;
}
public void setUnencumberedamount(String unencumberedamount) {
	this.unencumberedamount = unencumberedamount;
}
public String getBankname() {
	return bankname;
}
public void setBankname(String bankname) {
	this.bankname = bankname;
}
public String getBankaddress() {
	return bankaddress;
}
public void setBankaddress(String bankaddress) {
	this.bankaddress = bankaddress;
}
public String getFdno() {
	return fdno;
}
public void setFdno(String fdno) {
	this.fdno = fdno;
}
public String getFdamt() {
	return fdamt;
}
public void setFdamt(String fdamt) {
	this.fdamt = fdamt;
}
public String getMaturityamt() {
	return maturityamt;
}
public void setMaturityamt(String maturityamt) {
	this.maturityamt = maturityamt;
}
public String getFddate() {
	return fddate;
}
public void setFddate(String fddate) {
	this.fddate = fddate;
}
public String getMaturitydate() {
	return maturitydate;
}
public void setMaturitydate(String maturitydate) {
	this.maturitydate = maturitydate;
}
public String getPaymentby() {
	return paymentby;
}
public void setPaymentby(String paymentby) {
	this.paymentby = paymentby;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}

}
