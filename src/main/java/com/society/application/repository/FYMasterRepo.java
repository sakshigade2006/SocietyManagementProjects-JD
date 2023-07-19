package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.AddInvestment;
import com.society.application.model.FYMaster;

public interface FYMasterRepo extends JpaRepository<FYMaster, Integer>{

}
