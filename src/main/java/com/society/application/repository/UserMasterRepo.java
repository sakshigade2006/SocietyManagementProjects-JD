package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.TodaysRateMaster;
import com.society.application.model.UserMaster;

@Repository
public interface UserMasterRepo extends JpaRepository<UserMaster, Integer> {
	
	@Query(value="select * from user_master where user_id=? and password=?",nativeQuery = true)
	UserMaster fetchMatchedData(String userId,String password);

	UserMaster findByid(int id);

}
