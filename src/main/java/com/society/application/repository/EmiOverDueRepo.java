package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.EmiOverDueModel;

public interface EmiOverDueRepo extends JpaRepository<EmiOverDueModel, Integer> {

	List<EmiOverDueModel> findBybranchname(String branch);

	List<EmiOverDueModel> findByplannames(String plan);

	List<EmiOverDueModel> findByadvisorcode(String codeadv);

	List<EmiOverDueModel> findByduedateBefore(String tdate);

}
