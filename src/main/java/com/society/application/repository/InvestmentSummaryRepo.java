package com.society.application.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.InvestmentSummarymodel;

@Repository
public interface InvestmentSummaryRepo extends JpaRepository<InvestmentSummarymodel, Integer> {

	List<InvestmentSummarymodel> findBybranchname(String branch);

	List<InvestmentSummarymodel> findByinvestmentdateBetween(String fdate, String tdate);

}
