package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.DueEmiReport;

@Repository
public interface DueEmiReportRepo extends JpaRepository<DueEmiReport, Integer>
{

	List<DueEmiReport> findBybranch(String b_ranch);

	List<DueEmiReport> findByplan(String p_lan);

	List<DueEmiReport> findByadvisorCode(String advisor_Code);

	List<DueEmiReport> findBytillDueBefore(String till_Date);

}
