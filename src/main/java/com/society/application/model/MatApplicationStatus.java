package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MatApplicationStatus 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int id;
	private String slno;
	private String policyno;
	private String applicationname;
	private String applicationbranch;
	private String applicationdate;
	private String maturitydate;
	private String appuser;
	private String appremark;
	private String maturityamt;
	
	
	public String getSlno() {
		return slno;
	}
	public void setSlno(String slno) {
		this.slno = slno;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPolicyno() {
		return policyno;
	}
	public void setPolicyno(String policyno) {
		this.policyno = policyno;
	}
	public String getApplicationname() {
		return applicationname;
	}
	public void setApplicationname(String applicationname) {
		this.applicationname = applicationname;
	}
	public String getApplicationbranch() {
		return applicationbranch;
	}
	public void setApplicationbranch(String applicationbranch) {
		this.applicationbranch = applicationbranch;
	}
	public String getApplicationdate() {
		return applicationdate;
	}
	public void setApplicationdate(String applicationdate) {
		this.applicationdate = applicationdate;
	}
	public String getMaturitydate() {
		return maturitydate;
	}
	public void setMaturitydate(String maturitydate) {
		this.maturitydate = maturitydate;
	}
	public String getAppuser() {
		return appuser;
	}
	public void setAppuser(String appuser) {
		this.appuser = appuser;
	}
	public String getAppremark() {
		return appremark;
	}
	public void setAppremark(String appremark) {
		this.appremark = appremark;
	}
	public String getMaturityamt() {
		return maturityamt;
	}
	public void setMaturityamt(String maturityamt) {
		this.maturityamt = maturityamt;
	}
}
