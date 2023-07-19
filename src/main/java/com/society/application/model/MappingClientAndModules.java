package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MappingClientAndModules {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String clientid;
	private String clientName;
	private String shareID;
	private String shareHolding;
	private String shareValues;
	private String loanID;
	private String loanHolding;
	private String loanValues;
	private String createdBy ;
	private String createdDt;
	
	public String getClientid() {
		return clientid;
	}
	public void setClientid(String clientid) {
		this.clientid = clientid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getShareID() {
		return shareID;
	}
	public void setShareID(String shareID) {
		this.shareID = shareID;
	}
	public String getShareHolding() {
		return shareHolding;
	}
	public void setShareHolding(String shareHolding) {
		this.shareHolding = shareHolding;
	}
	public String getShareValues() {
		return shareValues;
	}
	public void setShareValues(String shareValues) {
		this.shareValues = shareValues;
	}
	public String getLoanID() {
		return loanID;
	}
	public void setLoanID(String loanID) {
		this.loanID = loanID;
	}
	public String getLoanHolding() {
		return loanHolding;
	}
	public void setLoanHolding(String loanHolding) {
		this.loanHolding = loanHolding;
	}
	public String getLoanValues() {
		return loanValues;
	}
	public void setLoanValues(String loanValues) {
		this.loanValues = loanValues;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}
	
}
