package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BalanceSheetDatewise
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	private String selectbranch;
	private String fromdate;
	private String todate;
	private String liablities;
	private String libamount;
	private String asset;
	private String assetamount;
	private String date;
	
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSelectbranch() {
		return selectbranch;
	}
	public void setSelectbranch(String selectbranch) {
		this.selectbranch = selectbranch;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getLiablities() {
		return liablities;
	}
	public void setLiablities(String liablities) {
		this.liablities = liablities;
	}
	public String getLibamount() {
		return libamount;
	}
	public void setLibamount(String libamount) {
		this.libamount = libamount;
	}
	public String getAsset() {
		return asset;
	}
	public void setAsset(String asset) {
		this.asset = asset;
	}
	public String getAssetamount() {
		return assetamount;
	}
	public void setAssetamount(String assetamount) {
		this.assetamount = assetamount;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
