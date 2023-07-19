package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.CategoryMaster;

public interface CategoryMasterRepo extends JpaRepository<CategoryMaster, Integer> {

}
