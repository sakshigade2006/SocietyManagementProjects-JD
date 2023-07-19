package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ProjectionReportModel;

@Repository
public interface ProjectionReportRepo extends JpaRepository<ProjectionReportModel, Integer> {

	List<ProjectionReportModel> findBybranch(String string);

	List<ProjectionReportModel> findByplaneName(String string);

	List<ProjectionReportModel> findBydateBetween(String string, String string2);

}
