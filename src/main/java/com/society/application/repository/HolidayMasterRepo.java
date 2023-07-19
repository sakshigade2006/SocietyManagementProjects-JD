package com.society.application.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.HolidayMaster;

@Repository
public interface HolidayMasterRepo extends JpaRepository<HolidayMaster, Integer> {

	List<HolidayMaster> findByDate(String date);

	//Optional<HolidayMaster> findBydate(String date);

	//List<HolidayMaster> findBydate(String date);

}
