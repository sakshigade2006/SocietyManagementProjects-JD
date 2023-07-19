package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.Position;

@Repository
public interface PositionRepo extends JpaRepository<Position, Integer>{

}
