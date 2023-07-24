package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.society.application.model.SavingsDepositWith;

@Repository

public interface SavingsDepositWithdrawalRepo extends JpaRepository<SavingsDepositWith, Integer> {

	List<SavingsDepositWith> findByaccountNo(String accountNo);

	@Modifying
	@Transactional
	@Query("UPDATE SavingsDepositWith SET flag=:flag WHERE accountNo=:accountNo AND createdBy=:userId ")
	int updateThroughIDInDeleteSavingsTransaction(@Param("flag") String flag, @Param("accountNo") String accountNo, @Param("userId") String userId);
	// int updateThroughIDInDeleteSavingsTransaction(@Param("flag") String
	// flag,@Param("id") int id);

	List<SavingsDepositWith> findByflag(String flag);

	List<SavingsDepositWith> findBybranchName(String branchName);

	List<SavingsDepositWith> findBytxnDateBetween(String getfDate, String gettDate);

	List<SavingsDepositWith> findByaccHolderName(String accHolderName);

	List<SavingsDepositWith> findBymemberCode(String memberCode);

	List<SavingsDepositWith> findByschemeName(String schemeName);

	List<SavingsDepositWith> findByadvisorCode(String advisorCode);

}
