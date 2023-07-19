package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.Login;

@Repository
public interface LoginRepo extends JpaRepository<Login, Integer>{

}
