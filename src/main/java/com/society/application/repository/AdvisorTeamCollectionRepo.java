package com.society.application.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.AdvisorTeamCollection;

@Repository
public interface AdvisorTeamCollectionRepo extends JpaRepository<AdvisorTeamCollection, Integer> {

	List<AdvisorTeamCollection> findByadvisorcode(String advisorcode);

	List<AdvisorTeamCollection> findBydateBetween(String fromdate, String todate);
}
