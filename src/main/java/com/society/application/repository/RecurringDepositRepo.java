package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.Position;
import com.society.application.model.RecurringDeposit;

@Repository
public interface RecurringDepositRepo extends JpaRepository<RecurringDeposit, Integer>{

	@Query("SELECT COUNT(u) FROM RecurringDeposit u")
	long countRd();
}
