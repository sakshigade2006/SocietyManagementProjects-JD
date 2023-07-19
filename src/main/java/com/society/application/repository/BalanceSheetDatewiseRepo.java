package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.BalanceSheetDatewise;

public interface BalanceSheetDatewiseRepo  extends JpaRepository<BalanceSheetDatewise, Integer>
{

	public List<BalanceSheetDatewise> findByselectbranch(String branch);

	public List<BalanceSheetDatewise> findBydateBetween(String fromdate, String todate);
	
}
