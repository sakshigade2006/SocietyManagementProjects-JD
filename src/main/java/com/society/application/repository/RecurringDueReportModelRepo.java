package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.RecurringDueReportModel;

@Repository
public interface RecurringDueReportModelRepo extends JpaRepository<RecurringDueReportModel, Integer> {

	List<RecurringDueReportModel> findBybranchname(String branchname);

	List<RecurringDueReportModel> findBytxndateBetween(String fromdate, String todate);

}