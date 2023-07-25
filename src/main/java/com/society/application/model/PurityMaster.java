package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PurityMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String purityName;
	private String purityType;
	private String maxLoanPerGram;
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

	public String getPurityName() {
		return purityName;
	}

	public void setPurityName(String purityName) {
		this.purityName = purityName;
	}

	public String getPurityType() {
		return purityType;
	}

	public void setPurityType(String purityType) {
		this.purityType = purityType;
	}

	public String getMaxLoanPerGram() {
		return maxLoanPerGram;
	}

	public void setMaxLoanPerGram(String maxLoanPerGram) {
		this.maxLoanPerGram = maxLoanPerGram;
	}

}
