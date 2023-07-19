package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.MaturityStatusReportModel;

public interface MaturityStatusReportRepo extends JpaRepository<MaturityStatusReportModel, Integer> {

	List<MaturityStatusReportModel> findByapplicationdateBetween(String fdate, String tdate);

	List<MaturityStatusReportModel> findBybname(String branch);

}
