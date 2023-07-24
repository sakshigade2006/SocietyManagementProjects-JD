package com.society.application.controler;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AttendenceMaster;
import com.society.application.model.BranchMaster;
import com.society.application.model.DepartmentMaster;
import com.society.application.model.DesignationMaster;
import com.society.application.model.Employee;
import com.society.application.model.GenericGetById;
import com.society.application.model.HolidayMaster;
import com.society.application.model.Loan;
import com.society.application.model.SalaryMaster;
import com.society.application.repository.AttendenceMasterRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.DepartmentMasterRepo;
import com.society.application.repository.DesignationMasterRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.HolidayMasterRepo;
import com.society.application.repository.SalaryMasterRepo;

@Controller
public class PayrollController {

	@Autowired
	DesignationMasterRepo designationMasterRepo;

	@Autowired
	DepartmentMasterRepo departmentMasterRepo;

	@Autowired
	EmployeeRepo employeeRepo;

	@Autowired
	SalaryMasterRepo salaryMasterRepo;

	@Autowired
	AttendenceMasterRepo attendenceMasterRepo;
	
	@Autowired
	BranchMasterRepo branchMasterRepo;
	
	@Autowired
	HolidayMasterRepo holidayMasterRepo;

	@GetMapping("/DesignationMasterPayroll")
	public String designationMaster(Model model) {
		return "payrollManagement/DesignationMaster";
	}

