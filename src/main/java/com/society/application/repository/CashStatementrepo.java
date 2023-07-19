package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.CashStatement;

public interface CashStatementrepo extends JpaRepository<CashStatement, Integer>{

	 public List<CashStatement> findByselectBranch(String selectBranch);

	public List<CashStatement> findBytxnDateBetween(String fromDate, String toDate);

	public List<CashStatement> findBybranchName(String branchName);
}
