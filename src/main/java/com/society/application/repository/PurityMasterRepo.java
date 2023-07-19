package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.PurityMaster;

@Repository
public interface PurityMasterRepo extends JpaRepository<PurityMaster, Integer>{

}
