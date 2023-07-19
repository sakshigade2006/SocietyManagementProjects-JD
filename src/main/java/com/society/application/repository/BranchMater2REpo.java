package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.BalanceSheetFY;
import com.society.application.model.BranchMaster;

@Repository
public interface BranchMater2REpo extends JpaRepository<BranchMaster, Integer>{

	List<BranchMaster> findByname(String branch);

	List<BranchMaster> findByopeningDateBetween(String string, String string2);

	

	

	
	

	
}
