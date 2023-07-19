package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.MaturityPartPayment;

@Repository
public interface MaturityPartPaymentRepo extends JpaRepository<MaturityPartPayment, Integer>{

	public List<MaturityPartPayment> findBypolicyno(String policyno);

	@Modifying
	@Transactional
	@Query("UPDATE MaturityPartPayment P set P.amount=:string1,P.paymentdate=:string2,P.paybranch=:string3,P.paymentby=:string4 where policyno=:string5")
	public int updateThroughpolicyno(String string1, String string2, String string3, String string4,String string5);

   
	

}
