package com.society.application.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanPlanMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String loanDate;
	private String closedFlag;
	private String loanName;
	private String loanType;
	private String emiCollection;
	private String roiType;
	private String emiType;
	private String minAge;
	private String maxAge;
	private String minAmount;
	private String maxAmount;
	private String planStatus;
	private String mStringerm;
	private String maxTerm;
	private String ROI;
	private String securityType;
	private String processingFee;
	private String legalAmt;
	private String GST;
	private String insuranceAmt;
	private String valuerfees;
	private String gracePeriodDays;
	private String penaltyType;
	private String penalty;
	private String loanString;
	private String searchMemberCode;
	private String relativeDetails;
	private String DOB;
	private String phoneno;
	private String smsStatus;
	private String address;
	private String pin;
	private String cspName;
	private String mode;
	private String loanROI;
	private String loanAmount;
	private String emiAmount;
	private String loanPurpose;
	private String guarantorCode;
	private String guarantorName;
	private String addressGuarantor;
	private String pincodeGuarantor;
	private String guarantorphone;
	private String coApplicantCode;
	private String memberRelativesName;
	private String addressco;
	private String pincodeco;
	private String phoneco;
	private String securityDetails;
	private String advisorCode;
	private String advisorName;
	private String approvalString;
	private String approvalStatus;
	private String paymentStatus;
	private String paymode;
	private String charges;
	private String remarks;
	private String totalStringerest;
	private String totalPrinciple;
	private String totalPayble;
	private String totalStringerestDue;
	private String totalDueAmt;
	private String totalPrincipleDue;
	private String dueString;
	private String advancePaid;
	private String paymentString;
	private String deductLateFine;
	private String payableAmount;
	private String totalPayableAmt;
	private String StringerestPaid;
	private String principalPaid;
	private String totalPaid;
	private String curentStringerest;
	private String lateFine;
	private String payableStringerest;
	private String payablePrincipal;
	private String payablePrincipalaymentString;
	private String memberData;
	private String age;
	private String planTerm;

	
	
	public String getPlanTerm() {
		return planTerm;
	}

	public void setPlanTerm(String planTerm) {
		this.planTerm = planTerm;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMemberData() {
		return memberData;
	}

	public void setMemberData(String memberData) {
		this.memberData = memberData;
	}

	public String getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}

	public String getStringerestPaid() {
		return StringerestPaid;
	}

	public void setStringerestPaid(String StringerestPaid) {
		this.StringerestPaid = StringerestPaid;
	}

	public String getPrincipalPaid() {
		return principalPaid;
	}

	public void setPrincipalPaid(String principalPaid) {
		this.principalPaid = principalPaid;
	}

	public String getTotalPaid() {
		return totalPaid;
	}

	public void setTotalPaid(String totalPaid) {
		this.totalPaid = totalPaid;
	}

	public String getCurentStringerest() {
		return curentStringerest;
	}

	public void setCurentStringerest(String curentStringerest) {
		this.curentStringerest = curentStringerest;
	}

	public String getLateFine() {
		return lateFine;
	}

	public void setLateFine(String lateFine) {
		this.lateFine = lateFine;
	}

	public String getPayableStringerest() {
		return payableStringerest;
	}

	public void setPayableStringerest(String payableStringerest) {
		this.payableStringerest = payableStringerest;
	}

	public String getPayablePrincipal() {
		return payablePrincipal;
	}

	public void setPayablePrincipal(String payablePrincipal) {
		this.payablePrincipal = payablePrincipal;
	}

	public String getPayablePrincipalaymentString() {
		return payablePrincipalaymentString;
	}

	public void setPayablePrincipalaymentString(String payablePrincipalaymentString) {
		this.payablePrincipalaymentString = payablePrincipalaymentString;
	}

	public String getTotalStringerest() {
		return totalStringerest;
	}

	public void setTotalStringerest(String totalStringerest) {
		this.totalStringerest = totalStringerest;
	}

	public String getTotalPrinciple() {
		return totalPrinciple;
	}

	public void setTotalPrinciple(String totalPrinciple) {
		this.totalPrinciple = totalPrinciple;
	}

	public String getTotalPayble() {
		return totalPayble;
	}

	public void setTotalPayble(String totalPayble) {
		this.totalPayble = totalPayble;
	}

	public String getTotalStringerestDue() {
		return totalStringerestDue;
	}

	public void setTotalStringerestDue(String totalStringerestDue) {
		this.totalStringerestDue = totalStringerestDue;
	}

	public String getTotalDueAmt() {
		return totalDueAmt;
	}

	public void setTotalDueAmt(String totalDueAmt) {
		this.totalDueAmt = totalDueAmt;
	}

	public String getTotalPrincipleDue() {
		return totalPrincipleDue;
	}

	public void setTotalPrincipleDue(String totalPrincipleDue) {
		this.totalPrincipleDue = totalPrincipleDue;
	}

	public String getDueString() {
		return dueString;
	}

	public void setDueString(String dueString) {
		this.dueString = dueString;
	}

	public String getAdvancePaid() {
		return advancePaid;
	}

	public void setAdvancePaid(String advancePaid) {
		this.advancePaid = advancePaid;
	}

	public String getPaymentString() {
		return paymentString;
	}

	public void setPaymentString(String paymentString) {
		this.paymentString = paymentString;
	}

	public String getDeductLateFine() {
		return deductLateFine;
	}

	public void setDeductLateFine(String deductLateFine) {
		this.deductLateFine = deductLateFine;
	}

	public String getPayableAmount() {
		return payableAmount;
	}

	public void setPayableAmount(String payableAmount) {
		this.payableAmount = payableAmount;
	}

	public String getTotalPayableAmt() {
		return totalPayableAmt;
	}

	public void setTotalPayableAmt(String totalPayableAmt) {
		this.totalPayableAmt = totalPayableAmt;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getSearchMemberCode() {
		return searchMemberCode;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public String getCharges() {
		return charges;
	}

	public void setCharges(String charges) {
		this.charges = charges;
	}

	public void setSearchMemberCode(String searchMemberCode) {
		this.searchMemberCode = searchMemberCode;
	}

	public String getRelativeDetails() {
		return relativeDetails;
	}

	public void setRelativeDetails(String relativeDetails) {
		this.relativeDetails = relativeDetails;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getSmsStatus() {
		return smsStatus;
	}

	public void setSmsStatus(String smsStatus) {
		this.smsStatus = smsStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getCspName() {
		return cspName;
	}

	public void setCspName(String cspName) {
		this.cspName = cspName;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public String getLoanROI() {
		return loanROI;
	}

	public void setLoanROI(String loanROI) {
		this.loanROI = loanROI;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getEmiAmount() {
		return emiAmount;
	}

	public void setEmiAmount(String emiAmount) {
		this.emiAmount = emiAmount;
	}

	public String getLoanPurpose() {
		return loanPurpose;
	}

	public void setLoanPurpose(String loanPurpose) {
		this.loanPurpose = loanPurpose;
	}

	public String getGuarantorCode() {
		return guarantorCode;
	}

	public void setGuarantorCode(String guarantorCode) {
		this.guarantorCode = guarantorCode;
	}

	public String getGuarantorName() {
		return guarantorName;
	}

	public void setGuarantorName(String guarantorName) {
		this.guarantorName = guarantorName;
	}

	public String getAddressGuarantor() {
		return addressGuarantor;
	}

	public void setAddressGuarantor(String addressGuarantor) {
		this.addressGuarantor = addressGuarantor;
	}

	public String getPincodeGuarantor() {
		return pincodeGuarantor;
	}

	public void setPincodeGuarantor(String pincodeGuarantor) {
		this.pincodeGuarantor = pincodeGuarantor;
	}

	public String getGuarantorphone() {
		return guarantorphone;
	}

	public void setGuarantorphone(String guarantorphone) {
		this.guarantorphone = guarantorphone;
	}

	public String getCoApplicantCode() {
		return coApplicantCode;
	}

	public void setCoApplicantCode(String coApplicantCode) {
		this.coApplicantCode = coApplicantCode;
	}

	public String getMemberRelativesName() {
		return memberRelativesName;
	}

	public void setMemberRelativesName(String memberRelativesName) {
		this.memberRelativesName = memberRelativesName;
	}

	public String getAddressco() {
		return addressco;
	}

	public void setAddressco(String addressco) {
		this.addressco = addressco;
	}

	public String getPincodeco() {
		return pincodeco;
	}

	public void setPincodeco(String pincodeco) {
		this.pincodeco = pincodeco;
	}

	public String getPhoneco() {
		return phoneco;
	}

	public void setPhoneco(String phoneco) {
		this.phoneco = phoneco;
	}

	public String getSecurityDetails() {
		return securityDetails;
	}

	public void setSecurityDetails(String securityDetails) {
		this.securityDetails = securityDetails;
	}

	public String getAdvisorCode() {
		return advisorCode;
	}

	public void setAdvisorCode(String advisorCode) {
		this.advisorCode = advisorCode;
	}

	public String getAdvisorName() {
		return advisorName;
	}

	public void setAdvisorName(String advisorName) {
		this.advisorName = advisorName;
	}

	public String getApprovalString() {
		return approvalString;
	}

	public void setApprovalString(String approvalString) {
		this.approvalString = approvalString;
	}

	public String getApprovalStatus() {
		return approvalStatus;
	}

	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}

	public String getLoanString() {
		return loanString;
	}

	public void setLoanString(String loanString) {
		this.loanString = loanString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoanName() {
		return loanName;
	}

	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}

	public String getEmiCollection() {
		return emiCollection;
	}

	public void setEmiCollection(String emiCollection) {
		this.emiCollection = emiCollection;
	}

	public String getRoiType() {
		return roiType;
	}

	public void setRoiType(String roiType) {
		this.roiType = roiType;
	}

	public String getEmiType() {
		return emiType;
	}

	public void setEmiType(String emiType) {
		this.emiType = emiType;
	}

	public String getMinAge() {
		return minAge;
	}

	public void setMinAge(String minAge) {
		this.minAge = minAge;
	}

	public String getMaxAge() {
		return maxAge;
	}

	public void setMaxAge(String maxAge) {
		this.maxAge = maxAge;
	}

	public String getMinAmount() {
		return minAmount;
	}

	public void setMinAmount(String minAmount) {
		this.minAmount = minAmount;
	}

	public String getMaxAmount() {
		return maxAmount;
	}

	public void setMaxAmount(String maxAmount) {
		this.maxAmount = maxAmount;
	}

	public String getPlanStatus() {
		return planStatus;
	}

	public void setPlanStatus(String planStatus) {
		this.planStatus = planStatus;
	}

	public String getMStringerm() {
		return mStringerm;
	}

	public void setMStringerm(String mStringerm) {
		this.mStringerm = mStringerm;
	}

	public String getMaxTerm() {
		return maxTerm;
	}

	public void setMaxTerm(String maxTerm) {
		this.maxTerm = maxTerm;
	}

	public String getROI() {
		return ROI;
	}

	public void setROI(String rOI) {
		ROI = rOI;
	}

	public String getSecurityType() {
		return securityType;
	}

	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}

	public String getProcessingFee() {
		return processingFee;
	}

	public void setProcessingFee(String processingFee) {
		this.processingFee = processingFee;
	}

	public String getLegalAmt() {
		return legalAmt;
	}

	public void setLegalAmt(String legalAmt) {
		this.legalAmt = legalAmt;
	}

	public String getGST() {
		return GST;
	}

	public void setGST(String gST) {
		GST = gST;
	}

	public String getInsuranceAmt() {
		return insuranceAmt;
	}

	public void setInsuranceAmt(String insuranceAmt) {
		this.insuranceAmt = insuranceAmt;
	}

	public String getValuerfees() {
		return valuerfees;
	}

	public void setValuerfees(String valuerfees) {
		this.valuerfees = valuerfees;
	}

	public String getGracePeriodDays() {
		return gracePeriodDays;
	}

	public void setGracePeriodDays(String gracePeriodDays) {
		this.gracePeriodDays = gracePeriodDays;
	}

	public String getPenaltyType() {
		return penaltyType;
	}

	public void setPenaltyType(String penaltyType) {
		this.penaltyType = penaltyType;
	}

	public String getPenalty() {
		return penalty;
	}

	public void setPenalty(String penalty) {
		this.penalty = penalty;
	}

	public String getClosedFlag() {
		return closedFlag;
	}

	public void setClosedFlag(String closedFlag) {
		this.closedFlag = closedFlag;
	}

	@Override
	public String toString() {
		return "LoanPlanMaster [id=" + id + ", closedFlag=" + closedFlag + ", loanName=" + loanName + ", loanType="
				+ loanType + ", emiCollection=" + emiCollection + ", roiType=" + roiType + ", emiType=" + emiType
				+ ", minAge=" + minAge + ", maxAge=" + maxAge + ", minAmount=" + minAmount + ", maxAmount=" + maxAmount
				+ ", planStatus=" + planStatus + ", mStringerm=" + mStringerm + ", maxTerm=" + maxTerm + ", ROI=" + ROI
				+ ", securityType=" + securityType + ", processingFee=" + processingFee + ", legalAmt=" + legalAmt
				+ ", GST=" + GST + ", insuranceAmt=" + insuranceAmt + ", valuerfees=" + valuerfees
				+ ", gracePeriodDays=" + gracePeriodDays + ", penaltyType=" + penaltyType + ", penalty=" + penalty
				+ ", loanString=" + loanString + ", searchMemberCode=" + searchMemberCode + ", relativeDetails="
				+ relativeDetails + ", DOB=" + DOB + ", phoneno=" + phoneno + ", smsStatus=" + smsStatus + ", address="
				+ address + ", pin=" + pin + ", cspName=" + cspName + ", mode=" + mode + ", loanROI=" + loanROI
				+ ", loanAmount=" + loanAmount + ", emiAmount=" + emiAmount + ", loanPurpose=" + loanPurpose
				+ ", guarantorCode=" + guarantorCode + ", guarantorName=" + guarantorName + ", addressGuarantor="
				+ addressGuarantor + ", pincodeGuarantor=" + pincodeGuarantor + ", guarantorphone=" + guarantorphone
				+ ", coApplicantCode=" + coApplicantCode + ", memberRelativesName=" + memberRelativesName
				+ ", addressco=" + addressco + ", pincodeco=" + pincodeco + ", phoneco=" + phoneco
				+ ", securityDetails=" + securityDetails + ", advisorCode=" + advisorCode + ", advisorName="
				+ advisorName + ", approvalString=" + approvalString + ", approvalStatus=" + approvalStatus
				+ ", paymentStatus=" + paymentStatus + ", paymode=" + paymode + ", charges=" + charges + ", remarks="
				+ remarks + ", totalStringerest=" + totalStringerest + ", totalPrinciple=" + totalPrinciple
				+ ", totalPayble=" + totalPayble + ", totalStringerestDue=" + totalStringerestDue + ", totalDueAmt="
				+ totalDueAmt + ", totalPrincipleDue=" + totalPrincipleDue + ", dueString=" + dueString
				+ ", advancePaid=" + advancePaid + ", paymentString=" + paymentString + ", deductLateFine="
				+ deductLateFine + ", payableAmount=" + payableAmount + ", totalPayableAmt=" + totalPayableAmt
				+ ", StringerestPaid=" + StringerestPaid + ", principalPaid=" + principalPaid + ", totalPaid="
				+ totalPaid + ", curentStringerest=" + curentStringerest + ", lateFine=" + lateFine
				+ ", payableStringerest=" + payableStringerest + ", payablePrincipal=" + payablePrincipal
				+ ", payablePrincipalaymentString=" + payablePrincipalaymentString + "]";
	}

	
	

}
