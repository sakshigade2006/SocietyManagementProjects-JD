package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.MisPaymentModal;

public interface MisPaymentRepo extends JpaRepository<MisPaymentModal, Integer>{

}
