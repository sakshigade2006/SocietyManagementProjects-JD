package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.society.application.model.JournalReport;

public interface JournalReportRepo  extends JpaRepository<JournalReport, Integer>
{

	public List<JournalReport> findByselectbranch(String selectbranch);

	public List<JournalReport> findBydateBetween(String fromdate, String todate);
	
}
