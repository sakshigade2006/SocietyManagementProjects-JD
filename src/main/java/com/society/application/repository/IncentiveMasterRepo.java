package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.IncentiveMaster;

public interface IncentiveMasterRepo extends JpaRepository<IncentiveMaster, Integer> {

	List<IncentiveMaster> findByinvmonth(String invmonth);

	List<IncentiveMaster> findBycode(String code);

	List<IncentiveMaster> findBybranchName(String branchName);

	//List<IncentiveMaster> findByinvmonth(String month);
}
