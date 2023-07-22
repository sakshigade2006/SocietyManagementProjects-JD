package com.society.application.repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectorDetails;

@Repository
public interface AddInvestmentRepo extends JpaRepository<AddInvestment, Integer>{

	public List<AddInvestment> findBypolicyno(String policyno);

	public List<AddInvestment> findBysearchMemberCode(String searchMemberCode);

	@Modifying
	@Transactional 
	@Query("update AddInvestment set photo=:fileName1, signature=:fileName2, policyDate=:policyDate, nomineeName=:nomineeName, nomineeAge=:nomineeAge, nomineeRelation=:nomineeRelation, cSPName=:cSPName, modeOfOp=:modeOfOp, jointCode=:jointCode, schemeType=:schemeType, schemeName=:schemeName, mode=:mode, policyAmount=:policyAmount, paymode=:paymode, remarks=:remarks, advisorCode=:advisorCode, chkisSms=:chkisSms where searchMemberCode=:searchMemberCode")
	public int updateThroughsearchMemberCode(@Param("fileName1") String fileName1, @Param("fileName2") String fileName2, @Param("policyDate") String policyDate, @Param("nomineeName") String nomineeName,
			@Param("nomineeAge") String nomineeAge, @Param("nomineeRelation") String nomineeRelation, @Param("cSPName") String cSPName, @Param("modeOfOp") String modeOfOp, @Param("jointCode") String jointCode,
			@Param("schemeType") String schemeType, @Param("schemeName") String schemeName, @Param("mode") String mode, @Param("policyAmount") String policyAmount, @Param("paymode") String paymode, @Param("remarks") String remarks,
			@Param("advisorCode") String advisorCode, @Param("chkisSms") String chkisSms, @Param("searchMemberCode") String searchMemberCode);

	//AddInvestment findAllById(int id);

	public List<AddInvestment> findByid(int i);

