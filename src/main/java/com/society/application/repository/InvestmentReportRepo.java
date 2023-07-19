package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.InvestmentReport;

@Repository
public interface InvestmentReportRepo extends JpaRepository<InvestmentReport, Integer>
{

	List<InvestmentReport> findBybranch(String branch);

	List<InvestmentReport> findByplanName(String planName);

	List<InvestmentReport> findByplanCode(String planCode);

	List<InvestmentReport> findBybiztype(String biztype);

	List<InvestmentReport> findBytxnDateBetween(String fromdate, String todate);

	
}
