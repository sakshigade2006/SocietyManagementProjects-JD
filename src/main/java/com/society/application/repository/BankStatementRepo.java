package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.BankStatement;

public interface BankStatementRepo extends JpaRepository<BankStatement, Integer> 
{

	public  List<BankStatement> findByaccountno(String accountno);

	public List<BankStatement> findBydateBetween(String fromdate, String todate);

	

	

	
			
}
