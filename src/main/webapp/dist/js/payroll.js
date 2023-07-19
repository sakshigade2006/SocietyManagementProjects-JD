function validateGoldLoanMaster() {
	var status = true;
	const designationName = document.getElementById("designation");
	if (designationName.value === '') {
		var span = document.getElementById("designationNameMsg");
		span.textContent = "Designation Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveDesignametionMaster.submit();
		return true;
	} else {
		return false;
	}
}

function validateDepartmentMaster() {
	var status = true;
	const department = document.getElementById("department");
	if (department.value === '') {
		var span = document.getElementById("departmentMsg");
		span.textContent = "Department Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveDepartmentMasterData.submit();
		return true;
	} else {
		return false;
	}
}

function validateEmployeeMaster() {
	var status = true;
	const empType = document.getElementById("empType");
	if (empType.value === '') {
		var span = document.getElementById("empTypeMsg");
		span.textContent = "Emp Type cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DOJ = document.getElementById("DOJ");
	if (DOJ.value === '') {
		var span = document.getElementById("DOJMsg");
		span.textContent = "Joining Date cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cspName = document.getElementById("cspName");
	if (cspName.value === '') {
		var span = document.getElementById("cspNameMsg");
		span.textContent = "Branch Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const memberName = document.getElementById("memberName");
	if (memberName.value === '') {
		var span = document.getElementById("memberNameMsg");
		span.textContent = "Employee Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DOB = document.getElementById("DOB");
	if (DOB.value === '') {
		var span = document.getElementById("DOBMsg");
		span.textContent = "DOB cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const phoneNo = document.getElementById("phoneNo");
	if (phoneNo.value === '') {
		var span = document.getElementById("phoneNoMsg");
		span.textContent = "Mobile No cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const address = document.getElementById("address");
	if (address.value === '') {
		var span = document.getElementById("addressMsg");
		span.textContent = "Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const pan = document.getElementById("pan");
	if (pan.value === '') {
		var span = document.getElementById("panMsg");
		span.textContent = "PAN cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const designation = document.getElementById("designation");
	if (designation.value === '') {
		var span = document.getElementById("designationMsg");
		span.textContent = "Designation cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const department = document.getElementById("department");
	if (department.value === '') {
		var span = document.getElementById("departmentMsg");
		span.textContent = "DepartmentMsg cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveEmployeeMasterData.submit();
		return true;
	} else {
		return false;
	}
}

function clearFields(){
	document.getElementById('designationName').value = "";
}

function clearFieldsDepartment(){
	document.getElementById('department').value = "";
}

function getAllDestignation() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDestignation',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.id}</td>
                                <td scope="col">${value.designation}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvDesignation");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllDepartment() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDepartment',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.id}</td>
                                <td scope="col">${value.department}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvDepartment");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllEmployeeData(){
   	//relativeRelation
   	const select = document.getElementById("searchEmpCode");
    	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllEmployeeData',
            asynch: false,
            success: function(data) {
            	data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.id
     			select.appendChild(option)
   			})    
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
 }
 
 function validateEmployeeLeaveDetails() {
	var status = true;
	const searchEmpCode = document.getElementById("searchEmpCode");
	if (searchEmpCode.value === '') {
		var span = document.getElementById("searchEmpCodeMsg");
		span.textContent = "Select by Code cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		//document.saveEmployeeLeaveMaster.submit();
		return true;
	} else {
		return false;
	}
}

function validateEmployeeLeaveDetails2() {
	var status = true;
	const cl = document.getElementById("cl");
	if (cl.value === '') {
		var span = document.getElementById("clMsg");
		span.textContent = "CL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const sl = document.getElementById("sl");
	if (sl.value === '') {
		var span = document.getElementById("slMsg");
		span.textContent = "SL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const el = document.getElementById("el");
	if (el.value === '') {
		var span = document.getElementById("elMsg");
		span.textContent = "EL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveEmployeeLeaveMaster.submit();
		return true;
	} else {
		return false;
	}
}

function getEmpById(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td style="width="10px;">`+ j++ +`</td>
	                                <td style="width="10px;">${value.id}</td>
	                                <td style="width="10px;">${value.memberName}</td>
	                                <td style="width="10px;">${value.sl}</td>
	                                <td style="width="10px;">${value.cl}</td>
	                                <td style="width="10px;">${value.el}</td>
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalary");
					tableBody1.innerHTML = '<tr><th>#</th><th>ID</th><th>Member Name</th><th>SL</th><th>CL</th><th>EL</th></tr>' + tableData1;
					//tableBody1.innerHTML = tableData1;
				}   
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}
		
function validateEmployeeSalaryDetails() {
	var status = true;
	const basic = document.getElementById("basic");
	if (basic.value === '') {
		var span = document.getElementById("basicMsg");
		span.textContent = "Basic cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const HRA = document.getElementById("HRA");
	if (HRA.value === '') {
		var span = document.getElementById("HRAMsg");
		span.textContent = "HRA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DA = document.getElementById("DA");
	if (DA.value === '') {
		var span = document.getElementById("DAMsg");
		span.textContent = "DA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const TA = document.getElementById("TA");
	if (TA.value === '') {
		var span = document.getElementById("TAMsg");
		span.textContent = "TA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const allowance = document.getElementById("allowance");
	if (allowance.value === '') {
		var span = document.getElementById("allowanceMsg");
		span.textContent = "allowance cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const others = document.getElementById("others");
	if (others.value === '') {
		var span = document.getElementById("othersMsg");
		span.textContent = "others cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const PF = document.getElementById("PF");
	if (PF.value === '') {
		var span = document.getElementById("PFMsg");
		span.textContent = "PF cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const ESI = document.getElementById("ESI");
	if (ESI.value === '') {
		var span = document.getElementById("ESIMsg");
		span.textContent = "ESI cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const searchEmpCode = document.getElementById("searchEmpCode");
	if (searchEmpCode.value === '') {
		var span = document.getElementById("searchEmpCodeMsg");
		span.textContent = "code cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveSalarySetupMaster.submit();
		return true;
	} else {
		return false;
	}
}

function getEmpByIdSalary(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpByIdSalary',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.basic}</td>
	                                <td scope="col">${value.hra}</td>
	                                <td scope="col">${value.da}</td>
	                                <td scope="col">${value.ta}</td>
	                            
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalaryMod");
					tableBody1.innerHTML = tableData1;
				}  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}
	
function getEmpByIdForEmpLeave(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					 
					//alert(data[0].cl);
					document.getElementById("employeeName").value= data[0].memberName;
				    document.getElementById("DOJ").value= data[0].doj;
					document.getElementById("CL").value= data[0].cl;
					document.getElementById("SL").value= data[0].sl;
					document.getElementById("EL").value= data[0].el;
					if(data[0].rcl!=null){
						if(data[0].rcl >= 0){
							data[0].rcl =data[0].cl - data[0].rcl;

						}else{
							data[0].rcl = 0;
						}
					}else{
						data[0].rcl = data[0].cl ;
					}
					if(data[0].rsl!=null){
						if(data[0].rsl >= 0){
							data[0].rsl =data[0].sl - data[0].rsl;

						}else{
							data[0].rsl = 0;
						}
						
					}else{
						data[0].rsl = data[0].sl ;
					}
					if(data[0].rel!=null){
						if(data[0].rel >= 0){
							data[0].rel =data[0].el - data[0].rel;

						}else{
							data[0].rel = 0;
						}
						
					}else{
						data[0].rel = data[0].el ;
					}
					
					//alert(data[0].rcl)
					document.getElementById("RM_CL").value= data[0].rcl;
					document.getElementById("RM_SL").value= data[0].rsl;
					document.getElementById("RM_PL").value= data[0].rel;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.memberName}</td>
	                                <td scope="col">${value.sl}</td>
	                                <td scope="col">${value.cl}</td>
	                                <td scope="col">${value.el}</td>
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalary");
					tableBody1.innerHTML = tableData1;
				}  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}	
	
function readAnchorValue(obj){
	     var myVal = obj.getAttribute("href");
		 document.getElementById("leaveType").value= myVal;
		 document.lavesubmit.submit();
}

function getAllAttendence() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllAttendence',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.empCode}</td>
                                <td scope="col">${value.leaveDate}</td>
                            <td scope="col">${value.leaveType}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataAttendenceMaster");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Salary Payment module get Data on fields
function getEmpByIdForSalaryPayment(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getSalaryById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					document.getElementById("basic").value= data[0].basic;
				    document.getElementById("hra").value= data[0].hra;
					document.getElementById("da").value= data[0].da;
					document.getElementById("ta").value= data[0].ta;
					document.getElementById("allowance").value= data[0].allowance;
					document.getElementById("others").value= data[0].others;
					document.getElementById("pf").value= data[0].pf;
					document.getElementById("esi").value= data[0].esi;
					document.getElementById("netPay").value= data[0].netPay;
					document.getElementById("payBranch").value= data[0].payBranch;
					document.getElementById("payDate").value= data[0].payDate;
					document.getElementById("paymode").value= data[0].paymode;
				}
                     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

function showEmployeeDetailsPayroll(){
     var ids = document.getElementById("searchEmpCode").value;
	 $.ajax({
		        type:"get",
                contentType: "application/json",
                url: 'FetcHPositiondataforemployee',
      			data: {id:ids },
                asynch: false,
                success: function(data) {
                for (var i = 0; i < data.length; i++) 
                {
	              var j=1;		
				  const tableData = data.map(function(value){
                  return ( 
                  				`<tr>
                           			<td>${j++}</td> 
		                            <td>${value.memberName}</td>
		                            <td>${value.doj}</td>
		                            <td>${value.emailID}</td> 
		                        <tr>`
                 );
             }).join('');
             const tabelBodyvar = document.querySelector("#appointmentletter");
             tabelBodyvar.innerHTML = tableData;
                  }
               } ,
           	   error: function(){
           	    	alert("Device control failed");
           	    }
		});	
}

function showSalarySlipPrint() {
    var input = {
        id: document.getElementById("searchEmpCode").value
    };
    let myJson = JSON.stringify(input);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/getEmpByIds', // Make sure to include the full URL or path to the endpoint
        async: false, // 'asynch' should be 'async'
        success: function(data) {
            if (data.length > 0) {
                const tableData1 = data.map(function(value) {
                    return (
                        `<tr>
                            <td>${value.empCode}</td> 
                            <td>${value.empName}</td> 
                            <td>${value.designation}</td>   
                            <td>${value.department}</td>  
                            <td>${value.doj}</td>  
                            <td>${value.bankAc}</td>  
                            <td>${value.ifsc}</td>    
                            <td>${value.branch}</td>  		
                        </tr>`
                    );
                }).join('');
                const tableBody1 = document.querySelector("#tableBody");
                tableBody1.innerHTML = tableData1;
            } else {
                const tableBody1 = document.querySelector("#tableBody");
                tableBody1.innerHTML = ""; // Clear the table body if no data found
            }
        },
        error: function() {
            alert("Failed to retrieve employee data.");
        }
    });
}

function searchEmployeeIDCard() {
	var searchLoanId = document.getElementById("searchEmpCode");
	var input = {
		"id": searchLoanId.value
	};

	fetch('searchEmployeeIDCard', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(input)
	})
		.then(function(response) {
			if (response.ok) {
				return response.json();
			} else {
				throw new Error('Server not responding...');
			}
		})
		.then(function(data) {
			// Create a reference to the table
			var table = document.getElementById("loanTable");

			// Clear existing table rows
			while (table.rows.length > 1) {
				table.deleteRow(1);
			}

			// Iterate over the data and add rows to the table
			for (var key in data) {
				var row = table.insertRow();
				var fieldCell = row.insertCell(0);
				var valueCell = row.insertCell(1);
				if(fieldCell!=null){
					fieldCell.textContent = key;

				}
				if(valueCell!=null){
					valueCell.textContent = data[key];
				}
			}
		})
		.catch(function(error) {
			alert(error.message);
		});
}

function getDPayrollData(){
		 var fDate = document.getElementById("fDate").value;
		 var tDate = document.getElementById("tDate").value;
		 
		 $.ajax({
		     type:"get",
		     contentType: "application/json",
		     url: 'datafromdate',
		     data: {fDate:fDate,tDate:tDate},
		     asynch: false,
		     success: function(data) {  
			      for (let i = 0; i < data.length; i++) {
					//alert(data[i].id)
					 const tableData = data.map(function(value){
		                 return ( 		 
		                     `<tr>
		                         <td>${value.id}</td>
		                         <td>${value.leaveDate}</td>
		                         <td>${value.leaveType}</td>
		                     </tr>`
		                 );
		             }).join('');
		             const tableBody = document.querySelector("#tableBody");
		             tableBody.innerHTML = tableData;
				} 
		     } ,
			    error: function(){
			    	alert("Device control failed");
			    }
		 });
}

//16.Employee Search
function getAllBranchEmployeeSearch(){	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchIndropdown',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].name+"'>"+data[i].name +"</option>";
                    }
                    $("#branch").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//16.Employee Search
function getAllDepartments(){
	//alert(hii)
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDepartmentsInDropdown',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].department+"'>"+data[i].department +"</option>";
                    }
                    $("#department").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllDesignation(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDesignationInDropdown',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].designation+"'>"+data[i].designation +"</option>";
                    }
                    $("#designation").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//get Data in Table Employee Search
function showTableDataOfEmployeeSearch(){
	var input = {
		 branch : document.getElementById("branch").value,
		 fDate : document.getElementById("fDate").value,
		 tDate : document.getElementById("tDate").value,
		 empName : document.getElementById("empName").value,
		 empCode : document.getElementById("empCode").value,
		 phoneNo : document.getElementById("phoneNo").value,
		 designation : document.getElementById("designation").value,
		 department : document.getElementById("department").value,	 		 
	}
	let myJson =JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'searchByFieldsOfEmployeeSearch',
		asynch: false,
		success: function(data) {
			//alert(data.branchName)
			//alert(data.fDate);
			//alert(data.tDate);
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.doj}</td> 
					     <td>${value.cspName}</td>   
					     <td>${value.empName}</td>  
					     <td>${value.age}</td>  
					     <td>${value.phoneNo}</td>  
					     <td>${value.nomineeName}</td> 
                         <td>${value.address}</td>
                         <td>${value.bankAc}</td>
                         <td>${value.designation}</td> 
                         <td>${value.department}</td>   		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Validation for Salary Payment
function validateSalaryPayment(){
	var status = true;
	const payBranch = document.getElementById("payBranch");
	if (payBranch.value === '') {
		var span = document.getElementById("payBranchMsg");
		span.textContent = "Pay Branch cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const payDate = document.getElementById("payDate");
	if (payDate.value === '') {
		var span = document.getElementById("payDateMsg");
		span.textContent = "Pay Date cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const paymode = document.getElementById("paymode");
	if (paymode.value === '') {
		var span = document.getElementById("paymodeMsg");
		span.textContent = "Pay Mode cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		return true;
	} else {
		return false;
	}
}

//Salary Payment
//get Branch in dropdown for salary payment
function getAllBranchSalaryPayment(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchIndropdownSalryPayment',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].name+"'>"+data[i].name +"</option>";
                    }
                    $("#payBranch").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//get Holiday Data to Table
//8.Holiday Master
function getHolidayMasterData() {
    var input = {
        date: document.getElementById("date").value
    };
    let myJson = JSON.stringify(input);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/getAllHolidays',
        success: function(data) {
            if (data.length > 0) {
                const tableData1 = data.map(function(value) {
                    return (
                        `<tr>
                            <td>${value.id}</td>
                            <td>${value.date}</td>
                            <td>${value.holidayDescription}</td>
                        </tr>`
                    );
                }).join('');
                const tableBody1 = document.querySelector("#tableBody");
                tableBody1.innerHTML = tableData1;
            } else {
                const tableBody1 = document.querySelector("#tableBody");
                tableBody1.innerHTML = "<tr><td colspan='3'>No data found</td></tr>";
            }
        },
        error: function() {
            alert("Failed to retrieve holiday data.");
        }
    });
}



function getTableInOfferLetter(){
		//alert(ids)
		var ids = document.getElementById("searchEmpCode").value;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i <data.length ; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.dob}</td>
	                                <td scope="col">${value.address}</td>
	                                <td scope="col">${value.bankAc}</td>
	                                
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#table");
					tableBody1.innerHTML = tableData1;
				}

                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}


	function getTableInSalaryPaymentReport(){
		//alert(ids)
		var empCode = document.getElementById("ECode").value;
		var fDate = document.getElementById("FDate").value;
		var tDate = document.getElementById("TDate").value;
		var input = {
                     "empCode": empCode
             }

             var input2 = {
                     "fDate": fDate,
                     "tDate":tDate
             }

         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpByCode',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i <data.length ; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.dob}</td>
	                                <td scope="col">${value.address}</td>
	                                <td scope="col">${value.bankAc}</td>
	                                
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#table");
					tableBody1.innerHTML = tableData1;
				}

                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });


             $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input2),
                 url: 'getEmpByleaveDate',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i <data.length ; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.dob}</td>
	                                <td scope="col">${value.address}</td>
	                                <td scope="col">${value.bankAc}</td>
	                                
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#table");
					tableBody1.innerHTML = tableData1;
				}

                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}




	function getTableInHrmSalaryGenrate(){
		//alert(ids)
		var fDate = document.getElementById("FDate").value;
		var tDate = document.getElementById("TDate").value;
		var input = {
                     "fDate":fDate,
                     "tDate":tDate
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getSalaryMasterByDate',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i <data.length ; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.payDate}</td>
	                                <td scope="col">${value.paymode}</td>
	                                <td scope="col">${value.empCode}</td>
	                                
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#table");
					tableBody1.innerHTML = tableData1;
				}

                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}