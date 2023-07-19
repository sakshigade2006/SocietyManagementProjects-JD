package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.Employee;
import com.society.application.model.FixedDeposit;

@Repository
public interface FixedDepositRepo extends JpaRepository<FixedDeposit, Integer> {

	@Query("SELECT COUNT(u) FROM FixedDeposit u")
	long countFixedDeposit();
}
