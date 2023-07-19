package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.DepositeAccountMaster;

public interface DepositeAccountMasterRepo extends JpaRepository<DepositeAccountMaster, Integer> {

}
