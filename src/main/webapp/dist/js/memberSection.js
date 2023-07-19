//Memeber Summary Data Fetch in DropDown                                 
function  summaryDataFetchinDropDown() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllClient',
		asynch: false,
		success: function(data) {

			 var appenddata1 = "";
                    //alert(value.length);
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].id +"'>" +data[i].id +" </option>";
                    }
                    $("#ContentPlaceHolder1_ddlSearchMemberCode").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
	
//Append the data in the Memeber  caste
function  CasteDataFetchinDropDown() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getCasteDetailsfordropdown',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    //alert(value.length);
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].caste +"'>" +data[i].caste +" </option>";
                    }
                    $("#caste").append(appenddata1);
                    $("#religionName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function  CategoryDataFetchinDropDown() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getCategoryDetails',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //alert(value.length);
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].categoryName +"'>" +data[i].categoryName +" </option>";
                    }
                    //$("#caste").append(appenddata1);
                    $("#categoryName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Search THe Policy Number
function SearchTHePolicyNumber(){
	
	let id = document.getElementById("ContentPlaceHolder1_ddlSearchMemberCode").value;
	var input = {
		"id":id
	}
	const myJson = JSON.stringify(input);
	//alert(id);
	
	 $.ajax({
	
		                type:"post",
                        contentType: "application/json",
                        url: 'appenddatainfields',
      					data: myJson,
                        asynch: false,
                        success: function(data) {
                   	    for (var i = 0; i < data.length; i++) {
						   
				    // alert(data[i].memberName);
	
				   document.getElementById("id").value = data[i].id;
				   
				   var imgElement = document.getElementById("ContentPlaceHolder1_imglogo");
			       imgElement.src ="data:image/png;base64,"+data[i].frontEndPhoto;
			      
                   document.getElementById("memberName").value = data[i].memberName;
				   document.getElementById("registrationDate").value = data[i].registrationDate;
				   document.getElementById("relativeName").value = data[i].relativeName;
				   document.getElementById("address").value = data[i].address;
				   document.getElementById("pinCode").value = data[i].pinCode;
				   document.getElementById("state").value = data[i].state;
				   document.getElementById("phoneno").value = data[i].phoneno;
				   document.getElementById("aadharNo").value = data[i].aadharNo;
				   document.getElementById("pan").value = data[i].pan;
				   document.getElementById("nomineeName").value = data[i].nomineeName;
				   document.getElementById("emailid").value = data[i].emailid;	
				   document.getElementById("dob").value = data[i].dob;
				   document.getElementById("age").value = data[i].age;
				   document.getElementById("bankCode").value = data[i].bankCode;
				   document.getElementById("gender").value = data[i].gender;	
	
                   	}
                } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});
}
	
//Memeber Section - Member	Report
//Data Fetch in Branch DropDown of CLIENT REPORT MODULE              
function  reportDataFetchinDropDown() {
	//alert("Hello")
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
	
//Search Data By Branch Name & Date	of CLIENT REPORT MODULE 
function getMemberRepottSearch() {
	
	var input = {
		 branchName : document.getElementById("branchName").value,
		 fDate : document.getElementById("fDate").value,
		 tDate : document.getElementById("tDate").value,
	}
	
	let myJson =JSON.stringify(input);
	//alert(myJson)
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'memberReportSearch1233',
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
						 <td>${value.memberName}</td> 
					     <td>${value.memberIncome}</td>   
					     <td>${value.bankCode}</td>  
					     <td>${value.dob}</td>  
					     <td>${value.relativeName}</td>  
					     <td>${value.address}</td>    
                         <td>${value.phoneno}</td>
                         <td>${value.aadharNo}</td>
                         <td>${value.pan}</td>  		
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

//Data Fetch in DropDown                     
function  dropDownBranchCode() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getDropDownBranch',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].branchName+"'>"+data[i].branchName +"</option>";
                    }
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
		
//Search Through Search Box	
//Client Search of Client Module
function searchThroughSearchBox(){
	var input = {
		branchName : document.getElementById("branchName").value,
		fDate : document.getElementById("fDate").value,
		tDate : document.getElementById("tDate").value,
		memberName : document.getElementById("memberName").value,
		introMCode : document.getElementById("memberCode").value,
		phoneno : document.getElementById("mobile").value,
		aadharNo : document.getElementById("aadharno").value,
		pan : document.getElementById("pan").value,
	};
	
	const myJSON = JSON.stringify(input);
	//alert(myJSON);
		
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'searchInTheMemeberSection',
	    data:	myJSON,
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				var j =1;
				const tableData = data.map(function(value) {
					return (
						` 
                            <tr>
								<td scope="col">${j++}</td>
                                <td scope="col">${value.memberName}</td>
                                <td scope="col">${value.gender}</td>
                                <td scope="col">${value.dob}</td>
                                <td scope="col">${value.aadharNo}</td>
                                <td scope="col">${value.pan}</td>
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

//Data Fetch in Branch DropDown of Client Search
function  dropDownBranchNameData() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].name+"'>"+data[i].name +"</option>";
                    }
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


