package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GoldLoanPlanMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	private String loanName;
	private String loanType;
	private String emiCollection;
	private String roiType;
	private String emiType;
	private int minAge;
	private int maxAge;
	private Float minAmount;
	private Float maxAmount;
	private String planStatus;
	private int minTerm;
	private int maxTerm;
	private String ROI;
	private String securityType;
	private int processingFee;
	private int legalAmt;
	private int GST;
	private int insuranceAmt;
	private int valuerfees;
	private int gracePeriodDays;
	private String penaltyType;
	private int penalty;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public String getEmiCollection() {
		return emiCollection;
	}
	public void setEmiCollection(String emiCollection) {
		this.emiCollection = emiCollection;
	}
	public String getRoiType() {
		return roiType;
	}
	public void setRoiType(String roiType) {
		this.roiType = roiType;
	}
	public String getEmiType() {
		return emiType;
	}
	public void setEmiType(String emiType) {
		this.emiType = emiType;
	}
	public int getMinAge() {
		return minAge;
	}
	public void setMinAge(int minAge) {
		this.minAge = minAge;
	}
	public int getMaxAge() {
		return maxAge;
	}
	public void setMaxAge(int maxAge) {
		this.maxAge = maxAge;
	}
	public Float getMinAmount() {
		return minAmount;
	}
	public void setMinAmount(Float minAmount) {
		this.minAmount = minAmount;
	}
	public Float getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(Float maxAmount) {
		this.maxAmount = maxAmount;
	}
	public String getPlanStatus() {
		return planStatus;
	}
	public void setPlanStatus(String planStatus) {
		this.planStatus = planStatus;
	}
	public int getMinTerm() {
		return minTerm;
	}
	public void setMinTerm(int minTerm) {
		this.minTerm = minTerm;
	}
	public int getMaxTerm() {
		return maxTerm;
	}
	public void setMaxTerm(int maxTerm) {
		this.maxTerm = maxTerm;
	}
	public String getROI() {
		return ROI;
	}
	public void setROI(String rOI) {
		ROI = rOI;
	}
	public String getSecurityType() {
		return securityType;
	}
	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}
	public int getProcessingFee() {
		return processingFee;
	}
	public void setProcessingFee(int processingFee) {
		this.processingFee = processingFee;
	}
	public int getLegalAmt() {
		return legalAmt;
	}
	public void setLegalAmt(int legalAmt) {
		this.legalAmt = legalAmt;
	}
	public int getGST() {
		return GST;
	}
	public void setGST(int gST) {
		GST = gST;
	}
	public int getInsuranceAmt() {
		return insuranceAmt;
	}
	public void setInsuranceAmt(int insuranceAmt) {
		this.insuranceAmt = insuranceAmt;
	}
	public int getValuerfees() {
		return valuerfees;
	}
	public void setValuerfees(int valuerfees) {
		this.valuerfees = valuerfees;
	}
	public int getGracePeriodDays() {
		return gracePeriodDays;
	}
	public void setGracePeriodDays(int gracePeriodDays) {
		this.gracePeriodDays = gracePeriodDays;
	}
	public String getPenaltyType() {
		return penaltyType;
	}
	public void setPenaltyType(String penaltyType) {
		this.penaltyType = penaltyType;
	}
	public int getPenalty() {
		return penalty;
	}
	public void setPenalty(int penalty) {
		this.penalty = penalty;
	}
}
