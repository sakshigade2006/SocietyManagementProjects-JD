package com.society.application.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.MandateDepositToBank;

@Repository
public interface MandateDepositToBankRepo extends JpaRepository<MandateDepositToBank, Integer> {

	

	List<MandateDepositToBank> findByfddateBetween(String fddate, String todate);

	

	
	 

	

}
