package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AdvisorTeamCollection {
	
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;	
  
  private String advisorcode;
  
  private String fromdate;
  
  private String todate;
  
  private String teamselfsummary;
  
  private String date;
  
  private String policyno;
  
  private String ino;
   
  private String applicationname;
  
  private String plancode;
   
  private String amount;
   
  private String clearedamount;
  
  private String unclearedamount;
  
  private String paymode;
  
  private String chqno;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getAdvisorcode() {
	return advisorcode;
}

public void setAdvisorcode(String advisorcode) {
	this.advisorcode = advisorcode;
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

public String getTeamselfsummary() {
	return teamselfsummary;
}

public void setTeamselfsummary(String teamselfsummary) {
	this.teamselfsummary = teamselfsummary;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getPolicyno() {
	return policyno;
}

public void setPolicyno(String policyno) {
	this.policyno = policyno;
}

public String getIno() {
	return ino;
}

public void setIno(String ino) {
	this.ino = ino;
}

public String getApplicationname() {
	return applicationname;
}

public void setApplicationname(String applicationname) {
	this.applicationname = applicationname;
}

public String getPlancode() {
	return plancode;
}

public void setPlancode(String plancode) {
	this.plancode = plancode;
}

public String getAmount() {
	return amount;
}

public void setAmount(String amount) {
	this.amount = amount;
}

public String getClearedamount() {
	return clearedamount;
}

public void setClearedamount(String clearedamount) {
	this.clearedamount = clearedamount;
}

public String getUnclearedamount() {
	return unclearedamount;
}

public void setUnclearedamount(String unclearedamount) {
	this.unclearedamount = unclearedamount;
}

public String getPaymode() {
	return paymode;
}

public void setPaymode(String paymode) {
	this.paymode = paymode;
}

public String getChqno() {
	return chqno;
}

public void setChqno(String chqno) {
	this.chqno = chqno;
}
  
}
