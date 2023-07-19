package com.society.application.repository;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.BranchMaster;

@Repository
public interface BranchMasterRepo extends JpaRepository<BranchMaster, Integer>{
	
	BranchMaster findByname(String name);
	
	@Query(value="select * from branch_master order by id limit 5",nativeQuery = true)
	List<BranchMaster> getlastFiveRecords();
	
	@Modifying
	@Transactional
	@Query(value = "UPDATE BranchMaster SET amount = :amount, opening_date = :transferDate WHERE name BETWEEN :fromBranch AND :toBranch")
	void updateByFromBranchAndToBranch(@Param("amount") String amount, @Param("transferDate") String transferDate, @Param("fromBranch") String fromBranch, @Param("toBranch") String toBranch);
	
	public List<BranchMaster> findByid(int i);
}
