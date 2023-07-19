package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.RegularEmiReport;

@Repository
public interface RegularEmiReportRepo extends JpaRepository<RegularEmiReport, Integer>{

	List<RegularEmiReport> findBybranch(String branch);

	List<RegularEmiReport> findBypaydateBetween(String fromdate, String todate);

}
