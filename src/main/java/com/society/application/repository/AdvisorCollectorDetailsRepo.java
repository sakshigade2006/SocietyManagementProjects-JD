package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;

@Repository
public interface AdvisorCollectorDetailsRepo extends JpaRepository<AdvisorCollectorDetails, Integer>{

	@Query("SELECT COUNT(u) FROM AdvisorCollectorDetails u")
	long countAdvisor();

	List<AdvisorCollectorDetails> findByid(int id);

	List<AdvisorCollectorDetails> findBymemberId(int i);

	@Modifying
	@Transactional
	@Query("update AdvisorCollectorDetails p set p.applicationDate=:string,p.remarks =:string2 where p.memberId =:i")
	int updateThroughPolicyNo(String string, String string2, int i);

	@Modifying
	@Transactional
	@Query("UPDATE AdvisorCollectorDetails SET flag =:flag WHERE id =:id")
	public int updateThroughIDIndeleteAdvisorRectification(@Param("flag") String flag, @Param("id") int id);

	public List<AdvisorCollectorDetails> findByflag(String flag);

	@Modifying
	@Transactional
	@Query("UPDATE AdvisorCollectorDetails SET joiningDate=:joiningDate, selectMember=:selectMember, nomineeName=:nomineeName, relation=:relation, branchName=:branchName, nomineeAge=:nomineeAge, photo=:fileName, signiture=:fileName1, selectPosition=:selectPosition, introducerCode=:introducerCode, feesIfAny=:feesIfAny, paymentBy=:paymentBy, remarks=:remarks, advisorStatus=:advisorStatus, smsSend=:smsSend WHERE id=:id")
	public int updateThroughID(@Param("joiningDate") String joiningDate, @Param("selectMember") String selectMember, @Param("nomineeName") String nomineeName, @Param("relation") String relation, @Param("branchName") String branchName,
			@Param("nomineeAge") String nomineeAge, @Param("fileName") String fileName, @Param("fileName1") String fileName1, @Param("selectPosition") String selectPosition, @Param("introducerCode") String introducerCode,
			@Param("feesIfAny") String feesIfAny, @Param("paymentBy") String paymentBy, @Param("remarks") String remarks, @Param("advisorStatus") String advisorStatus, @Param("smsSend") String smsSend, @Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE AdvisorCollectorDetails SET joiningDate=:joiningDate, selectMember=:selectMember, nomineeName=:nomineeName, relation=:relation, branchName=:branchName, nomineeAge=:nomineeAge, selectPosition=:selectPosition, introducerCode=:introducerCode, feesIfAny=:feesIfAny, paymentBy=:paymentBy, remarks=:remarks, advisorStatus=:advisorStatus, smsSend=:smsSend WHERE id=:id")
	int updateThroughID1(String joiningDate, String selectMember, String nomineeName, String relation,
			String branchName, String nomineeAge, String selectPosition, String introducerCode, String feesIfAny,
			String paymentBy, String remarks, String advisorStatus, String smsSend, Integer id);

	@Modifying
	@Transactional
	@Query("UPDATE AdvisorCollectorDetails SET branchName=:branchName, selectPosition=:selectPosition, newSenior=:newSenior WHERE id=:id")
	int updateThroughid(@Param("branchName") String branchName, @Param("selectPosition") String selectPosition, @Param("newSenior") String newSenior, @Param("id") int id);

	List<AdvisorCollectorDetails> findBybranchName(String branchName);

	List<AdvisorCollectorDetails> findByjoiningDateBetween(String getfDate, String gettDate);

	List<AdvisorCollectorDetails> findByBranchName(String branchName);

	List<AdvisorCollectorDetails> findByJoiningDateBetween(String getfDate, String gettDate);

	//List<AdvisorCollectorDetails> findAllByid(int id);

	List<AdvisorCollectorDetails> findAllById(int id);

}