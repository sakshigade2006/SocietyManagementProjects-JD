package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.CompanyMaster;

@Repository
public interface CompanyMasterRepo extends JpaRepository<CompanyMaster, Integer>{

	CompanyMaster findBycompanyName(String companyName);

	List<CompanyMaster> findByshortName(String companyName);

	CompanyMaster findByiDcompany(String iD);
	
	
	

	
}
