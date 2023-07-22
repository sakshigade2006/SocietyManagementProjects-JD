function validateGroupMaster() {
	var status = true;
	const groupName = document.getElementById("groupName");
	if (groupName.value === '') {
		var span = document.getElementById("groupNameMsg");
		span.textContent = "Group Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const opDate = document.getElementById("opDate");
	if (opDate.value === '') {
		var span = document.getElementById("opDateMsg");
		span.textContent = "op Date cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const csp = document.getElementById("csp");
	if (csp.value === '') {
		var span = document.getElementById("cspeMsg");
		span.textContent = "Branch cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const grLeaderName = document.getElementById("grLeaderName");
	if (grLeaderName.value === '') {
		var span = document.getElementById("grLeaderNameMsg");
		span.textContent = "Group Leader Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const mobile = document.getElementById("mobile");
	if (mobile.value === '') {
		var span = document.getElementById("mobileMsg");
		span.textContent = "Mobile cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const grAddr = document.getElementById("grAddr");
	if (grAddr.value === '') {
		var span = document.getElementById("grAddrMsg");
		span.textContent = "Group Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const employee = document.getElementById("employee");
	if (employee.value === '') {
		var span = document.getElementById("employeeMsg");
		span.textContent = "Assign Employee cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const cDay = document.getElementById("cDay");
	if (cDay.value === '') {
		var span = document.getElementById("cDayMsg");
		span.textContent = "Collection Day cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const cTime = document.getElementById("cTime");
	if (cTime.value === '') {
		var span = document.getElementById("cTimeMsg");
		span.textContent = "Collection Time cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	if (status === true) {
		document.myFormGroupMaster.submit();
		return true;
	} else {
		return false;
	}
}


function getAllGroupMaster() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						  `<tr>
                           		<td>${value.id}</td>
                                <td>${value.groupName}</td>
                                <td>${value.opDate}</td>
                                <td>${value.csp}</td>
                                <td>${value.grLeaderName}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataR");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllGroupLoan1() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoan',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						  `<tr>
                           		<td>${value.id}</td>
                                <td>${value.loanName}</td>
                                <td>${value.loanType}</td>
                                <td>${value.emiCollection}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataGr");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllGroupLoanApplication() {
	const select = document.getElementById("searchGroupID");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoan',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.id;
				select.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function displayGroupLoanApplicationDetails() {
	var id = document.getElementById("searchGroupID1");
	var input = {
		"id": id.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getGroupMasterById',
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++){
			document.getElementById("groupName").value = data[i].groupName;
			document.getElementById("leaderName").value = data[i].grLeaderName;
			document.getElementById("mobile").value = data[i].mobile;
			document.getElementById("grAddr").value = data[i].grAddr;
			document.getElementById("employee").value = data[i].employee;
			document.getElementById("cDay").value = data[i].cDay;
			document.getElementById("cTime").value = data[i].cTime;
			
			document.getElementById("ContentPlaceHolder1_txtLoanDate").value = data[i].loanDate;
			document.getElementById("csp").value = data[i].loanDate;
			document.getElementById("loanPurpose").value = data[i].loanPurpose;
	   }
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//function displayGroupLoanApplicationDetailsShowTable() {
//	var id = document.getElementById("searchGroupID1");
//	var input = {
//		"id": id.value
//	}
//	$.ajax({
//		type: "post",
//		contentType: "application/json",
//		data: JSON.stringify(input),
//		url: 'getGroupMasterById',
//		asynch: false,
//		success: function(data) {
//			    var table = document.getElementById("tableId");
//
//    // Clear previous table data
//    table.innerHTML = "";
//
//    // Create table headers
//    var headers = ["Group Name", "Leader Name", "Mobile", "Address", "Employee", "Day", "Time"];
//    var headerRow = document.createElement("tr");
//    for (var i = 0; i < headers.length; i++) {
//        var headerCell = document.createElement("th");
//        headerCell.textContent = headers[i];
//        headerRow.appendChild(headerCell);
//    }
//    table.appendChild(headerRow);
//
//    // Create table row with data
//    var dataRow = document.createElement("tr");
//
//    // Group Name
//    var groupNameCell = document.createElement("td");
//    groupNameCell.textContent = data.groupName;
//    dataRow.appendChild(groupNameCell);
//
//    // Leader Name
//    var leaderNameCell = document.createElement("td");
//    leaderNameCell.textContent = data.grLeaderName;
//    dataRow.appendChild(leaderNameCell);
//
//    // Mobile
//    var mobileCell = document.createElement("td");
//    mobileCell.textContent = data.mobile;
//    dataRow.appendChild(mobileCell);
//
//    // Address
//    var addressCell = document.createElement("td");
//    addressCell.textContent = data.grAddr;
//    dataRow.appendChild(addressCell);
//
//    // Employee
//    var employeeCell = document.createElement("td");
//    employeeCell.textContent = data.employee;
//    dataRow.appendChild(employeeCell);
//
//    // Day
//    var dayCell = document.createElement("td");
//    dayCell.textContent = data.cDay;
//    dataRow.appendChild(dayCell);
//
//    // Time
//    var timeCell = document.createElement("td");
//    timeCell.textContent = data.cTime;
//    dataRow.appendChild(timeCell);
//
//    table.appendChild(dataRow);
//
//
//		},
//		error: function() {
//			alert("Device control failed");
//		}
//	});
//}


function validateGroupLoanApplication() {
	var status = true;
	const groupName = document.getElementById("groupName");
	if (groupName.value === '') {
		var span = document.getElementById("groupNameMsg");
		span.textContent = "Group Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const leaderName = document.getElementById("leaderName");
	if (leaderName.value === '') {
		var span = document.getElementById("leaderNameMsg");
		span.textContent = "Group Leader Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const mobile = document.getElementById("mobile");
	if (mobile.value === '') {
		var span = document.getElementById("mobileMsg");
		span.textContent = "Mobile No cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const grAddr = document.getElementById("grAddr");
	if (grAddr.value === '') {
		var span = document.getElementById("grAddrMsg");
		span.textContent = "Group Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const employee = document.getElementById("employee");
	if (employee.value === '') {
		var span = document.getElementById("employeeMsg");
		span.textContent = "Assign Employee cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cDay = document.getElementById("cDay");
	if (cDay.value === '') {
		var span = document.getElementById("cDayMsg");
		span.textContent = "Collection Day cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cTime = document.getElementById("cTime");
	if (cTime.value === '') {
		var span = document.getElementById("cTimeMsg");
		span.textContent = "Collection Time cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.form1.submit();
		return true;
	} else {
		return false;
	}
}


function displayGroupLoanApplicationDetailsShowTableinRegularLoanStatement() {
	//alert("Hello")
	var id = document.getElementById("searchGroupID1");
	var input = {
		"id": id.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getGroupMasterById',
		asynch: false,
		success: function(data) {
 		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
	
	
function displayGroupLoanApplicationDetailsShowTableinClosedLoanReport() {
	//alert("Hello")
	var id = document.getElementById("searchGroupID1");
	var fDate = document.getElementById("fDate");
	var tDate = document.getElementById("tDate");
	
	var input = {
		"id": id.value
	}
	
	var input2 = {
		"fDate": fDate.value,
		"tDate": tDate.value
	}
	
    //alert(JSON.stringify(input2));
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getGroupMasterById',
		asynch: false,
		success: function(data) {
 		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input2),
		url: 'ByloanDate',
		asynch: false,
		success: function(data) {
		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
	
	
function displayGroupLoanApplicationDetailsShowTable() {
	
	//alert("Hello")
	var id = document.getElementById("searchGroupID1");
	var branch = document.getElementById("ContentPlaceHolder1_ddlBranch");
	var fDate = document.getElementById("fDate");
	var tDate = document.getElementById("tDate");		
	var searchMemberCode = document.getElementById("searchMemberCode");		
	var memberName = document.getElementById("memberName");		
	var advisorCode = document.getElementById("advisorCode");
			
	var input5 = {
		"memberName": memberName.value,
		"advisorCode": advisorCode.value
	}
			
	var input = {
		"id": id.value
	}

	var input2 = {
		"csp": branch.value
	}
	
	var input3 = {
	   "fDate":fDate.value,
       "tDate":tDate.value	
	}
	
	var input4 = {
		"searchMemberCode":searchMemberCode.value
	}
	
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getGroupMasterById',
		asynch: false,
		success: function(data) {
 		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});


	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input2),
		url: 'getGroupMasterByBranch',
		asynch: false,
		success: function(data) {
		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td>
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
				error: function() {
			alert("Device control failed");
		}
	});
	
	
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input3),
		url: 'ByloanDate',
		asynch: false,
		success: function(data) {
 		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	//Search member COde
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input4),
		url: 'getGroupMasterBysearchMemberCode',
		asynch: false,
		success: function(data) {
 		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td>
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input5),
		url: 'getGroupMasterBymemberName',
		asynch: false,
		success: function(data) {
		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input5),
		url: 'getGroupMasterByadvisorCode',
		asynch: false,
		success: function(data) {
		for (var i = 0; i < data.length; i++){
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
                         <td>${value.groupName}</td>
                         <td>${value.opDate}</td>
                         <td>${value.csp}</td> 
                         <td>${value.grLeaderName}</td> 
                         <td>${value.mobile}</td>
                         <td>${value.grAddr}</td>
                         <td>${value.employee}</td>
                         <td>${value.cTime}</td>
                         <td>${value.createdDate}</td>
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//get All Plan Name Dynamically
function getAllLoanNameOfGroupLoanSearch(){
	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllLoanName',
            asynch: false,
            success: function(data) {
            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].loanName+"'>"+data[i].loanName +"</option>";
                    }
                    $("#planeName").append(appenddata1);
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}