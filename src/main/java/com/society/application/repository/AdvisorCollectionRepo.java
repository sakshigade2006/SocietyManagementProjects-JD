package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.AdvisorCollectionReportModel;


public interface AdvisorCollectionRepo extends JpaRepository<AdvisorCollectionReportModel, Integer> {

	List<AdvisorCollectionReportModel> findByBusinessType(String businessType);

	List<AdvisorCollectionReportModel> findByadvisorCode(String advisorCode);

	List<AdvisorCollectionReportModel> findBydateBetween(String fDate, String tDate);

}
