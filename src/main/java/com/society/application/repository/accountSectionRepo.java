package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.receiveVoucher;

@Repository
public interface accountSectionRepo extends JpaRepository<receiveVoucher, Integer>  {

	List<receiveVoucher> findByselectBranch(String selectBranch);

	List<receiveVoucher> findBytxnDateBetween(String getfDate, String gettDate);

	@Query(value = "SELECT max(receiptNo) FROM receiveVoucher")
	int getMaxReceiptNumber();

}
