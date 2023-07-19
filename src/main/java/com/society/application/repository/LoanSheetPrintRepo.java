package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.LoanSheetPrint;

@Repository
public interface LoanSheetPrintRepo extends JpaRepository<LoanSheetPrint, Integer> {

	List<LoanSheetPrint> findByplan(String p_lan);

	List<LoanSheetPrint> findByadvisorCode(String advisor_Code);

	List<LoanSheetPrint> findBypayDateBefore(String till_Date);

	//List<LoanSheetPrint> findBypayDate(String till_Date);

}
