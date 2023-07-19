package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class IncentivePaymentReport 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String branch;
	private String paydate;
	private String advisorcode;
	private String advisorname;
	private String month;
	private String amount;
	private String paymode;
	private String chqNo;
	private String sbAccount;
	private String fromdate;
	private String todate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getPaydate() {
		return paydate;
	}
	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}
	public String getAdvisorcode() {
		return advisorcode;
	}
	public void setAdvisorcode(String advisorcode) {
		this.advisorcode = advisorcode;
	}
	public String getAdvisorname() {
		return advisorname;
	}
	public void setAdvisorname(String advisorname) {
		this.advisorname = advisorname;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}
	public String getChqNo() {
		return chqNo;
	}
	public void setChqNo(String chqNo) {
		this.chqNo = chqNo;
	}
	
	public String getFromdate() {
		return fromdate;
	}
	public String getSbAccount() {
		return sbAccount;
	}
	public void setSbAccount(String sbAccount) {
		this.sbAccount = sbAccount;
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

}
