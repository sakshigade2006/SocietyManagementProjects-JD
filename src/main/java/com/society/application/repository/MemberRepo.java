package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.Member;

@Repository
public interface MemberRepo extends JpaRepository<Member, Integer> {

	@Query("SELECT COUNT(u) FROM Member u")
	long countMember();

	List<Member> findByid(int id);

	//List<Member> findByregistrationDateBetween(String fromDate, String toDate);
 
	@Modifying
	@Transactional  
	@Query("update Member p set p.verifyWithAadhar =:verifyWithAadhar,p.registrationDate =:registrationDate,p.memberNamePrefix =:memberNamePrefix,p.memberName =:memberName,p.relativeName =:relativeName,p.relativeRelation =:relativeRelation,p.gender =:gender,p.dob =:dob,p.age =:age,p.maritalStatus =:maritalStatus,p.address =:address,p.district =:district,p.state =:state,p.branchName =:branchName,p.pinCode =:pinCode,p.aadharNo =:aadharNo,p.pan =:pan,p.voterNo =:voterNo,p.phoneno =:phoneno,p.emailid =:emailid,p.occupation =:occupation,p.education =:education,p.introMCode =:introMCode,p.introMName =:introMName,p.nomineeName =:nomineeName,p.nRelation =:getnRelation,p.nomineeAddress =:nomineeAddress,p.nomineeKycNumber =:nomineeKycNumber,p.nomineeMobileNo =:nomineeMobileNo,p.nomineeAge =:nomineeAge,p.nomineePanNo =:nomineePanNo,p.nomineeKycType =:nomineeKycType,p.memberJoiningFess =:memberJoiningFess,p.shareAllotedfrm =:shareAllotedfrm,p.noOfShared =:noOfShared,p.enterShareAmount =:enterShareAmount,p.paymode =:paymode,p.remarks =:remarks  where p.id =:id" )
	int updateThroughid(@Param("verifyWithAadhar") String verifyWithAadhar,@Param("registrationDate") String registrationDate,@Param("memberNamePrefix") String memberNamePrefix,@Param("memberName") String memberName,
			@Param("relativeName") String relativeName,@Param("relativeRelation") String relativeRelation,@Param("gender") String gender,@Param("dob") String dob,@Param("age") String age,@Param("maritalStatus") String maritalStatus,
			@Param("address")	String address,@Param("district") String district,@Param("state") String state,@Param("branchName") String branchName,@Param("pinCode") String pinCode,@Param("aadharNo") String aadharNo,
			@Param("pan")	String pan,@Param("voterNo") String voterNo,@Param("phoneno") String phoneno,@Param("emailid") String emailid,@Param("occupation") String occupation,@Param("education") String education,
			@Param("introMCode") String introMCode,@Param("introMName") String introMName,@Param("nomineeName") String nomineeName,@Param("getnRelation") String getnRelation,@Param("nomineeAddress") String nomineeAddress,
			@Param("nomineeKycNumber") String nomineeKycNumber, @Param("nomineeMobileNo")  String nomineeMobileNo,@Param("nomineeAge") String nomineeAge,@Param("nomineePanNo") String nomineePanNo,
			@Param("nomineeKycType") String nomineeKycType, @Param("memberJoiningFess") String memberJoiningFess,@Param("shareAllotedfrm") String shareAllotedfrm,@Param("noOfShared") String noOfShared,
			@Param("enterShareAmount") String enterShareAmount,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("id") int id);

	List<Member> findBybranchName(String branchName);

	List<Member> findByregistrationDateBetween(String getfDate, String gettDate);

	List<Member> findBymemberName(String memberName);

	List<Member> findByintroMCode(String introMCode);

	List<Member> findByphoneno(String phoneno);

	List<Member> findByaadharNo(String aadharNo);

	List<Member> findBypan(String pan);

	List<Member> findBytransferDateBetween(String getfDate, String gettDate);

	public List<Member> findByselectByCode(String selectByCode);
	
	@Modifying
	@Transactional
	@Query("update Member m set m.registrationDate =:registrationDate, m.memberNamePrefix =:memberNamePrefix, m.memberName =:memberName, m.relativeName =:relativeName, m.relativeRelation =:relativeRelation, m.gender =:gender, m.dob =:dob, m.age =:age, m.maritalStatus =:maritalStatus, m.address =:address, m.district =:district, m.state =:state, m.branchName =:branchName, m.pinCode =:pinCode, m.aadharNo =:aadharNo, m.pan =:pan, m.voterNo =:voterNo, m.phoneno =:phoneno, m.emailid =:emailid, m.occupation =:occupation, m.education =:education, m.introMCode =:introMCode, m.introMName =:introMName, m.imgName =:fileName1, m.nomineeName =:nomineeName, m.nRelation =:nRelation, m.nomineeAddress =:nomineeAddress, m.nomineeKycNumber =:nomineeKycNumber, m.nomineeMobileNo =:nomineeMobileNo, m.nomineeAge =:nomineeAge, m.nomineePanNo =:nomineePanNo, m.nomineeKycType =:nomineeKycType, m.memberJoiningFess =:memberJoiningFess, m.shareAllotedfrm =:shareAllotedfrm, m.noOfShared =:noOfShared, m.enterShareAmount =:enterShareAmount, m.paymode =:paymode, m.chkNo =:chkNo, m.chkDate =:chkDate, m.depositAcc =:depositAcc, m.remarks =:remarks where m.selectByCode =:selectByCode" )
	public int updateThroughselectByCode(@Param("selectByCode") String selectByCode,@Param("registrationDate") String registrationDate,@Param("memberNamePrefix") String memberNamePrefix,
		@Param("memberName") String memberName,@Param("relativeName") String relativeName,@Param("relativeRelation") String relativeRelation,@Param("gender") String gender, @Param("dob") String dob, @Param("age") String age,
		@Param("maritalStatus")	String maritalStatus,@Param("address") String address,@Param("district") String district,@Param("state") String state,@Param("branchName") String branchName,@Param("pinCode") String pinCode,
		@Param("aadharNo") String aadharNo,@Param("pan") String pan,@Param("voterNo") String voterNo,@Param("phoneno") String phoneno,@Param("emailid") String emailid,@Param("occupation") String occupation,
		@Param("education")	String education,@Param("introMCode") String introMCode,@Param("introMName") String introMName,@Param("fileName1") String fileName1,@Param("nomineeName") String nomineeName,
		@Param("nRelation")	String nRelation,@Param("nomineeAddress") String nomineeAddress,@Param("nomineeKycNumber") String nomineeKycNumber,@Param("nomineeMobileNo") String nomineeMobileNo,@Param("nomineeAge") String nomineeAge,
		@Param("nomineePanNo") String nomineePanNo,@Param("nomineeKycType") String nomineeKycType,@Param("memberJoiningFess") String memberJoiningFess,@Param("shareAllotedfrm") String shareAllotedfrm,
		@Param("noOfShared") String noOfShared,@Param("enterShareAmount") String enterShareAmount,@Param("paymode") String paymode,@Param("chkNo") String chkNo,@Param("chkDate") String chkDate,@Param("depositAcc") String depositAcc,
		@Param("remarks") String remarks);
	
	@Modifying
	@Transactional
	@Query("UPDATE Member SET flag =:flag WHERE selectByCode =:selectByCode")
	public int updateMemberRectificationThroughselectByCode(@Param("flag") String flag,@Param("selectByCode") String selectByCode);

	public List<Member> findByflag(String flag);

	@Query("select count(id) from Member")
	int countOfClient();

	
}
