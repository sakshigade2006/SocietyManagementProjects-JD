package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.DirectorMaster;

public interface DirectorMasterRepo extends JpaRepository<DirectorMaster, Integer>{

	public List<DirectorMaster> findBydirectorName(String directorName);

}
