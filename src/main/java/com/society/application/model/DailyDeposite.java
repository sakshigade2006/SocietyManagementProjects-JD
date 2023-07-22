package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DailyDeposite {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String dddailyDeposit;
	private String ddplanName;
	private String ddminimumAmount;
	private String ddinterestRate;
	private String ddtermType;
	private String ddterm;
	private String ddcomN;
	private String ddcomR;
	private String ddcompoundIntrval;
	private String ddtotalDeposit;
	private String ddmaturityAmount;
	private String ddanyAmountPlanIsFlexi;
	private String ddgrace;
	private String ddlatefine;
	private String ddactiveInactive;
	private String dplancode;
	private String dinstfrom;
	private String dinstto;
	private String droi;
	private String ddeduction;
	private String createdBy;
	private String createdDt;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDddailyDeposit() {
		return dddailyDeposit;
	}
	public void setDddailyDeposit(String dddailyDeposit) {
		this.dddailyDeposit = dddailyDeposit;
	}
	public String getDdplanName() {
		return ddplanName;
	}
	public void setDdplanName(String ddplanName) {
		this.ddplanName = ddplanName;
	}
	public String getDdminimumAmount() {
		return ddminimumAmount;
	}
	public void setDdminimumAmount(String ddminimumAmount) {
		this.ddminimumAmount = ddminimumAmount;
	}
	public String getDdinterestRate() {
		return ddinterestRate;
	}
	public void setDdinterestRate(String ddinterestRate) {
		this.ddinterestRate = ddinterestRate;
	}
	public String getDdtermType() {
		return ddtermType;
	}
	public void setDdtermType(String ddtermType) {
		this.ddtermType = ddtermType;
	}
	public String getDdterm() {
		return ddterm;
	}
	public void setDdterm(String ddterm) {
		this.ddterm = ddterm;
	}
	public String getDdcomN() {
		return ddcomN;
	}
	public void setDdcomN(String ddcomN) {
		this.ddcomN = ddcomN;
	}
	public String getDdcomR() {
		return ddcomR;
	}
	public void setDdcomR(String ddcomR) {
		this.ddcomR = ddcomR;
	}
	public String getDdcompoundIntrval() {
		return ddcompoundIntrval;
	}
	public void setDdcompoundIntrval(String ddcompoundIntrval) {
		this.ddcompoundIntrval = ddcompoundIntrval;
	}
	public String getDdtotalDeposit() {
		return ddtotalDeposit;
	}
	public void setDdtotalDeposit(String ddtotalDeposit) {
		this.ddtotalDeposit = ddtotalDeposit;
	}
	public String getDdmaturityAmount() {
		return ddmaturityAmount;
	}
	public void setDdmaturityAmount(String ddmaturityAmount) {
		this.ddmaturityAmount = ddmaturityAmount;
	}
	public String getDdanyAmountPlanIsFlexi() {
		return ddanyAmountPlanIsFlexi;
	}
	public void setDdanyAmountPlanIsFlexi(String ddanyAmountPlanIsFlexi) {
		this.ddanyAmountPlanIsFlexi = ddanyAmountPlanIsFlexi;
	}
	public String getDdgrace() {
		return ddgrace;
	}
	public void setDdgrace(String ddgrace) {
		this.ddgrace = ddgrace;
	}
	public String getDdlatefine() {
		return ddlatefine;
	}
	public void setDdlatefine(String ddlatefine) {
		this.ddlatefine = ddlatefine;
	}
	public String getDdactiveInactive() {
		return ddactiveInactive;
	}
	public void setDdactiveInactive(String ddactiveInactive) {
		this.ddactiveInactive = ddactiveInactive;
	}
	public String getDplancode() {
		return dplancode;
	}
	public void setDplancode(String dplancode) {
		this.dplancode = dplancode;
	}
	public String getDinstfrom() {
		return dinstfrom;
	}
	public void setDinstfrom(String dinstfrom) {
		this.dinstfrom = dinstfrom;
	}
	public String getDinstto() {
		return dinstto;
	}
	public void setDinstto(String dinstto) {
		this.dinstto = dinstto;
	}
	public String getDroi() {
		return droi;
	}
	public void setDroi(String droi) {
		this.droi = droi;
	}
	public String getDdeduction() {
		return ddeduction;
	}
	public void setDdeduction(String ddeduction) {
		this.ddeduction = ddeduction;
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
	@Override
	public String toString() {
		return "DailyDeposite [id=" + id + ", dddailyDeposit=" + dddailyDeposit + ", ddplanName=" + ddplanName
				+ ", ddminimumAmount=" + ddminimumAmount + ", ddinterestRate=" + ddinterestRate + ", ddtermType="
				+ ddtermType + ", ddterm=" + ddterm + ", ddcomN=" + ddcomN + ", ddcomR=" + ddcomR
				+ ", ddcompoundIntrval=" + ddcompoundIntrval + ", ddtotalDeposit=" + ddtotalDeposit
				+ ", ddmaturityAmount=" + ddmaturityAmount + ", ddanyAmountPlanIsFlexi=" + ddanyAmountPlanIsFlexi
				+ ", ddgrace=" + ddgrace + ", ddlatefine=" + ddlatefine + ", ddactiveInactive=" + ddactiveInactive
				+ "]";
	}
	
}
