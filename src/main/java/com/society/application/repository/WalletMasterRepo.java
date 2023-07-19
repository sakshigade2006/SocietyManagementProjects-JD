package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.WalletMaster;

@Repository
public interface WalletMasterRepo extends JpaRepository<WalletMaster, Integer> {

}
