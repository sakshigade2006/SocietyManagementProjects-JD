package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.MatApplicationStatus;


@Repository
public interface MatApplicationStatusRepo extends JpaRepository<MatApplicationStatus, Integer> 
{

public 	List<MatApplicationStatus> findByapplicationbranch(String branch);

public List<MatApplicationStatus> findByapplicationdateBetween(String fromdate, String todate);



	
	
	
}
