package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.MappingClientAndModules;

@Repository
public interface MappingClientAndModulesRepo extends JpaRepository<MappingClientAndModules, Integer>{
	

}
