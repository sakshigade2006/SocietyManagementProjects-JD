package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.JournalEntry;

@Repository
public interface JournalEntryRepo extends JpaRepository<JournalEntry, Integer>
{

	public List<JournalEntry> findByselectbranch(String selectbranch);

	public List<JournalEntry> findBytxndateBetween(String fromdate, String todate);

	
	@Query("select max(receiptno) from JournalEntry")
	public int getreceiptno();

	


	

}
