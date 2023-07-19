package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.SavingsAccountApplication;

import net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional;

public interface SavingsAccountApplicationRepo extends JpaRepository<SavingsAccountApplication, Integer>{
	
	//Optional<SavingsAccountApplication> findById(Long id);

}
