package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.IncentivePayment;

public interface IncentivePaymentRepo extends JpaRepository<IncentivePayment, Integer> {

	List<IncentivePayment> findBymonthname(String monthname);

	List<IncentivePayment> findBycode(String code);

	//List<IncentivePayment> findBymonthnameAcode(String monthname, String code);
	
}
