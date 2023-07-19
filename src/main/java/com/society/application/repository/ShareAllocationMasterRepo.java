package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ShareAllocationMaster;

@Repository
public interface ShareAllocationMasterRepo extends JpaRepository<ShareAllocationMaster, Integer>{

}
