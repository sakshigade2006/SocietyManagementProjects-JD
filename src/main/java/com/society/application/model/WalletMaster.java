package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WalletMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String impsBal;
	
	private String neftBal;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImpsBal() {
		return impsBal;
	}

	public void setImpsBal(String impsBal) {
		this.impsBal = impsBal;
	}

	public String getNeftBal() {
		return neftBal;
	}

	public void setNeftBal(String neftBal) {
		this.neftBal = neftBal;
	}
	
	

}
