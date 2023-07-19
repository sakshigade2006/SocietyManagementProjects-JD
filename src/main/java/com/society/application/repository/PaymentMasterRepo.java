package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.PaymentMaster;

@Repository
public interface PaymentMasterRepo extends JpaRepository<PaymentMaster, Integer>{

}
