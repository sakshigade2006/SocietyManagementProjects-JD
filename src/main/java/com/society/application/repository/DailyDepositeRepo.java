package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.society.application.model.BranchMaster;
import com.society.application.model.DailyDeposite;

public interface DailyDepositeRepo extends JpaRepository<DailyDeposite, Integer>{
	
	@Query("SELECT COUNT(u) FROM DailyDeposite u")
	long countDailyDeposite();
}