package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ContraEntry {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String selectbranch;
	private String fromdate; 
	private String todate;
	//@GeneratedValue(strategy = GenerationType.AUTO)
	private String receiptno;
	private String txndate;
	private String selectcrledger;
	private String selectdrledger;
	private String amount;
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
	public String getSelectbranch() {
		return selectbranch;
	}
	public void setSelectbranch(String selectbranch) {
		this.selectbranch = selectbranch;
	}
	public String getReceiptno() {
		return receiptno;
	}
	public void setReceiptno(String receiptno) {
		this.receiptno = receiptno;
	}
	public String getTxndate() {
		return txndate;
	}
	public void setTxndate(String txndate) {
		this.txndate = txndate;
	}
	public String getSelectcrledger() {
		return selectcrledger;
	}
	public void setSelectcrledger(String selectcrledger) {
		this.selectcrledger = selectcrledger;
	}
	public String getSelectdrledger() {
		return selectdrledger;
	}
	public void setSelectdrledger(String selectdrledger) {
		this.selectdrledger = selectdrledger;
	}
	
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
