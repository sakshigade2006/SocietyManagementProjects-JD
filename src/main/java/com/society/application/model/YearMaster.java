package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class YearMaster {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String Month;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getMonth() {
	return Month;
}
public void setMonth(String month) {
	Month = month;
}
}
