package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DayBookModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String selectBranch;
	private String selectLedger;
	private String date;
	private String fDate;
	private String tDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSelectBranch() {
		return selectBranch;
	}
	public void setSelectBranch(String selectBranch) {
		this.selectBranch = selectBranch;
	}
	public String getSelectLedger() {
		return selectLedger;
	}
	public void setSelectLedger(String selectLedger) {
		this.selectLedger = selectLedger;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getfDate() {
		return fDate;
	}
	public void setfDate(String fDate) {
		this.fDate = fDate;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}

}
