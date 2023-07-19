//Ajax for fetch branchname in dropdown
//1.SB Transfer Approval
function getAllBranchInDropDown(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {

			 var appenddata1 = "";
                    //alert(value.length);
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

//Ajax for get data in table
function getDataInTable(){
	var input = {
		branchName : document.getElementById("branchName").value,
		fDate : document.getElementById("fDate").value,
		tDate : document.getElementById("tDate").value,
	}
	let myJson =JSON.stringify(input);
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getDataByBranchAndDate',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.accountNo}</td> 
					     <td>${value.txnDate}</td>   
					     <td>${value.accHolderName}</td>  
					     <td>${value.mobileNumber}</td>  
					     <td>${value.jointHolder}</td>  
					     <td>${value.sbPlanName}</td>    
                         <td>${value.avaBalance}</td>
                         <td>${value.transactionFor}</td>
                         <td>${value.remarks}</td>  		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table1");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//2.Regular EMI Approval
//getch branch in dropdown
function fetchBranchDropdownRegularEmi(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			 var appenddata1 = "";
                    //alert(value.length);
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#branch").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//get Data in Table of Regular Emi
function getTableDataOfRegularEMI(){
	var input = {
		branch : document.getElementById("branch").value,
		fromdate : document.getElementById("fromdate").value,
		todate : document.getElementById("todate").value,
	}
	let myJson =JSON.stringify(input);
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getDataInTableRegularEmi',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.sino}</td> 
						 <td>${value.loanid}</td> 
					     <td>${value.membercode}</td>   
					     <td>${value.membername}</td>  
					     <td>${value.paydate}</td>  
					     <td>${value.payamount}</td>  
					     <td>${value.principal}</td>    
                         <td>${value.interest}</td>
                         <td>${value.paymode}</td>
                          <td>${value.chequeno}</td>
                         <td>${value.sbaccount}</td>  		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table2");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//3.Irregular Emi Approval
//dropdown data
function getBranchOfFIrregularEmi(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			 var appenddata1 = "";
                    //alert(value.length);
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#branch").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//fetch data in Table of Irregular Emi Approval
function getIrregularEmiApprovalData(){
	var input = {
		branch : document.getElementById("branch").value,
		fDate : document.getElementById("fDate").value,
		tDate : document.getElementById("tDate").value,
	}
	let myJson =JSON.stringify(input);
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'fetchDataInTableirregularEmi',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.slno}</td> 
						 <td>${value.loanid}</td> 
					     <td>${value.membercode}</td>   
					     <td>${value.membername}</td>  
					     <td>${value.branch}</td>  
					     <td>${value.paydate}</td>  
					     <td>${value.payamount}</td>    
                         <td>${value.principal}</td>
                         <td>${value.intrest}</td>
                         <td>${value.paymode}</td>
                         <td>${value.chequeno}</td> 
                         <td>${value.sbaccount}</td>  		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table3");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getDataByPaymentApproval() {
	var input = {
		branchName: document.getElementById("branchName").value,
		fDate: document.getElementById("fDate").value,
		tDate: document.getElementById("tDate").value,
	};
	console.log("Input:", input);
	const myJSON = JSON.stringify(input);
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'searchInThePaymentApproval',
		data: myJSON,
		async: false, // Corrected spelling of 'async'
		success: function(data) {
			var j = 1;
			const tableData = data.map(function(value) {
				return (
					`<tr>
                        <td scope="col">${j++}</td>
                             <td>${value.memberName}</td>
            				 <td>${value.dob}</td>
            				 <td>${value.phoneno}</td>
            				 <td>${value.schemeName}</td>
            				 <td>${value.address}</td>
            				 <td>${value.pin}</td>
                    </tr>`
				);
			}).join('');
			const paymentApprovalTable = document.querySelector("#paymentApprovalTable");
			paymentApprovalTable.innerHTML = tableData;
		},
		error: function() {
			alert("Payment Approval search failed");
		}
	});
}

function getdataAddInvesmentCodeforMAturity(){
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
	var input = {
                     "id": searchbyPolicyNo.value
        }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getByAddInvesmentCode',
                 asynch: false,
                 success: function(data) {
                 	var x = Number(data.id)
                 	//alert(x)
                 	 document.getElementById("id").value = data.id;
                     document.getElementById("applicantName").value = data.memberName;
                     document.getElementById("planName").value = data.planName;
                     document.getElementById("planCode").value = data.planCode;
                     document.getElementById("mode").value = data.mode;
                     document.getElementById("term").value = data.term;
                     document.getElementById("policyDate").value = data.policyDate;
                     document.getElementById("mDate").value = data.mDate;
                     document.getElementById("policyAmount").value = data.policyAmount;
                     document.getElementById("maturityAmount").value = data.maturityAmount;
                     document.getElementById("noOfInstPaid").value = data.noOfInstPaid;
                     document.getElementById("roi").value = data.roi;
                     document.getElementById("penalty").value = data.penalty;
                     document.getElementById("reqUser").value = data.reqUser;
                     document.getElementById("deduction").value = data.deduction;
                     document.getElementById("ReqBCode").value = data.branchName;
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

function getfetchbranchinvmaturity(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchbranchinv',
		asynch: false,
		success: function(data){				
			var appenddata2 = "";
				for(var i=0; i<data.length; i++){
					appenddata2 += "<option value='"+data[i].name+"'>"+data[i].name+"</option> ";
				}
				$("#appBranch").append(appenddata2);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}