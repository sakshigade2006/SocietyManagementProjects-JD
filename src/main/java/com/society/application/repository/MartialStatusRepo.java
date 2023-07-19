package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.society.application.model.MartialStatus;

@Repository
public interface MartialStatusRepo  extends JpaRepository<MartialStatus, Integer>{

}
