package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.society.application.model.plstatement;

public interface PlStatementRepo extends JpaRepository<plstatement, Integer>{

	List<plstatement> findBybranchname(String branch);

	List<plstatement> findBypldateBetween(String fdate, String tdate);
	
	@Query(value = "SELECT E FROM plstatement E WHERE year(E.pldate)=:i")
	List<plstatement> findAllBypldate(@Param ("i") int i);
  
}
