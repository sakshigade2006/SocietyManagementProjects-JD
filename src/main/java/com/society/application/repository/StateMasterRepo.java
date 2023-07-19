package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.BranchMaster;
import com.society.application.model.StateMaster;

@Repository
public interface StateMasterRepo extends JpaRepository<StateMaster, Integer>{
	StateMaster findByname(String name);

}
