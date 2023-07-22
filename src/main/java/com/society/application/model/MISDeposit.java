package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MISDeposit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String mISDeposit;
	private String mISPlanName;
	private String mISMinimumAmount;
	private String mISInterestRate;
	private String mISTermType;
	private String mISTerm;
	private String mISROI;
	private String mISIterval;
	private String mISInterest;
	private String mISMaturityAmount;
	private String mISComN;
	private String mISStatus;
	private String misplancode;
	private String mISmonthfrom;
	private String mISmonthto;
	private String mISdeduction;
	private String createdBy;
	private String createdDt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getmISDeposit() {
		return mISDeposit;
	}
	public void setmISDeposit(String mISDeposit) {
		this.mISDeposit = mISDeposit;
	}
	public String getmISPlanName() {
		return mISPlanName;
	}
	public void setmISPlanName(String mISPlanName) {
		this.mISPlanName = mISPlanName;
	}
	public String getmISMinimumAmount() {
		return mISMinimumAmount;
	}
	public void setmISMinimumAmount(String mISMinimumAmount) {
		this.mISMinimumAmount = mISMinimumAmount;
	}
	public String getmISInterestRate() {
		return mISInterestRate;
	}
	public void setmISInterestRate(String mISInterestRate) {
		this.mISInterestRate = mISInterestRate;
	}
	public String getmISTermType() {
		return mISTermType;
	}
	public void setmISTermType(String mISTermType) {
		this.mISTermType = mISTermType;
	}
	public String getmISTerm() {
		return mISTerm;
	}
	public void setmISTerm(String mISTerm) {
		this.mISTerm = mISTerm;
	}
	public String getmISROI() {
		return mISROI;
	}
	public void setmISROI(String mISROI) {
		this.mISROI = mISROI;
	}
	public String getmISIterval() {
		return mISIterval;
	}
	public void setmISIterval(String mISIterval) {
		this.mISIterval = mISIterval;
	}
	public String getmISInterest() {
		return mISInterest;
	}
	public void setmISInterest(String mISInterest) {
		this.mISInterest = mISInterest;
	}
	public String getmISMaturityAmount() {
		return mISMaturityAmount;
	}
	public void setmISMaturityAmount(String mISMaturityAmount) {
		this.mISMaturityAmount = mISMaturityAmount;
	}
	public String getmISComN() {
		return mISComN;
	}
	public void setmISComN(String mISComN) {
		this.mISComN = mISComN;
	}
	public String getmISStatus() {
		return mISStatus;
	}
	public void setmISStatus(String mISStatus) {
		this.mISStatus = mISStatus;
	}
	public String getmISmonthfrom() {
		return mISmonthfrom;
	}
	public void setmISmonthfrom(String mISmonthfrom) {
		this.mISmonthfrom = mISmonthfrom;
	}
	public String getmISmonthto() {
		return mISmonthto;
	}
	public void setmISmonthto(String mISmonthto) {
		this.mISmonthto = mISmonthto;
	}
	public String getmISdeduction() {
		return mISdeduction;
	}
	public void setmISdeduction(String mISdeduction) {
		this.mISdeduction = mISdeduction;
	}public String getMisplancode() {
	    return misplancode;
	}
	public void setMisplancode(String misplancode) {
	    this.misplancode = misplancode;
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
