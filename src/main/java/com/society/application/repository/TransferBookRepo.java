package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.TransferBookModel;

public interface TransferBookRepo extends JpaRepository<TransferBookModel, Integer >{

	List<TransferBookModel> findBybranchname(String string);

	List<TransferBookModel> findBytxndateBetween(String fromdate, String todate);



	

}
