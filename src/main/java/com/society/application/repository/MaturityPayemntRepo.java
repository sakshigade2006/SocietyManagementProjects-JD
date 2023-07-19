package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.LoanEMIOutstandingReport;
import com.society.application.model.MaturityPartPayment;


@Repository
public interface MaturityPayemntRepo extends JpaRepository<MaturityPartPayment, Integer> {

	List<MaturityPartPayment> findBypolicyno(String string);
	
	
	
	
	@Modifying
	@Transactional
	@Query("update MaturityPartPayment p set p.paymentdate=:string,p.paybranch =:string2,p.paymentby =:string3,p.payremarks =:string4 where p.policyno =:string5")
	int updateThroughPolicyNo(String string, String string2, String string3, String string4,String string5);




	

}
