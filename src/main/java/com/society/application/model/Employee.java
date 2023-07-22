package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int id;
	@Transient
	private String idVal;
	private String doj;
	private String cspName;
	private String empName;
	private String dob;
	private String age;
	private String relativeName;
	private String relativeRelation;
	private String phoneNo;
	private String nomineeName;
	private String nAge;
	private String nRelation;
	private String address;
	private String pan;
	private String bankAc;
	private String ifsc;
	private String expDetails;
	private String education;
	private String designation;
	private String department;
	private String salary;
	private String bankAccount;
	private String advisorFees;
	private String payMode;
	private String remarks;
	private String isActive;
	private String empType;
	private String memberName;
	private String emailID;
	private String degree;
	private String college;
	private String year;
	private String grade;
	private String comName;
	private String post;
	private String exp;
	private String lastSalary;
	private String cl;
    private String sl;
    private String el;
	private String tDate;
	private String fDate;
	private String empCode;
	private String branch;
	private String rcl;
	private String rsl;
	private String rel;
	private String leaveDate;
	private String LeavePurpose;
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

	public String getIdVal() {
		return idVal;
	}

	public void setIdVal(String idVal) {
		this.idVal = idVal;
	}

	public String getLeaveDate() {
		return leaveDate;
	}

	public void setLeaveDate(String leaveDate) {
		this.leaveDate = leaveDate;
	}

	public String getLeavePurpose() {
		return LeavePurpose;
	}

	public void setLeavePurpose(String leavePurpose) {
		LeavePurpose = leavePurpose;
	}

	public String getRcl() {
		return rcl;
	}

	public void setRcl(String rcl) {
		this.rcl = rcl;
	}

	public String getRsl() {
		return rsl;
	}

	public void setRsl(String rsl) {
		this.rsl = rsl;
	}

	public String getRel() {
		return rel;
	}

	public void setRel(String rel) {
		this.rel = rel;
	}

	public String getEmpType() {
		return empType;
	}

	public void setEmpType(String empType) {
		this.empType = empType;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getEmailID() {
		return emailID;
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getLastSalary() {
		return lastSalary;
	}

	public void setLastSalary(String lastSalary) {
		this.lastSalary = lastSalary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCspName() {
		return cspName;
	}

	public void setCspName(String cspName) {
		this.cspName = cspName;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getRelativeName() {
		return relativeName;
	}

	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}

	public String getRelativeRelation() {
		return relativeRelation;
	}

	public void setRelativeRelation(String relativeRelation) {
		this.relativeRelation = relativeRelation;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getNomineeName() {
		return nomineeName;
	}

	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}

	public String getnAge() {
		return nAge;
	}

	public void setnAge(String nAge) {
		this.nAge = nAge;
	}

	public String getnRelation() {
		return nRelation;
	}

	public void setnRelation(String nRelation) {
		this.nRelation = nRelation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getBankAc() {
		return bankAc;
	}

	public void setBankAc(String bankAc) {
		this.bankAc = bankAc;
	}

	public String getIfsc() {
		return ifsc;
	}

	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}

	public String getExpDetails() {
		return expDetails;
	}

	public void setExpDetails(String expDetails) {
		this.expDetails = expDetails;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getAdvisorFees() {
		return advisorFees;
	}

	public void setAdvisorFees(String advisorFees) {
		this.advisorFees = advisorFees;
	}

	public String getPayMode() {
		return payMode;
	}

	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String gettDate() {
		return tDate;
	}

	public void settDate(String tDate) {
		this.tDate = tDate;
	}

	public String getfDate() {
		return fDate;
	}

	public void setfDate(String fDate) {
		this.fDate = fDate;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public String getCl() {
        return cl;
    }

    public void setCl(String cl) {
        this.cl = cl;
    }

    public String getSl() {
        return sl;
    }

    public void setSl(String sl) {
        this.sl = sl;
    }

    public String getEl() {
        return el;
    }

    public void setEl(String el) {
        this.el = el;
    }

	@Override
	public String toString() {
		return "Employee [id=" + id + ", idVal=" + idVal + ", doj=" + doj + ", cspName=" + cspName + ", empName="
				+ empName + ", dob=" + dob + ", age=" + age + ", relativeName=" + relativeName + ", relativeRelation="
				+ relativeRelation + ", phoneNo=" + phoneNo + ", nomineeName=" + nomineeName + ", nAge=" + nAge
				+ ", nRelation=" + nRelation + ", address=" + address + ", pan=" + pan + ", bankAc=" + bankAc
				+ ", ifsc=" + ifsc + ", expDetails=" + expDetails + ", education=" + education + ", designation="
				+ designation + ", department=" + department + ", salary=" + salary + ", bankAccount=" + bankAccount
				+ ", advisorFees=" + advisorFees + ", payMode=" + payMode + ", remarks=" + remarks + ", isActive="
				+ isActive + ", empType=" + empType + ", memberName=" + memberName + ", emailID=" + emailID
				+ ", degree=" + degree + ", college=" + college + ", year=" + year + ", grade=" + grade + ", comName="
				+ comName + ", post=" + post + ", exp=" + exp + ", lastSalary=" + lastSalary + ", cl=" + cl + ", sl="
				+ sl + ", el=" + el + ", tDate=" + tDate + ", fDate=" + fDate + ", empCode=" + empCode + ", branch="
				+ branch + ", rcl=" + rcl + ", rsl=" + rsl + ", rel=" + rel + ", leaveDate=" + leaveDate
				+ ", LeavePurpose=" + LeavePurpose + "]";
	}

}