	@PostMapping("/saveDesignationMasterData")
	public String saveDesignationMasterData(
			@ModelAttribute("saveDesignationMasterData") DesignationMaster designationMaster, Model model,HttpSession session) {
		String createdBy= (session.getAttribute("ID").toString());
		designationMaster.setCreatedBy(createdBy);
		designationMasterRepo.save(designationMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/DesignationMaster";
	}

	@GetMapping("/getAllDestignation")
	@ResponseBody
	public List<DesignationMaster> getAllDestignation() {
		return designationMasterRepo.findAll();
	}

	@GetMapping("/DepartmentMasterPayroll")
	public String departmentMaster(Model model) {
		return "payrollManagement/DepartmentMaster";
	}

	@PostMapping("/saveDepartmentMasterData")
	public String saveDepartmentMasterData(
			@ModelAttribute("saveDepartmentMasterData") DepartmentMaster departmentMaster, Model model,HttpSession session) {
		String createdBy= (session.getAttribute("ID").toString());
		departmentMaster.setCreatedBy(createdBy);
		departmentMasterRepo.save(departmentMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/DepartmentMaster";
	}

	@GetMapping("/EmployeeMasterPayroll")
	public String employeeMaster(Model model) {
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "payrollManagement/EmployeeMaster";
	}

	@GetMapping("/EmployeeLeaveDetails")
	public String employeeLeaveDetails(Model model) {
		return "payrollManagement/EmployeeLeaveDetails";
	}

	@GetMapping("/SalarySetupMaster")
	public String salarySetupMaster(Model model) {
		List<SalaryMaster> listSalary = salaryMasterRepo.findAll();
		model.addAttribute("salaryList", listSalary);
		return "payrollManagement/SalarySetupMaster";
	}

	@GetMapping("/getAllEmployeeData")
	@ResponseBody
	public List<Employee> getAllEmployeeData() {
		return employeeRepo.findAll();
	}

	@PostMapping("/getEmpById")
	@ResponseBody
	public List<Employee> getEmpById(@RequestBody GenericGetById id) {
		Optional<Employee> emp = employeeRepo.findById(Integer.parseInt(id.getId()));
		// System.err.println(emp.get());
		return Arrays.asList(emp.get());
	}

	@PostMapping("/saveSalarySetupMaster")
	public String saveSalarySetupMaster(@ModelAttribute("saveSalarySetupMaster") SalaryMaster salaryMaster,
			Model model,HttpSession session) {
		String createdBy= (session.getAttribute("ID").toString());
		salaryMaster.setCreatedBy(createdBy);
		salaryMasterRepo.save(salaryMaster);
		List<SalaryMaster> listSalary = salaryMasterRepo.findAll();
		model.addAttribute("salaryList", listSalary);
		model.addAttribute("status", "success");
		return "payrollManagement/SalarySetupMaster";
	}

	@GetMapping("/HrmAppointmentLetter")
	public String hrmAppointmentLetter(Model model) {
		return "payrollManagement/HrmAppointmentLetter";
	}

	@GetMapping("/HrmOfferLetter")
	public String hrmOfferLetter(Model model) {
		return "payrollManagement/HrmOfferLetter";
	}

	@GetMapping("/OffDaySetting")
	public String offDaySetting(Model model) {
		return "payrollManagement/OffDaySetting";
	}

	@GetMapping("/LeaveAdjustment")
	public String leaveAdjustment(Model model) {
		return "payrollManagement/LeaveAdjustment";
	}

	@PostMapping("/saveEmployeeLeaveMaster")
	public String saveEmployeeLeaveMaster(@ModelAttribute("saveEmployeeLeaveMaster") Employee employee, Model model,HttpSession session) {
	    System.err.println(employee);
	    Optional<Employee> emp = employeeRepo.findById(Integer.parseInt(employee.getEmpCode()));

	    //System.out.println(emp.get().getCl());
	    //System.out.println(employee.getCl());

	    if (emp.get().getCl() != null) {
	        Integer cl = Integer.parseInt(emp.get().getCl());// db

	        String inputString = employee.getCl();
	        String[] clValues = inputString.split(",");

	        if (clValues.length > 0) {
	            Integer clUser = Integer.parseInt(clValues[0]);// user
	            if (cl != 0) {
	                if (clUser != null && clUser != 0) {
	                    cl = cl - clUser;
	                    employee.setCl(String.valueOf(cl));
	                    emp.get().setRcl(String.valueOf(cl));
	                }
	            }
	        }
	    }
	    emp.get().setCl(employee.getCl());
	    emp.get().setSl(employee.getSl());
	    emp.get().setEl(employee.getEl());
	    emp.get().setLeaveDate(employee.getLeaveDate());
	    emp.get().setLeavePurpose(employee.getLeavePurpose());
	    String createdBy= (session.getAttribute("ID").toString());
	    emp.get().setCreatedBy(createdBy);
	    employeeRepo.save(emp.get());
	    model.addAttribute("status", "success");
	    return "payrollManagement/LeaveAdjustment";
	}
	
	@PostMapping("/saveEmployeeLeaveMaster123")
	public String saveEmployeeLeaveMaster123(@ModelAttribute("saveEmployeeLeaveMaster123") Employee employee, Model model,HttpSession session) {
	    Optional<Employee> empOptional = employeeRepo.findById(employee.getId());
	    if (empOptional.isPresent()) {
	        Employee emp = empOptional.get();
	        emp.setCl(employee.getCl());
	        emp.setSl(employee.getSl());
	        emp.setEl(employee.getEl());
	        String createdBy= (session.getAttribute("ID").toString());
		    emp.setCreatedBy(createdBy);
	        employeeRepo.save(emp);
	        model.addAttribute("status", "success");
	    } else {
	        model.addAttribute("status", "error");
	    }
	    return "payrollManagement/EmployeeLeaveDetails";
	}

	@GetMapping("/HrmAttendance")
	public String hrmAttendance(Model model) {
		return "payrollManagement/HrmAttendance";
	}

	@GetMapping("/getAllAttendence")
	@ResponseBody
	public List<AttendenceMaster> getAllAttendence() {
		return attendenceMasterRepo.findAll();
	}

	@GetMapping("/HrmSalaryGenerate")
	public String hrmSalaryGenerate(Model model) {
		return "payrollManagement/HrmSalaryGenerate";
	}

	@GetMapping("/HrmSalaryPayment")
	public String hrmSalaryPayment(Model model) {
		return "payrollManagement/HrmSalaryPayment";
	}

	@GetMapping("/HrmSalarySlipPrint")
	public String hrmSalarySlipPrint(Model model) {
		return "payrollManagement/HrmSalarySlipPrint";
	}

	@PostMapping("/getEmpByIds")
	@ResponseBody
	public List<Employee> getEmpByIds(@RequestBody GenericGetById id) {
		Optional<Employee> emp = employeeRepo.findById(Integer.parseInt(id.getId()));
		if (emp.isPresent()) {
			return Arrays.asList(emp.get());
		} else {
			return new ArrayList<>(); // Return an empty list if employee not found
		}
	}

	@GetMapping("/AttendanceReport")
	public String attendanceReport(Model model) {
		return "payrollManagement/AttendanceReport";
	}

	@GetMapping("/HrmSalaryPaymentReport")
	public String hrmSalaryPaymentReport(Model model) {
		return "payrollManagement/HrmSalaryPaymentReport";
	}

	@GetMapping("/HRMEmployeeSearch")
	public String hRMEmployeeSearch(Model model) {
		return "payrollManagement/HRMEmployeeSearch";
	}

	@GetMapping("/HrmEmployeeIDCard")
	public String hrmEmployeeIDCard(Model model) {
		return "payrollManagement/HrmEmployeeIDCard";
	}

	@GetMapping("/getAllDepartment")
	@ResponseBody
	public List<DepartmentMaster> getAllDepartment() {
		return departmentMasterRepo.findAll();
	}

	@PostMapping("/getSalaryById")
	@ResponseBody
	public List<SalaryMaster> getSalaryById(@RequestBody GenericGetById id) {
		List<SalaryMaster> salaryEmp = salaryMasterRepo.searchByEmpId(id.getId());
		System.err.println(salaryEmp);
		return salaryEmp;
	}

	@PostMapping("/saveEmployeeMasterData")
	public String saveEmployeeMasterData(@ModelAttribute("saveEmployeeMasterData") Employee employee, Model model,HttpSession session) {
		String createdBy= (session.getAttribute("ID").toString());
		employee.setCreatedBy(createdBy);
		employeeRepo.save(employee);
		model.addAttribute("status", "success");
		return "payrollManagement/EmployeeMaster";
	}

	@PostMapping("/getEmpByIdSalary")
	@ResponseBody
	public List<SalaryMaster> getEmpByIdSalary(@RequestBody GenericGetById id) {
		List<SalaryMaster> emp = salaryMasterRepo.searchByEmpId(id.getId());
		return emp;
	}

	@PostMapping("/leavesubmit")
	public String saveEmployeeLeaveMaster(@ModelAttribute("lavesubmit") AttendenceMaster attendenceMaster,
			Model model,HttpSession session) {
		String createdBy= (session.getAttribute("ID").toString());
		attendenceMaster.setCreatedBy(createdBy);
		attendenceMasterRepo.save(attendenceMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/HrmAttendance";
	}

	@PostMapping("/updateSalaryPayment")
	public String updateSalaryPayment(@ModelAttribute("updateSalaryPayment") SalaryMaster salaryMaster, Model model,HttpSession session) {
		List<SalaryMaster> salaryEmp = salaryMasterRepo.searchByEmpId(salaryMaster.getEmpCode());
		salaryEmp.get(0).setPayBranch(salaryMaster.getPayBranch());
		salaryEmp.get(0).setPayDate(salaryMaster.getPayDate());
		salaryEmp.get(0).setPaymode(salaryMaster.getPaymode());
		String createdBy= (session.getAttribute("ID").toString());
		salaryEmp.get(0).setCreatedBy(createdBy);
		salaryMasterRepo.save(salaryEmp.get(0));
		model.addAttribute("status", "success");
		return "payrollManagement/HrmSalaryPayment";

	}
	
	@PostMapping("/searchEmployeeIDCard")
	@ResponseBody
	public Employee searchEmployeeIDCard(@RequestBody GenericGetById id) {
		Optional<Employee> emp = employeeRepo.findById(Integer.parseInt(id.getId()));
		return emp.get();
	}
	
	@GetMapping("/datafromdate")
	@ResponseBody
	public List<AttendenceMaster> sortattendance(HttpServletRequest request){
		String fDate=request.getParameter("fDate");
		String tDate=request.getParameter("tDate");
		List<AttendenceMaster> list =attendenceMasterRepo.findByleaveDateBetween(fDate,tDate);
		return list;
	}
	
	// 16.Employee Search
	@GetMapping("/getAllBranchIndropdown")
	@ResponseBody
	public List<BranchMaster> getAllBranchIndropdown() {
		return branchMasterRepo.findAll();
	}

	// 16.Employee Search
	@GetMapping("/getAllDepartmentsInDropdown")
	@ResponseBody
	public List<DepartmentMaster> getAllDepartmentsInDropdown() {
		return departmentMasterRepo.findAll();
	}

	@GetMapping("/getAllDesignationInDropdown")
	@ResponseBody
	public List<DesignationMaster> getAllDesignationInDropdown() {
		return designationMasterRepo.findAll();
	}

	@PostMapping("/searchByFieldsOfEmployeeSearch")
	@ResponseBody
	public List<Employee> searchByFieldsOfEmployeeSearch(@RequestBody Employee employee) {
		List<Employee> branch = employeeRepo.findBybranch(employee.getBranch());
		List<Employee> date = employeeRepo.findByleaveDateBetween(employee.getfDate(), employee.gettDate());
		List<Employee> empName = employeeRepo.findByempName(employee.getEmpName());
		List<Employee> empCode = employeeRepo.findByempCode(employee.getEmpCode());
		List<Employee> mbNo = employeeRepo.findByphoneNo(employee.getPhoneNo());
		List<Employee> designation = employeeRepo.findBydesignation(employee.getDesignation());
		List<Employee> department = employeeRepo.findBydepartment(employee.getDepartment());

		if (!branch.isEmpty()) {
			return branch;
		} else if (!date.isEmpty()) {
			return date;
		} else if (!empName.isEmpty()) {
			return empName;
		} else if (!empCode.isEmpty()) {
			return empCode;
		} else if (!mbNo.isEmpty()) {
			return mbNo;
		} else if (!designation.isEmpty()) {
			return designation;
		}
		return department;
	}
	
	// get branch of salary payment
	// 12.Salary Payment
	@GetMapping("/getAllBranchIndropdownSalryPayment")
	@ResponseBody
	public List<BranchMaster> getAllBranchIndropdownSalryPayment() {
		return branchMasterRepo.findAll();
	}
	
	@PostMapping("/getAllHolidays")
	@ResponseBody
	public List<HolidayMaster> getAllHolidays(@RequestBody Map<String, String> requestBody) {
	    String date = requestBody.get("date");
	    List<HolidayMaster> holidays = holidayMasterRepo.findByDate(date);
	    return holidays;
	}
	
	@PostMapping("/getEmpByCode")
	@ResponseBody
	public List<Employee> getEmpByCode(@RequestBody Employee id) {
		List<Employee> emp = employeeRepo.findByempCode(id.getEmpCode());
		return emp;
	}

	@PostMapping("/getEmpByleaveDate")
	@ResponseBody
	public List<Employee> getEmpByleaveDate(@RequestBody Employee id) {
		List<Employee> emp = employeeRepo.findByleaveDateBetween(id.getfDate(),id.gettDate());
		return emp;
	}

	@PostMapping("/getSalaryMasterByDate")
	@ResponseBody
	public List<SalaryMaster> getSalaryMasterByDate(@RequestBody SalaryMaster obj) {
		List<SalaryMaster> obj2 = salaryMasterRepo.findBypayDateBetween(obj.getfDate(),obj.gettDate());
		return obj2;
	}

}
