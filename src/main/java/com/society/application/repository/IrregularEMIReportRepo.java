package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.IrregularEMIReport;

public interface IrregularEMIReportRepo  extends JpaRepository<IrregularEMIReport, Integer>
{

	public List<IrregularEMIReport> findBybranch(String branch);

	public List<IrregularEMIReport> findBypaydateBetween(String fromdate, String todate);
	
}
