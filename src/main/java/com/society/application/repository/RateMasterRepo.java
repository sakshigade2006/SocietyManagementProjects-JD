package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.RateMaster;

@Repository
public interface RateMasterRepo extends JpaRepository<RateMaster, Integer>{

}
