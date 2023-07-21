package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SavingAccount {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String schemeName;
	
	private String annualROI;
	
	private String minOpeningAmount;
	
	private String monthlyAvgBal;
	
	private String lockInbalance;
	
	private String smsCharges;
	
	private String smsInterval;
	
	private String freeIfscCollectionpm;
	
	private String freeTransferspm;
	
	private String singleTxnLimit;
	
	private String dailyMAXLimit;
	
	private String weeklyMAXLimit;
	
	private String monthlyMAXLimit;
	
	private String serviceCharges; 
	
	private String serviceInterval; 
	
	private String cardCharge;
	
	private String cardLimitMonthly;
	
	private String cardTotalLimitYearly;
	
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

	public String getSchemeName() {
		return schemeName;
	}

	public void setSchemeName(String schemeName) {
		this.schemeName = schemeName;
	}

	public String getAnnualROI() {
		return annualROI;
	}

	public void setAnnualROI(String annualROI) {
		this.annualROI = annualROI;
	}

	public String getMinOpeningAmount() {
		return minOpeningAmount;
	}

	public void setMinOpeningAmount(String minOpeningAmount) {
		this.minOpeningAmount = minOpeningAmount;
	}

	public String getMonthlyAvgBal() {
		return monthlyAvgBal;
	}

	public void setMonthlyAvgBal(String monthlyAvgBal) {
		this.monthlyAvgBal = monthlyAvgBal;
	}

	public String getLockInbalance() {
		return lockInbalance;
	}

	public void setLockInbalance(String lockInbalance) {
		this.lockInbalance = lockInbalance;
	}

	public String getSmsCharges() {
		return smsCharges;
	}

	public void setSmsCharges(String smsCharges) {
		this.smsCharges = smsCharges;
	}

	public String getSmsInterval() {
		return smsInterval;
	}

	public void setSmsInterval(String smsInterval) {
		this.smsInterval = smsInterval;
	}

	public String getFreeIfscCollectionpm() {
		return freeIfscCollectionpm;
	}

	public void setFreeIfscCollectionpm(String freeIfscCollectionpm) {
		this.freeIfscCollectionpm = freeIfscCollectionpm;
	}

	public String getFreeTransferspm() {
		return freeTransferspm;
	}

	public void setFreeTransferspm(String freeTransferspm) {
		this.freeTransferspm = freeTransferspm;
	}

	public String getSingleTxnLimit() {
		return singleTxnLimit;
	}

	public void setSingleTxnLimit(String singleTxnLimit) {
		this.singleTxnLimit = singleTxnLimit;
	}

	public String getDailyMAXLimit() {
		return dailyMAXLimit;
	}

	public void setDailyMAXLimit(String dailyMAXLimit) {
		this.dailyMAXLimit = dailyMAXLimit;
	}

	public String getWeeklyMAXLimit() {
		return weeklyMAXLimit;
	}

	public void setWeeklyMAXLimit(String weeklyMAXLimit) {
		this.weeklyMAXLimit = weeklyMAXLimit;
	}

	public String getMonthlyMAXLimit() {
		return monthlyMAXLimit;
	}

	public void setMonthlyMAXLimit(String monthlyMAXLimit) {
		this.monthlyMAXLimit = monthlyMAXLimit;
	}

	public String getServiceCharges() {
		return serviceCharges;
	}

	public void setServiceCharges(String serviceCharges) {
		this.serviceCharges = serviceCharges;
	}

	public String getServiceInterval() {
		return serviceInterval;
	}

	public void setServiceInterval(String serviceInterval) {
		this.serviceInterval = serviceInterval;
	}

	public String getCardCharge() {
		return cardCharge;
	}

	public void setCardCharge(String cardCharge) {
		this.cardCharge = cardCharge;
	}

	public String getCardLimitMonthly() {
		return cardLimitMonthly;
	}

	public void setCardLimitMonthly(String cardLimitMonthly) {
		this.cardLimitMonthly = cardLimitMonthly;
	}

	public String getCardTotalLimitYearly() {
		return cardTotalLimitYearly;
	}

	public void setCardTotalLimitYearly(String cardTotalLimitYearly) {
		this.cardTotalLimitYearly = cardTotalLimitYearly;
	}

	@Override
	public String toString() {
		return "SavingAccount [id=" + id + ", schemeName=" + schemeName + ", annualROI=" + annualROI
				+ ", minOpeningAmount=" + minOpeningAmount + ", monthlyAvgBal=" + monthlyAvgBal + ", lockInbalance="
				+ lockInbalance + ", smsCharges=" + smsCharges + ", smsInterval=" + smsInterval
				+ ", freeIfscCollectionpm=" + freeIfscCollectionpm + ", freeTransferspm=" + freeTransferspm
				+ ", singleTxnLimit=" + singleTxnLimit + ", dailyMAXLimit=" + dailyMAXLimit + ", weeklyMAXLimit="
				+ weeklyMAXLimit + ", monthlyMAXLimit=" + monthlyMAXLimit + ", serviceCharges=" + serviceCharges
				+ ", serviceInterval=" + serviceInterval + ", cardCharge=" + cardCharge + ", cardLimitMonthly="
				+ cardLimitMonthly + ", cardTotalLimitYearly=" + cardTotalLimitYearly + "]";
	}
	
	
}
