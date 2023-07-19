package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.AccountLegMaster;

@Repository
public interface AccountLegMasterRepo extends JpaRepository<AccountLegMaster, Integer> {

}
