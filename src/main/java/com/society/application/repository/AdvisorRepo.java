package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.Advisor;

public interface AdvisorRepo extends JpaRepository<Advisor, Integer>{

}
