package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MaturityLiabilityReport {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String fromdate;
	
	private String todate;
	
	private String slno;
	
	private String policyno;
	 
	private String applicantname;
	
	private String branch;
	
	private String advisor;
	
	private String policydate;
	
	private String matdate;
	
	private String planname;
	
	private String plancode;
	
	private String policyamt;
	
	private String totalpaid;
	
	private String calmaturity;

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

	public String getTodate() {
		return todate;
	}

	public void setTodate(String todate) {
		this.todate = todate;
	}
	
	public String getSlno() {
		return slno;
	}

	public void setSlno(String slno) {
		this.slno = slno;
	}

	public String getPolicyno() {
		return policyno;
	}

	public void setPolicyno(String policyno) {
		this.policyno = policyno;
	}

	public String getApplicantname() {
		return applicantname;
	}

	public void setApplicantname(String applicantname) {
		this.applicantname = applicantname;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getAdvisor() {
		return advisor;
	}

	public void setAdvisor(String advisor) {
		this.advisor = advisor;
	}

	public String getPolicydate() {
		return policydate;
	}

	public void setPolicydate(String policydate) {
		this.policydate = policydate;
	}

	public String getMatdate() {
		return matdate;
	}

	public void setMatdate(String matdate) {
		this.matdate = matdate;
	}

	public String getPlanname() {
		return planname;
	}

	public void setPlanname(String planname) {
		this.planname = planname;
	}

	public String getPlancode() {
		return plancode;
	}

	public void setPlancode(String plancode) {
		this.plancode = plancode;
	}

	public String getPolicyamt() {
		return policyamt;
	}

	public void setPolicyamt(String policyamt) {
		this.policyamt = policyamt;
	}

	public String getTotalpaid() {
		return totalpaid;
	}

	public void setTotalpaid(String totalpaid) {
		this.totalpaid = totalpaid;
	}

	public String getCalmaturity() {
		return calmaturity;
	}

	public void setCalmaturity(String calmaturity) {
		this.calmaturity = calmaturity;
	}
	
}
