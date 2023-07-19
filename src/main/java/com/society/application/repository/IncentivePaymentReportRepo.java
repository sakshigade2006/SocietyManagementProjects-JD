package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.IncentivePaymentReport;

@Repository
public interface IncentivePaymentReportRepo extends JpaRepository<IncentivePaymentReport, Integer>
{

	List<IncentivePaymentReport> findBybranch(String b_ranch);

	List<IncentivePaymentReport> findBypaydateBetween(String formDate, String toDate);

}
