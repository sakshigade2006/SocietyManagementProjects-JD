package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class DesignationMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	private String designation;
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
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	

}
