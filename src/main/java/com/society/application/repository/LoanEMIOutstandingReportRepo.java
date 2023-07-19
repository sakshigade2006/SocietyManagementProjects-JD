package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.society.application.model.LoanEMIOutstandingReport;

public interface LoanEMIOutstandingReportRepo extends JpaRepository<LoanEMIOutstandingReport, Integer> {

	List<LoanEMIOutstandingReport> findBybranch(String branch);

	List<LoanEMIOutstandingReport> findByplan(String plan);

	List<LoanEMIOutstandingReport> findByadvisorCode(String advisorCode);

	List<LoanEMIOutstandingReport> findBydateeBefore(String string);

}
