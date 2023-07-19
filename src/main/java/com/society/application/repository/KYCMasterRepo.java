package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.KYCMaster;
@Repository
public interface KYCMasterRepo  extends JpaRepository<KYCMaster, Integer>{

}
