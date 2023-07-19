package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.society.application.model.LoanNotApproveReportModel;

@Repository
public interface LoanNotApproverRepo extends JpaRepository<LoanNotApproveReportModel, Integer> {

	List<LoanNotApproveReportModel> findBybranch(String string);

	List<LoanNotApproveReportModel> findBydateBetween(String fDate, String tDate);

}
