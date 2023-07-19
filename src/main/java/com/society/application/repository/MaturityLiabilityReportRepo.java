package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.MaturityLiabilityReport;

@Repository
public interface MaturityLiabilityReportRepo extends JpaRepository<MaturityLiabilityReport, Integer>{

	List<MaturityLiabilityReport> findBybranch(String branch);

	List<MaturityLiabilityReport> findByplanname(String planname);

	List<MaturityLiabilityReport> findBypolicydateBetween(String fromdate, String todate);
	
}
