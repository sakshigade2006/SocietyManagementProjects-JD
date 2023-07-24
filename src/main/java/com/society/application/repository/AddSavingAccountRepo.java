package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AddSavingAccount;

@Repository
public interface AddSavingAccountRepo extends JpaRepository<AddSavingAccount, Integer> {

	List<AddSavingAccount> findByflag(String flag);

	List<AddSavingAccount> findByaccountNo(String accountNo);

	
	@Modifying
	@Transactional
	@Query("UPDATE AddSavingAccount SET dOB=:dOB, address=:address, jointCode =:jointCode, advisorCode =:advisorCode,chkisSms =:chkisSms,searchMemberCode =:searchMemberCode,opDate =:opDate,memberName =:memberName,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nage =:nage,nRelation =:nRelation,district =:district,cSPName =:cSPName,state =:state,pin =:pin,modeOfOp =:modeOfOp,jointName =:jointName,jointRelation =:jointRelation,sBPlan =:sBPlan,openingAmount =:openingAmount,advisorName =:advisorName,opFees =:opFees,paymode =:paymode,remarks =:remarks,chkisactive =:chkisactive,chkdebitcard =:chkdebitcard,imageApplicant =:fileName1,imageSignature =:fileName2,imgJointPhoto =:fileName3,flag=:flag  WHERE accountNo =:accountNo AND createdBy=:userId")
    int updateTheAddSavingAcoount(@Param("accountNo") String accountNo,@Param("searchMemberCode") String searchMemberCode,@Param("opDate") String opDate,@Param("memberName") String memberName,
			@Param("dOB") String dOB,@Param("relativeName") String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nage") String nage,@Param("nRelation") String nRelation,
			@Param("address") String address,@Param("district") String district,@Param("cSPName") String cSPName,@Param("state") String state,@Param("pin") String pin,@Param("modeOfOp") String modeOfOp,
			@Param("jointCode") String jointCode,@Param("jointName") String jointName,@Param("jointRelation") String jointRelation,@Param("sBPlan") String sBPlan,@Param("openingAmount") String openingAmount,
			@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("opFees") String opFees,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("chkisactive") String chkisactive,
			@Param("chkisSms") String chkisSms,@Param("chkdebitcard") String chkdebitcard,@Param("fileName1") String fileName1,@Param("fileName2") String fileName2,
			@Param("fileName3") String fileName3,@Param("flag") String i,@Param("userId") String userId);
	
	
    @Modifying
    @Transactional
    @Query("UPDATE AddSavingAccount SET dOB=:dOB, address=:address, jointCode =:jointCode, advisorCode =:advisorCode,chkisSms =:chkisSms,searchMemberCode =:searchMemberCode,opDate =:opDate,memberName =:memberName,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nage =:nage,nRelation =:nRelation,district =:district,cSPName =:cSPName,state =:state,pin =:pin,modeOfOp =:modeOfOp,jointName =:jointName,jointRelation =:jointRelation,sBPlan =:sBPlan,openingAmount =:openingAmount,advisorName =:advisorName,opFees =:opFees,paymode =:paymode,remarks =:remarks,chkisactive =:chkisactive,chkdebitcard =:chkdebitcard,flag=:flag  WHERE accountNo =:accountNo AND createdBy=:userId")
    int updateTheAddSavingAcoountWithoutFile(@Param("accountNo") String accountNo,@Param("searchMemberCode") String searchMemberCode,@Param("opDate") String opDate,
    		@Param("memberName")	String memberName,@Param("dOB") String dOB,@Param("relativeName") String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nage") String nage,
    		@Param("nRelation") String nRelation,@Param("address") String address,@Param("district") String district,@Param("cSPName") String cSPName,@Param("state") String state,@Param("pin") String pin,
    		@Param("modeOfOp") String modeOfOp,@Param("jointCode") String jointCode,@Param("jointName") String jointName,@Param("jointRelation") String jointRelation,@Param("sBPlan") String sBPlan,
    		@Param("openingAmount") String openingAmount,@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("opFees") String opFees,@Param("paymode") String paymode,@Param("remarks") String remarks,
    		@Param("chkisactive") String chkisactive,@Param("chkisSms") String chkisSms,@Param("chkdebitcard") String chkdebitcard,@Param("flag") String i,@Param("userId") String userId);

    @Modifying
    @Transactional
    @Query("UPDATE AddSavingAccount SET flag=:flag  WHERE accountNo =:accountNo")
   int softDeleterectificationofsavingrectification(@Param("flag") String flag,@Param("accountNo") String accountNo);
}
