package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Integer> {

	List<Employee> findByid(int i);

	List<Employee> findBydepartment(String department);

	List<Employee> findBydesignation(String designation);

	List<Employee> findByphoneNo(String phoneNo);

	List<Employee> findByempName(String empName);

	List<Employee> findByempCode(String empCode);

	//List<Employee> findByDOJBetween(String getfDate, String gettDate);

	List<Employee> findAllById(int id);

	List<Employee> findBydojBetween(String getfDate, String gettDate);

	List<Employee> findBybranch(String branch);

	List<Employee> findByleaveDateBetween(String getfDate, String gettDate);

}
