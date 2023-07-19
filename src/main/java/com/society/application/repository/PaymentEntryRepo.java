package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.PaymentEntry2Modal;

public interface PaymentEntryRepo extends JpaRepository<PaymentEntry2Modal, Integer> {

	public List<PaymentEntry2Modal> findByselectbranch(String string);

	public List<PaymentEntry2Modal> findBytxndateBetween(String getfDate, String todate);

	

	

	

	

	

	

}
