package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class receiveVoucher {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	private String selectBranch;
	private int receiptNo;
	private String txnDate;
	private String selectType;
	private String directTransfer;
	private String selectLedger;
	private String amount;
	private String narration;
	private String selectBranchSearch;
	private String fDate;
	private String tDate;
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
	public String getSelectBranchSearch() {
		return selectBranchSearch;
	}
	public void setSelectBranchSearch(String selectBranchSearch) {
		this.selectBranchSearch = selectBranchSearch;
	}
	public String getfDate() {
		return fDate;
	}
	public void setfDate(String fDate) {
		this.fDate = fDate;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSelectBranch() {
		return selectBranch;
	}
	public void setSelectBranch(String selectBranch) {
		this.selectBranch = selectBranch;
	}
	public int getReceiptNo() {
		return receiptNo;
	}
	public void setReceiptNo(int receiptNo) {
		this.receiptNo = receiptNo;
	}
	public String getTxnDate() {
		return txnDate;
	}
	public void setTxnDate(String txnDate) {
		this.txnDate = txnDate;
	}
	public String getSelectType() {
		return selectType;
	}
	public void setSelectType(String selectType) {
		this.selectType = selectType;
	}
	public String getDirectTransfer() {
		return directTransfer;
	}
	public void setDirectTransfer(String directTransfer) {
		this.directTransfer = directTransfer;
	}
	public String getSelectLedger() {
		return selectLedger;
	}
	public void setSelectLedger(String selectLedger) {
		this.selectLedger = selectLedger;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getNarration() {
		return narration;
	}
	public void setNarration(String narration) {
		this.narration = narration;
	}
	
}
