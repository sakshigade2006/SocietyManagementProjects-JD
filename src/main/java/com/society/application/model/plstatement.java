package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class plstatement {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String fromdate;
private String selectbranch;
private String todate;
private String pldate;
private String branchname;
//private String selectyearfy;
private String fromdatefy;
private String todatefy;
private String selectfyear;

public String getSelectfyear() {
	return selectfyear;
}
public void setSelectfyear(String selectfyear) {
	this.selectfyear = selectfyear;
}
//public String getSelectyearfy() {
//	return selectyearfy;
//}
//public void setSelectyearfy(String selectyearfy) {
//	this.selectyearfy = selectyearfy;
//}
public String getFromdatefy() {
	return fromdatefy;
}
public void setFromdatefy(String fromdatefy) {
	this.fromdatefy = fromdatefy;
}
public String getTodatefy() {
	return todatefy;
}
public void setTodatefy(String todatefy) {
	this.todatefy = todatefy;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFromdate() {
	return fromdate;
}
public void setFromdate(String fromdate) {
	this.fromdate = fromdate;
}
public String getSelectbranch() {
	return selectbranch;
}
public void setSelectbranch(String selectbranch) {
	this.selectbranch = selectbranch;
}
public String getTodate() {
	return todate;
}
public void setTodate(String todate) {
	this.todate = todate;
}
public String getPldate() {
	return pldate;
}
public void setPldate(String pldate) {
	this.pldate = pldate;
}
public String getBranchname() {
	return branchname;
}
public void setBranchname(String branchname) {
	this.branchname = branchname;
}

}
