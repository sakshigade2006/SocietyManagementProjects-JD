package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.TodaysRateMaster;

public interface TodaysRateMasterRepo extends JpaRepository<TodaysRateMaster, Integer> {

}
