package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.RelativeRelationMaster;

@Repository
public interface RelativeRelationMasterRepo  extends JpaRepository<RelativeRelationMaster, Integer>{


}
