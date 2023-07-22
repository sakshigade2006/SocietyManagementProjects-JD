package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.GroupMaster;

@Repository
public interface GroupMasterRepo extends JpaRepository<GroupMaster, Integer> {

	@Query("SELECT COUNT(u) FROM GroupMaster u")
	long countGroupMaster();

	List<GroupMaster> findByflag(String flag);

	@Modifying
	@Transactional
	@Query("UPDATE GroupMaster SET flag =:flag WHERE id=:id")
	int updateThroughIDInDeleteGoldtRectification(@Param("flag") String flag,@Param("id") int id);

	List<GroupMaster> findByid(Integer id);
	
	List<GroupMaster> findBybranchName(String branchName);

	List<GroupMaster> findByloanDateBetween(String getfDate, String gettDate);

	List<GroupMaster> findBymemberName(String memberName);

	List<GroupMaster> findByid(int id);

	List<GroupMaster> findBysearchMemberCode(String searchMemberCode);

	List<GroupMaster> findByloanPlanName(String loanPlanName);

	List<GroupMaster> findByadvisorCode(String advisorCode);
	
	List<GroupMaster> findBycsp(String csp);

	@Query("SELECT l FROM GroupMaster l WHERE l.loanDate BETWEEN :getfDate AND :gettDate")
	List<GroupMaster> findByloanDateBetweenmmmmm(@Param("getfDate") String getfDate,@Param("gettDate") String gettDate);

	List<GroupMaster> findByplaneName(String planeName);

	@Query("SELECT gm FROM GroupMaster gm WHERE gm.id = :id AND gm.createdBy = :createdBy")
	List<GroupMaster> findByidAndcreatedBy(@Param("id") int id,@Param("createdBy") String createdBy);

	
	
}
