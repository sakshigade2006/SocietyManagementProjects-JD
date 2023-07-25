package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.LoanMaster;

@Repository
public interface LoanMasterRepo  extends JpaRepository<LoanMaster, Integer>{

	List<LoanMaster> findByflag(String flag);

	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster SET flag =:flag WHERE id =:id AND createdBy=:userId")
	public int updateThroughIdInDeleteLoanApplication(@Param("flag") String flag, @Param("id") int id,@Param("userId") String userId);

	public List<LoanMaster> findByid(Integer id);
	
	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster SET flag=:flag, loanDate=:loanDate, memberName=:memberName, branchName=:branchName, loanPlanName=:loanPlanName, planTerm=:planTerm, loanAmount=:loanAmount, loanPurpose=:loanPurpose, Photo=:fileName1, signature=:fileName2, searchMemberCode=:searchMemberCode, securityType=:securityType, coApplicantCode=:coApplicantCode, securityDetails=:securityDetails, advisorCode=:advisorCode WHERE id=:id")
	public int updateThroughID(@Param("loanDate") String loanDate, @Param("memberName") String memberName, @Param("branchName") String branchName, @Param("loanPlanName") String loanPlanName, @Param("planTerm") String planTerm,
			@Param("loanAmount") String loanAmount, @Param("loanPurpose") String loanPurpose, @Param("fileName1") String fileName1, @Param("fileName2") String fileName2, @Param("searchMemberCode") String searchMemberCode,
			@Param("securityType") String securityType, @Param("coApplicantCode") String coApplicantCode, @Param("securityDetails") String securityDetails, @Param("advisorCode") String advisorCode,@Param("flag") String flag, @Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster SET flag=:flag ,loanDate=:loanDate, memberName=:memberName, branchName=:branchName, loanPlanName=:loanPlanName, planTerm=:planTerm, loanAmount=:loanAmount, loanPurpose=:loanPurpose, searchMemberCode=:searchMemberCode, securityType=:securityType, coApplicantCode=:coApplicantCode, securityDetails=:securityDetails, advisorCode=:advisorCode WHERE id=:id")
	public int updateThroughID1(@Param("loanDate") String loanDate,@Param("memberName") String memberName,@Param("branchName") String branchName,@Param("loanPlanName") String loanPlanName,
			@Param("planTerm") String planTerm,@Param("loanAmount") String loanAmount,@Param("loanPurpose") String loanPurpose,@Param("searchMemberCode") String searchMemberCode,@Param("securityType") String securityType,
			@Param("coApplicantCode") String coApplicantCode,@Param("securityDetails") String securityDetails,@Param("advisorCode") String advisorCode,@Param("flag") String flag, @Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster set memberName =:memberName, branchName =:branchName, photo =:fileName1, signature =:fileName2, goldImg =:fileName3, loanPlanName =:loanPlanName, planTerm =:planTerm, loanAmount =:loanAmount, loanPurpose =:loanPurpose, karat =:karat, itemType =:itemType, itemName =:itemName, lockerLoc =:lockerLoc, purity =:purity, itemQty =:itemQty, itemWt =:itemWt, stonewt =:stonewt, searchMemberCode =:searchMemberCode, securityType =:securityType, coApplicantCode =:coApplicantCode, securityDetails =:securityDetails WHERE id =:id")
	public int updateThroughid(@Param("memberName") String memberName,@Param("branchName") String branchName,@Param("fileName1") String fileName1,@Param("fileName2") String fileName2,@Param("fileName3") String fileName3,
			@Param("loanPlanName")	String loanPlanName,@Param("planTerm") String planTerm,@Param("loanAmount") String loanAmount,@Param("loanPurpose") String loanPurpose,@Param("karat") String karat,@Param("itemType") String itemType,
			@Param("itemName")	String itemName,@Param("lockerLoc") String lockerLoc,@Param("purity") String purity,@Param("itemQty") String itemQty,@Param("itemWt") String itemWt,@Param("stonewt") String stonewt,
			@Param("searchMemberCode")	String searchMemberCode,@Param("securityType") String securityType,@Param("coApplicantCode") String coApplicantCode,@Param("securityDetails") String securityDetails,@Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster SET flag =:flag WHERE id =:id AND createdBy=:userId")
	public int updateGoldLoanThroughid(@Param("flag") String flag,@Param("id")  int id,@Param("userId") String userId);
	
}
