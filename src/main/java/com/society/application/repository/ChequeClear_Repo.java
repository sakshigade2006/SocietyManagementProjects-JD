package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.society.application.model.ChequeClear;



public interface ChequeClear_Repo extends JpaRepository<ChequeClear, Integer> {

	List<ChequeClear> findBytype(String paymentType);

	List<ChequeClear> findBybranch(String branchType);

	List<ChequeClear> findBytxndateBetween(String fromDate, String todate);

	List<ChequeClear> findBycheque(String chequeNO);


	

	

	

	

}
