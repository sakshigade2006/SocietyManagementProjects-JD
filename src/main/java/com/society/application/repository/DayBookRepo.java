package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.DayBookModel;

public interface DayBookRepo extends JpaRepository<DayBookModel, Integer> {

	List<DayBookModel> findBySelectBranch(String selectBranch);

	List<DayBookModel> findBySelectLedger(String selectLedger);

	List<DayBookModel> findByDateBetween(String getfDate, String gettDate);

	

}
