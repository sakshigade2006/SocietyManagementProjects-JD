package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ContraEntry;

@Repository
public interface ContraEntryRepo  extends JpaRepository<ContraEntry, Integer>{

	public List<ContraEntry> findByselectbranch(String selectbranch);

	public List<ContraEntry> findBytxndateBetween(String fromdate, String todate);

	





	
}
