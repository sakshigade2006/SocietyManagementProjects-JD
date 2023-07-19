package com.society.application.model;

import java.time.ZonedDateTime;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanEMIOutstandingReport {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String branch;
	private String plan;
	private String advisorCode;
	private String datee;
	private String tillDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public String getAdvisorCode() {
		return advisorCode;
	}
	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}
	public String getDatee() {
		return datee;
	}
	public void setDatee(String datee) {
		this.datee = datee;
	}
	public String getTillDate() {
		return tillDate;
	}
//	public ZonedDateTime getDatee() {
//		return datee;
//	}
//	public void setDatee(ZonedDateTime datee) {
//		this.datee = datee;
//	}
	public void setTillDate(String tillDate) {
		this.tillDate = tillDate;
	}
	
}
