package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LockerMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String lockerLocation;
	private String lockerAddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLockerLocation() {
		return lockerLocation;
	}
	public void setLockerLocation(String lockerLocation) {
		this.lockerLocation = lockerLocation;
	}
	public String getLockerAddress() {
		return lockerAddress;
	}
	public void setLockerAddress(String lockerAddress) {
		this.lockerAddress = lockerAddress;
	}
	
	

}
