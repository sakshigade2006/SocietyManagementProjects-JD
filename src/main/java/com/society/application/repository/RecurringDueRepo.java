package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.RecurringDueReportModel;

@Repository
public interface RecurringDueRepo extends JpaRepository<RecurringDueReportModel, Integer>{

	List<RecurringDueReportModel> findBybranchname(String branch);
	
	List<RecurringDueReportModel> findBytxndateBetween(String fdate, String tdate);

}
