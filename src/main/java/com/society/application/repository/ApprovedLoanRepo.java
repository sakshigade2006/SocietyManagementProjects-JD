package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ApprovedLoan;

@Repository
public interface ApprovedLoanRepo extends JpaRepository<ApprovedLoan, Integer> {
	
	List<ApprovedLoan> findByloandateBetween(String fromdate, String todate);

	List<ApprovedLoan> findBybranch(String string);

}
