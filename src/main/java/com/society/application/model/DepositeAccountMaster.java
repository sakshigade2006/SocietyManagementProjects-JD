package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DepositeAccountMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String depositeAccNo;
	
	private String userId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepositeAccNo() {
		return depositeAccNo;
	}

	public void setDepositeAccNo(String depositeAccNo) {
		this.depositeAccNo = depositeAccNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
}
