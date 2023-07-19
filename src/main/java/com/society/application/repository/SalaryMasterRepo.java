package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.AddInvestment;
import com.society.application.model.SalaryMaster;

@Repository
public interface SalaryMasterRepo extends JpaRepository<SalaryMaster, Integer>{
	
	@Query(value="select * from salary_master where emp_code = ?",nativeQuery = true)
	List<SalaryMaster> searchByEmpId(String empId);
	
	List<SalaryMaster> findBypayDateBetween(String getfDate, String gettDate);

	List<SalaryMaster> findBypayDate(String payDate);

}
