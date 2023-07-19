package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class IncentivePayment {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String monthname;
	private String code;
	private String name;
	private String position;
	private String selfbusiness;
	private String teambusiness;
	private String totalbusiness;
	private String totalincentive;
	private String tds;
	private String servicecharge;
	private String allowance;
	private String netpayable;
	private String paybranch;
	private String paydate;
	private String paymentby;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMonthname() {
		return monthname;
	}
	public void setMonthname(String monthname) {
		this.monthname = monthname;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getSelfbusiness() {
		return selfbusiness;
	}
	public void setSelfbusiness(String selfbusiness) {
		this.selfbusiness = selfbusiness;
	}
	public String getTeambusiness() {
		return teambusiness;
	}
	public void setTeambusiness(String teambusiness) {
		this.teambusiness = teambusiness;
	}
	public String getTotalbusiness() {
		return totalbusiness;
	}
	public void setTotalbusiness(String totalbusiness) {
		this.totalbusiness = totalbusiness;
	}
	public String getTotalincentive() {
		return totalincentive;
	}
	public void setTotalincentive(String totalincentive) {
		this.totalincentive = totalincentive;
	}
	public String getTds() {
		return tds;
	}
	public void setTds(String tds) {
		this.tds = tds;
	}
	public String getServicecharge() {
		return servicecharge;
	}
	public void setServicecharge(String servicecharge) {
		this.servicecharge = servicecharge;
	}
	public String getAllowance() {
		return allowance;
	}
	public void setAllowance(String allowance) {
		this.allowance = allowance;
	}
	public String getNetpayable() {
		return netpayable;
	}
	public void setNetpayable(String netpayable) {
		this.netpayable = netpayable;
	}
	public String getPaybranch() {
		return paybranch;
	}
	public void setPaybranch(String paybranch) {
		this.paybranch = paybranch;
	}
	public String getPaydate() {
		return paydate;
	}
	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}
	public String getPaymentby() {
		return paymentby;
	}
	public void setPaymentby(String paymentby) {
		this.paymentby = paymentby;
	}
	
}
