package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.ClientMaster;

@Repository
public interface ClientMasterRepo extends JpaRepository<ClientMaster, Integer> {

	List<ClientMaster> findByid(int id);

	@Modifying
	@Transactional
	@Query("UPDATE ClientMaster SET memberName=:memberName, registrationDate=:registrationDate, previousBalance=:previousBalance, previousNoOfShared=:previousNoOfShared, branchName=:branchName, transferDate=:transferDate, shareAllotedfrm=:shareAllotedfrm, sharebalance=:sharebalance, transferAmount=:transferAmount, noOfShared=:noOfShared, paymode=:paymode, remarks=:remarks WHERE id=:id AND createdBy=:userId")	
	int updateThroughID1(@Param("memberName") String memberName, @Param("registrationDate") String registrationDate, @Param("previousBalance") String previousBalance, @Param("previousNoOfShared") String previousNoOfShared,
			@Param("branchName") String branchName, @Param("transferDate") String transferDate, @Param("shareAllotedfrm") String shareAllotedfrm, @Param("sharebalance") String sharebalance, @Param("transferAmount") String transferAmount,
			@Param("noOfShared") String noOfShared, @Param("paymode") String paymode, @Param("remarks") String remarks, @Param("id") int id, @Param("userId") String userId);

	@Modifying
	@Transactional
	@Query("UPDATE ClientMaster SET flag =:flag WHERE id =:id")
	public int updateMemberRectificationThroughid(@Param("flag") String flag, @Param("id") int id);

	public List<ClientMaster> findByflag(String flag);

	public List<ClientMaster> findBymemberName(String memberName);

	List<ClientMaster> findBybranchName(String branchName);

	List<ClientMaster> findByregistrationDateBetween(String getfDate, String gettDate);

	List<ClientMaster> findByintroMCode(String introMCode);

	List<ClientMaster> findByphoneno(String phoneno);

	List<ClientMaster> findBypan(String pan);

	List<ClientMaster> findByaadharNo(String aadharNo);

	List<ClientMaster> findByBranchName(String branchName);

	List<ClientMaster> findByRegistrationDateBetween(String getfDate, String gettDate);

}