	//List<AddInvestment> findBysearchMemberCode(String searchMemberCode);
	
	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET dob=:dob, memberName=:memberName, policyDate =:policyDate, age =:age,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nomineeAge =:nomineeAge,nomineeRelation =:nomineeRelation,address =:address,district =:district,state =:state,pin =:pin,CSPName =:cSPName,modeOfOp =:modeOfOp,jointCode =:jointCode,jointName =:jointName,mDate =:mDate,schemeType =:schemeType,schemeName =:schemeName,term =:term,mode =:mode,policyAmount =:policyAmount,totalDeposit =:totalDeposit,maturityAmount =:maturityAmount,mISInterest =:mISInterest,paymode =:paymode,remarks =:remarks,advisorCode =:advisorCode,advisorName =:advisorName,chkisSms =:chkisSms, photo =:fileName, signature =:fileName2  WHERE searchMemberCode =:searchMemberCode")
	public int updateThroughTheSearchMemeberCode(@Param("policyDate") String policyDate,@Param("memberName") String memberName,@Param("dob") String dob, @Param("age")String age,
			@Param("relativeName")	String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nomineeAge") String nomineeAge,@Param("nomineeRelation") String nomineeRelation,
			@Param("address")	String address,@Param("pin") String pin,@Param("cSPName") String cSPName,@Param("modeOfOp") String modeOfOp,@Param("jointCode") String jointCode,@Param("district") String district,
			@Param("state")	String state,@Param("jointName") String jointName,@Param("mDate") String mDate,@Param("schemeType") String schemeType,@Param("schemeName") String schemeName,@Param("term") String term,
			@Param("mode")	String mode,@Param("policyAmount") String policyAmount,@Param("totalDeposit") String totalDeposit, @Param("maturityAmount") String maturityAmount,
			@Param("mISInterest")	String mISInterest,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("chkisSms") String chkisSms,
			@Param("fileName")	String fileName,@Param("fileName2") String fileName2,@Param("searchMemberCode") String searchMemberCode);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET dob=:dob, memberName=:memberName, policyDate =:policyDate, age =:age,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nomineeAge =:nomineeAge,nomineeRelation =:nomineeRelation,address =:address,district =:district,state =:state,pin =:pin,CSPName =:cSPName,modeOfOp =:modeOfOp,jointCode =:jointCode,jointName =:jointName,mDate =:mDate,schemeType =:schemeType,schemeName =:schemeName,term =:term,mode =:mode,policyAmount =:policyAmount,totalDeposit =:totalDeposit,maturityAmount =:maturityAmount,mISInterest =:mISInterest,paymode =:paymode,remarks =:remarks,advisorCode =:advisorCode,advisorName =:advisorName,chkisSms =:chkisSms  WHERE searchMemberCode =:searchMemberCode")
    public int updateThroughTheSearchMemeberCode2(@Param("policyDate") String policyDate,@Param("memberName") String memberName,@Param("dob") String dob, @Param("age")String age,
			@Param("relativeName")	String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nomineeAge") String nomineeAge,@Param("nomineeRelation") String nomineeRelation,
			@Param("address")	String address,@Param("pin") String pin,@Param("cSPName") String cSPName,@Param("modeOfOp") String modeOfOp,@Param("jointCode") String jointCode,@Param("district") String district,
			@Param("state")	String state,@Param("jointName") String jointName,@Param("mDate") String mDate,@Param("schemeType") String schemeType,@Param("schemeName") String schemeName,@Param("term") String term,
			@Param("mode")	String mode,@Param("policyAmount") String policyAmount,@Param("totalDeposit") String totalDeposit, @Param("maturityAmount") String maturityAmount,
			@Param("mISInterest")	String mISInterest,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("chkisSms") String chkisSms,
			@Param("searchMemberCode") String searchMemberCode);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET tDate=:tDate, branchName=:branchName, transactionFor =:transactionFor, remarks =:remarks, transactionType =:transactionType, amount =:amount, paymode =:paymode, photo =:fileName1, signature =:fileName2 WHERE id =:id")
	int updateThroughid(@Param("tDate") String tDate, @Param("branchName") String branchName, @Param("transactionFor") String transactionFor, @Param("remarks") String remarks, @Param("transactionType") String transactionType,
			@Param("amount") String amount, @Param("paymode") String paymode, @Param("fileName1") String fileName1, @Param("fileName2") String fileName2, @Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET tDate=:tDate, branchName=:branchName, transactionFor =:transactionFor, remarks =:remarks, transactionType =:transactionType, amount =:amount, paymode =:paymode WHERE id =:id")
	int updateThroughidWithoutFile(@Param("tDate") String tDate,@Param("branchName") String branchName,@Param("transactionFor") String transactionFor,@Param("remarks") String remarks,
			@Param("transactionType")	String transactionType,@Param("amount") String amount,@Param("paymode") String paymode,@Param("id") Integer id);

	public List<AddInvestment> findBybranchName(String branchName);

	public List<AddInvestment> findByadvisorCode(String advisorCode);

	public List<AddInvestment> findByplanName(String planName);

	public List<AddInvestment> findByapplicantName(String applicantName);

	public List<AddInvestment> findBymDateBetween(String getfDate, String gettDate);
	
	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET photo = :fileName, signature = :fileName2, noOfInstPaid = :noOfInstPaid, paymode = :paymode, collectorCode = :collectorCode, remarks = :remarks WHERE  (id = :searchbyPolicyNo OR renewalDate = :renewalDate OR branchName = :branchName) AND createdBy=:userId")
	public int updateThroughIDRenewalDateBranch(@Param("fileName") String fileName,@Param("fileName2") String fileName2,@Param("noOfInstPaid") String noOfInstPaid,
			@Param("paymode") String paymode,@Param("collectorCode") String collectorCode,@Param("remarks") String remarks,@Param("renewalDate") String renewalDate, 
			@Param("branchName") String branchName,@Param("searchbyPolicyNo") Integer searchbyPolicyNo,@Param("userId") String userId);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET noOfInstPaid = :noOfInstPaid, paymode = :paymode, collectorCode = :collectorCode, remarks = :remarks WHERE (id = :searchbyPolicyNo OR renewalDate = :renewalDate OR branchName = :branchName) AND createdBy=:userId ")
	public int updateThroughIDRenewalDateBranch2(@Param("noOfInstPaid") String noOfInstPaid, @Param("paymode") String paymode,@Param("collectorCode") String collectorCode,
			@Param("remarks") String remarks, @Param("renewalDate") String renewalDate, @Param("branchName") String branchName, @Param("searchbyPolicyNo") Integer searchbyPolicyNo,@Param("userId") String userId);
	
	public List<AddInvestment> findByrenewalDate(String date);
	
	//for Rectification of Modules cspname
	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET dob=:dob, memberName=:memberName, policyDate =:policyDate, age =:age,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nomineeAge =:nomineeAge,nomineeRelation =:nomineeRelation,address =:address,district =:district,state =:state,pin =:pin,cspname =:cspname,modeOfOp =:modeOfOp,jointCode =:jointCode,jointName =:jointName,mDate =:mDate,schemeType =:schemeType,schemeName =:schemeName,term =:term,mode =:mode,policyAmount =:policyAmount,totalDeposit =:totalDeposit,maturityAmount =:maturityAmount,mISInterest =:mISInterest,paymode =:paymode,remarks =:remarks,advisorCode =:advisorCode,advisorName =:advisorName,chkisSms =:chkisSms, photo =:fileName, signature =:fileName2  WHERE policyno =:policyno")
	public int updateThroughThepolicyno(@Param("policyDate") String policyDate,@Param("memberName") String memberName,@Param("dob") String dob, @Param("age")String age,
			@Param("relativeName")	String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nomineeAge") String nomineeAge,@Param("nomineeRelation") String nomineeRelation,
			@Param("address")	String address,@Param("pin") String pin,@Param("cspname") String cspname,@Param("modeOfOp") String modeOfOp,@Param("jointCode") String jointCode,@Param("district") String district,
			@Param("state")	String state,@Param("jointName") String jointName,@Param("mDate") String mDate,@Param("schemeType") String schemeType,@Param("schemeName") String schemeName,@Param("term") String term,
			@Param("mode")	String mode,@Param("policyAmount") String policyAmount,@Param("totalDeposit") String totalDeposit, @Param("maturityAmount") String maturityAmount,
			@Param("mISInterest")	String mISInterest,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("chkisSms") String chkisSms,
			@Param("fileName")	String fileName,@Param("fileName2") String fileName2,@Param("policyno") String policyno);
	    
	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET dob=:dob, memberName=:memberName, policyDate =:policyDate, age =:age,relativeName =:relativeName,phoneno =:phoneno,nomineeName =:nomineeName,nomineeAge =:nomineeAge,nomineeRelation =:nomineeRelation,address =:address,district =:district,state =:state,pin =:pin,cspname =:cspname,modeOfOp =:modeOfOp,jointCode =:jointCode,jointName =:jointName,mDate =:mDate,schemeType =:schemeType,schemeName =:schemeName,term =:term,mode =:mode,policyAmount =:policyAmount,totalDeposit =:totalDeposit,maturityAmount =:maturityAmount,mISInterest =:mISInterest,paymode =:paymode,remarks =:remarks,advisorCode =:advisorCode,advisorName =:advisorName,chkisSms =:chkisSms  WHERE policyno =:policyno")  
	public int updateThroughThepolicyno2(@Param("policyDate") String policyDate,@Param("memberName") String memberName,@Param("dob") String dob, @Param("age")String age,
				@Param("relativeName")	String relativeName,@Param("phoneno") String phoneno,@Param("nomineeName") String nomineeName,@Param("nomineeAge") String nomineeAge,@Param("nomineeRelation") String nomineeRelation,
				@Param("address")	String address,@Param("pin") String pin,@Param("cspname") String cspname,@Param("modeOfOp") String modeOfOp,@Param("jointCode") String jointCode,@Param("district") String district,
				@Param("state")	String state,@Param("jointName") String jointName,@Param("mDate") String mDate,@Param("schemeType") String schemeType,@Param("schemeName") String schemeName,@Param("term") String term,
				@Param("mode")	String mode,@Param("policyAmount") String policyAmount,@Param("totalDeposit") String totalDeposit, @Param("maturityAmount") String maturityAmount,
				@Param("mISInterest")	String mISInterest,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("advisorCode") String advisorCode,@Param("advisorName") String advisorName,@Param("chkisSms") String chkisSms,
				@Param("policyno") String policyno);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET flag =:flag WHERE policyno =:policyno")
	public int updateThroughIDInDeleteinvestmentRectification( @Param("flag") String flag, @Param("policyno") String policyno);

	public List<AddInvestment> findByflag(String flag);
	
	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET flag =:flag WHERE id =:id")
	public int updateThroughIDInDeleteDailyRenewalPaymentbbb6( @Param("flag") String flag, @Param("id") int id);

	@Modifying
	@Transactional
	@Query("UPDATE AddInvestment SET flag = :flag WHERE id = :searchbyPolicyNo OR renewalDate = :renewalDate OR branchName = :branchName")
	public int updateThroughIdRenewalDateBranchName(@Param("flag") String flag, @Param("searchbyPolicyNo") int id, @Param("renewalDate") String renewalDate, @Param("branchName") String branchName);

	public List<AddInvestment> findAllById(int id);

	public List<AddInvestment> findAllByid(int id);

	public List<AddInvestment> findBypolicyDateBetween(String getfDate, String gettDate);

	//public List<AddInvestment> findByPolicyno(String policyNo);

}
