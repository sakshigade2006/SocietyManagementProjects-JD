package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.BalanceSheetFY;

@Repository
public interface BalanceSheetFyRepo extends JpaRepository<BalanceSheetFY, Integer> {

	 @Query(value = "SELECT E FROM BalanceSheetFY E WHERE YEAR(E.date) = :i")
	 List<BalanceSheetFY> findAllByyear(@Param("i") int i);

	List<BalanceSheetFY> findBybranch(String branch);

	List<BalanceSheetFY> findBydateBetween(String fromDate, String toDate);

	

}
