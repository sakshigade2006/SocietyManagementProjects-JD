package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.DepartmentMaster;

public interface DepartmentMasterRepo extends JpaRepository<DepartmentMaster, Integer> {

}
