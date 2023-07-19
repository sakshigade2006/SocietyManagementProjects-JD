package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.LoanPaymentReport;

public interface LoanPaymentReportRepo extends JpaRepository<LoanPaymentReport, Integer> 
{

	public List<LoanPaymentReport> findBybranch(String branch);

	public List<LoanPaymentReport> findByloandateBetween(String fromdate, String todate);

}
