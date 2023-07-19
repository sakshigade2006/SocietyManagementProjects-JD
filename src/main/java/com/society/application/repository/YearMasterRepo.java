package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.YearMaster;

public interface YearMasterRepo extends JpaRepository<YearMaster, Integer> {

}
