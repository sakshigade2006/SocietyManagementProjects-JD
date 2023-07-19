package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.SavingsDepositWith;

@Repository
public interface SavingsDepositWithRepo extends JpaRepository<SavingsDepositWith, Integer> {

	List<SavingsDepositWith> findBybranchName(String branchName);

	List<SavingsDepositWith> findBytxnDateBetween(String getfDate, String gettDate);

	List<SavingsDepositWith> findByaccountNo(String accountNo);

}