package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.GroupMasterApplication;
@Repository
public interface GroupMasterApplicationRepo extends JpaRepository<GroupMasterApplication, Integer>{

	List<GroupMasterApplication> findByid(Integer id);
	
	@Modifying
	@Transactional
	@Query("UPDATE GroupMasterApplication SET flag =:flag WHERE id=:id AND createdBy=:userId")
	int updateGroupMasterApplicationThroughid(@Param("flag") String flag, @Param("id") int id, @Param("userId") String userId);

	public List<GroupMasterApplication> findByflag(String flag);

}
