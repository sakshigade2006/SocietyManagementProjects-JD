package com.society.application.dto;

import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;

public class LoanWithLoanMasterDTO {

	private Loan loan;
	private LoanMaster loanMaster;

	public Loan getLoan() {
		return loan;
	}

	public void setLoan(Loan loan) {
		this.loan = loan;
	}

	public LoanMaster getLoanMaster() {
		return loanMaster;
	}

	public void setLoanMaster(LoanMaster loanMaster) {
		this.loanMaster = loanMaster;
	}

	public LoanWithLoanMasterDTO(Loan loan, LoanMaster loanMaster) {
		super();
		this.loan = loan;
		this.loanMaster = loanMaster;
	}

}
