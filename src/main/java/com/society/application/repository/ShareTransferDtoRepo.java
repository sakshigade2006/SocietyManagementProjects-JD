package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.ShareTransferDto;

@Repository
public interface ShareTransferDtoRepo extends JpaRepository<ShareTransferDto, Integer>{
	
	@Query("SELECT COUNT(u) FROM ShareTransferDto u")
	long countShare();
	
	@Query(value="select * from share_transfer_dto where member_name =?",nativeQuery = true)
	 List<ShareTransferDto> searchUsingName(String name);

	List<ShareTransferDto> findByid(int i);
	
	//List<ShareTransferDto> findByid(int i);

	@Modifying
	@Transactional
	@Query("UPDATE ShareTransferDto SET flag =:flag WHERE id =:id")
    int updateThroughIDInDeleteShareRectification(@Param("flag")String flag,@Param("id") int id);

	List<ShareTransferDto> findByflag(String flag);
	
	@Modifying
	@Transactional 
	@Query("update ShareTransferDto set memberName=:memberName, doj=:doj, previousShare=:previousShare, previousShareNo=:previousShareNo, faceValue=:faceValue, branchName=:branchName, transferDate=:transferDate, shareAllotedfrm2=:shareAllotedfrm2, sharebalance=:sharebalance, transferAmount=:transferAmount, noOfShare=:noOfShare, paymode=:paymode, remarks=:remarks where id=:id")
	int updateThroughID(@Param("memberName") String memberName,@Param("doj") String doj,@Param("previousShare") String previousShare,@Param("previousShareNo") String previousShareNo,
			@Param("faceValue")	String faceValue,@Param("branchName") String branchName,@Param("transferDate") String transferDate,@Param("shareAllotedfrm2") String shareAllotedfrm2,@Param("sharebalance") String sharebalance,
			@Param("transferAmount") String transferAmount,@Param("noOfShare") String noOfShare,@Param("paymode") String paymode,@Param("remarks") String remarks,@Param("id") Integer id);

	List<ShareTransferDto> findBymemberData(String string);

	List<ShareTransferDto> findBybranchName(String branchName);

	List<ShareTransferDto> findBytransferDateBetween(String getfDate, String gettDate);

	List<ShareTransferDto> findBydojBetween(String getfDate, String gettDate);
	
}
