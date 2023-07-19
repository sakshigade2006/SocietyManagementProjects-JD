package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.SavingAccount;

public interface SavingAccountRepo  extends JpaRepository<SavingAccount, Integer>{

}
