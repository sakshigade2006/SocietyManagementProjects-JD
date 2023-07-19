package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.IncentivePaymentReport;
import com.society.application.model.MaturityPaymentReportModel;

@Repository
public interface MaturityPaymentReportRepo extends JpaRepository<MaturityPaymentReportModel, Integer> {

	//public List<MaturityPaymentReportModel> findByapprovadateBetween(String formDate, String toDate);

	public List<MaturityPaymentReportModel> findBypaybranch(String b_ranch);

	public List<MaturityPaymentReportModel> findBypaydateBetween(String formDate, String toDate);

}
