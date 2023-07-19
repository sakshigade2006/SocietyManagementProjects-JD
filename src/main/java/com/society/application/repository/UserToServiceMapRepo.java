package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.UserMaster;
import com.society.application.model.UserToServiceMap;

@Repository
public interface UserToServiceMapRepo extends JpaRepository<UserToServiceMap, Integer> {
	@Query(value="select * from user_to_service_map where user_id=?",nativeQuery = true)
	List<UserToServiceMap> getDataByuserId(String userId);
}
