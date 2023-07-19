package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.LedgerReport;

@Repository
public interface LedgerReportRepo extends JpaRepository<LedgerReport, Integer>{

	public List<LedgerReport> findByselectledger(String selectledger);

	public List<LedgerReport> findBydateBetween(String fromdate, String todate);

	
}
