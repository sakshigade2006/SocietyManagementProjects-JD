package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FixedDeposit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fixedDeposit;
	private String fdPlanName;
	private String fDMinimumAmount;
	private String fDInterestRate;
	private String fDTermType;
	private String fDTerm;
	private String fDInterestType;
	private String fDCompoundIntrval;
	private String fDTotalDeposit;
	private String fDMaturityAmount;
	private String fDComN;
	private String fDStatus;
	private String fplancode;
	private String fmonthfrom;
	private String fmonthto;
	private String froi;
	private String fdeduction;
	private String createdBy;
	private String createdDt;
	
	public String getFplancode() {
		return fplancode;
	}
	public void setFplancode(String fplancode) {
		this.fplancode = fplancode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFixedDeposit() {
		return fixedDeposit;
	}
	public void setFixedDeposit(String fixedDeposit) {
		this.fixedDeposit = fixedDeposit;
	}
	public String getFdPlanName() {
		return fdPlanName;
	}
	public void setFdPlanName(String fdPlanName) {
		this.fdPlanName = fdPlanName;
	}
	public String getfDMinimumAmount() {
		return fDMinimumAmount;
	}
	public void setfDMinimumAmount(String fDMinimumAmount) {
		this.fDMinimumAmount = fDMinimumAmount;
	}
	public String getfDInterestRate() {
		return fDInterestRate;
	}
	public void setfDInterestRate(String fDInterestRate) {
		this.fDInterestRate = fDInterestRate;
	}
	public String getfDTermType() {
		return fDTermType;
	}
	public void setfDTermType(String fDTermType) {
		this.fDTermType = fDTermType;
	}
	public String getfDTerm() {
		return fDTerm;
	}
	public void setfDTerm(String fDTerm) {
		this.fDTerm = fDTerm;
	}
	public String getfDInterestType() {
		return fDInterestType;
	}
	public void setfDInterestType(String fDInterestType) {
		this.fDInterestType = fDInterestType;
	}
	public String getfDCompoundIntrval() {
		return fDCompoundIntrval;
	}
	public void setfDCompoundIntrval(String fDCompoundIntrval) {
		this.fDCompoundIntrval = fDCompoundIntrval;
	}
	public String getfDTotalDeposit() {
		return fDTotalDeposit;
	}
	public void setfDTotalDeposit(String fDTotalDeposit) {
		this.fDTotalDeposit = fDTotalDeposit;
	}
	public String getfDMaturityAmount() {
		return fDMaturityAmount;
	}
	public void setfDMaturityAmount(String fDMaturityAmount) {
		this.fDMaturityAmount = fDMaturityAmount;
	}
	public String getfDComN() {
		return fDComN;
	}
	public void setfDComN(String fDComN) {
		this.fDComN = fDComN;
	}
	public String getfDStatus() {
		return fDStatus;
	}
	public void setfDStatus(String fDStatus) {
		this.fDStatus = fDStatus;
	}
	public String getFmonthfrom() {
		return fmonthfrom;
	}
	public void setFmonthfrom(String fmonthfrom) {
		this.fmonthfrom = fmonthfrom;
	}
	public String getFmonthto() {
		return fmonthto;
	}
	public void setFmonthto(String fmonthto) {
		this.fmonthto = fmonthto;
	}
	public String getFroi() {
		return froi;
	}
	public void setFroi(String froi) {
		this.froi = froi;
	}
	public String getFdeduction() {
		return fdeduction;
	}
	public void setFdeduction(String fdeduction) {
		this.fdeduction = fdeduction;
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
