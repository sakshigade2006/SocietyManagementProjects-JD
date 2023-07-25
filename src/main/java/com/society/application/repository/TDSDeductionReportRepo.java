package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.society.application.model.AdvisorCollectionReportModel;


public interface TDSDeductionReportRepo  extends JpaRepository<AdvisorCollectionReportModel, Integer>
{

	@Query("SELECT M FROM AdvisorCollectionReportModel M WHERE MONTH(M.date) = :mnth")
	public List<AdvisorCollectionReportModel> findBymonth(@Param("mnth") int mnth);
	
	public 	List<AdvisorCollectionReportModel> findByadvisorCode(String advisorcode);

	public List<AdvisorCollectionReportModel> findBymonth(String month);
	
}
