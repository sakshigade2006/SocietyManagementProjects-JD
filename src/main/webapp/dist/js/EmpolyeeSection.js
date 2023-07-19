function fatchdepartmentdata(){
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'FindDepartment',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				var j =1;
				const tableData = data.map(function(value) {
					return (
						` 
                            <tr>
								<td scope="col">${j++}</td>
                                <td scope="col">${value.id}</td>
                               <td scope="col">${value.department}</td>
                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#fatchdepartmenttable");
				tabelBodyShare.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Search Employee	
function searchThroughSearchBoxEmployee(){
	var input = {
		branchName : document.getElementById("branchName").value,
		fDate : document.getElementById("fDate").value,
		tDate : document.getElementById("tDate").value,
		memberName : document.getElementById("employeeName").value,
		introMCode : document.getElementById("employeeCode").value,
		phoneno : document.getElementById("mobile").value,
		aadharNo : document.getElementById("designation").value,
		pan : document.getElementById("department").value,
	};
	
	const myJSON = JSON.stringify(input);
	//alert(myJSON);
		
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'searchInTheEmployeeSection',
	    data:	myJSON,
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				var j =1;
				const tableData = data.map(function(value) {
					return (
						` <tr>
								<td scope="col">${j++}</td>
                                <td scope="col">${value.employeeName}</td>
                                <td scope="col">${value.gender}</td>
                                <td scope="col">${value.dob}</td>
                                <td scope="col">${value.designation}</td>
                                <td scope="col">${value.department}</td>
                                <td scope="col">${value.phoneno}</td>
                                <td scope="col">${value.nomineeName}</td>
                                 <td scope="col">${value.status}</td>
                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#table1");
				tabelBodyShare.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function dropDownBranchEmployee() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function (data) {

			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#branch").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

// get data in drop down - SEARCH employee
function branchNameDropdown() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getEmployeeBranchName',
		asynch: false,
		success: function(data) {

			var appenddata2 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata2 += "<option value = '" + data[i].designation + "'>" + data[i].designation + " </option>";
			}
			$("#designation").append(appenddata2);
			
			var appenddata3 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata3 += "<option value = '" + data[i].department + "'>" + data[i].department + " </option>";
			}
			$("#department").append(appenddata3);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function showEmployeeDetailsnew2(){
	
     var ids = document.getElementById("EmployeeById").value;
	
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
                           			<td>${value.id}</td> 
		                            <td>${value.empName}</td> 
		                            <td>${value.cspName}</td>
		                            <td>${value.doj}</td>
		                            <td>${value.dob}</td>
		                            <td>${value.phoneNo}</td>
		                            <td>${value.address}</td>
		                            <td>${value.department}</td>
		                            <td>${value.emailID}</td> 
		                            <tr>`
                 );
             }).join('');
             const tabelBodyvar = document.querySelector("#tabelBody");
             tabelBodyvar.innerHTML = tableData;
                  }
               } ,
           	   error: function(){
           	    	alert("Device control failed");
           	    }
		});	
}

function addemployeeBranch() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getaddEmployeeBranchName',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" + data[i].name + "'>" + data[i].name + " </option>";
			}
			$("#cspName").append(appenddata1);
			
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Relative Relation Dropdown
function  RelativeRelationDropdownforaddemployee() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RelativeRelation',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#relativeRelation").append(appenddata1);
                    
             var appenddata2 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#nRelation").append(appenddata2);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchThroughEmployee() {
	
	var input = {
		branch: document.getElementById("branch").value,
		fDate: document.getElementById("fDate").value,
		tDate: document.getElementById("tDate").value,
		empName: document.getElementById("empName").value,
		empCode: document.getElementById("empCode").value,
		phoneNo: document.getElementById("phoneNo").value,
		designation: document.getElementById("designation").value,
		department: document.getElementById("department").value,
	};
	const myJSON = JSON.stringify(input);
	//alert(input)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'searchInTheEmployeeSection',
		data: myJSON,
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				var j = 1;
				const tableData = data.map(function(value) {

					return (
						`<tr>
								<td scope="col">${j++}</td>
                                <td scope="col">${value.empName}</td>
                                <td scope="col">${value.dob}</td>
                                <td scope="col">${value.bankAc}</td>
                                <td scope="col">${value.doj}</td>
                                <td scope="col">${value.phoneNo}</td>
                                 <td scope="col">${value.emailID}</td>
                            </tr>`
					);
				}).join('');
				const searchEmployee = document.querySelector("#searchEmployee");
				searchEmployee.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
