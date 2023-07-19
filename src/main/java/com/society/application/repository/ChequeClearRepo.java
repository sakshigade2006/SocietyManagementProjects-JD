package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ChequeClear;

@Repository
public interface ChequeClearRepo extends JpaRepository<ChequeClear, Integer>
{

	public List<ChequeClear> findBytype(String type);

	public List<ChequeClear> findBybranch(String branch);

	public List<ChequeClear> findBytxndateBetween(String fromdate, String todate);

	public List<ChequeClear> findBycheque(String chequeno);

}
