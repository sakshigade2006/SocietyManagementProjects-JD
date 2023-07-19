package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.ItemMaster;
import com.society.application.model.LockerMaster;

public interface LockerMasterRepo extends JpaRepository<LockerMaster, Integer> {

}
