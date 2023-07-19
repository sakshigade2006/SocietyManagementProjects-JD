package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.TrialBalance;

@Repository
public interface TrialBalanceRepo extends JpaRepository<TrialBalance, Integer> 
{

	List<TrialBalance> findBybranchName(String branch_Name);

	List<TrialBalance> findBydateBetween(String fromDate, String toDate);

	
}
