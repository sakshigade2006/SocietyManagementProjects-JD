package com.society.application.repository;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.dto.LoanWithLoanMasterDTO;
import com.society.application.model.Loan;

@Repository
public interface LoanRepo extends JpaRepository<Loan, Integer> {
	@Query("SELECT COUNT(u) FROM Loan u")
	long countLoan();

	List<Loan> findBymemberData(String string);

	List<Loan> findByloanPlanName(String loanPlanName);

	@Query(value = "select * from loan inner join member on \r\n" + "loan.search_member_code = member.id\r\n"
			+ "where csp_name = ?1 AND loan_date >=?2 AND loan_date <= ?3", nativeQuery = true)
	List<Loan> filterLoanData(String branch, String fdate, String tdate);

	@Query(value = "select * from loan where mode_reg_or_irr = 'regular'", nativeQuery = true)
	Loan searchRegularData();

	@Query(value = "select * from loan where mode_reg_or_irr = 'irregular'", nativeQuery = true)
	Loan searchIrRegularData();

	@Query(value = "select * from loan where type='Gold'", nativeQuery = true)
	List<Loan> searchGoldLoan();

	@Query("SELECT new  com.society.application.dto.LoanWithLoanMasterDTO(ln, lm) "
			+ "FROM Loan ln INNER JOIN LoanMaster lm ON ln.loanPlanName = lm.id " + "WHERE ln.id = :id")
	Optional<LoanWithLoanMasterDTO> findLoanWithLoanMasterById(@Param("id") Integer id);

	Loan findByid(int id);

	List<Loan> findBybranchname(String branchname);

	//List<Loan> findByloanDateBetween(String getfDate, String gettDate);

	List<Loan> findBysearchMemberCode(String searchMemberCode);

	List<Loan> findByadvisorCode(String advisorCode);

	List<Loan> findBymemberRelativesName(String memberRelativesName);

	List<Loan> findByloanPurpose(String loanPurpose);

	List<Loan> findByloanDateBetween(String getfDate, String gettDate);

	List<Loan> findBycspName(String cspName);

	List<Loan> findByadvisorName(String advisorName);

	//List<Loan> findByid(int id);
	
	
	

}
