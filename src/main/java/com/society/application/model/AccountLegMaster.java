package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.GeneratorType;

@Entity
public class AccountLegMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String ledgername;
	private String selectgroup;
	
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getSelectgroup() {
		return selectgroup;
	}
	public void setSelectgroup(String selectgroup) {
		this.selectgroup = selectgroup;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}