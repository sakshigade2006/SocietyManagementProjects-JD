package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.LoanPlanMaster;

public interface LoanPlanRepo extends JpaRepository<LoanPlanMaster, Integer> {

	List<LoanPlanMaster> findByloanName(String loanName);

	List<LoanPlanMaster> findByadvisorCode(String advisorCode);

}
