function savingAccounttable(){
	$.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'savingalldata',
     data:{ },
     asynch: false,
     success: function(data) {
	     for (let i = 0; i < data.length; i++)
	       {  
			 const tableData = data.map(function(value){
                 return (	 
                    `<tr>
                         <td>${value.id}</td>
				         <td>${value.schemeName}</td>
				         <td>${value.annualROI}</td>
						 <td>${value.minOpeningAmount}</td>	
						 <td>${value.monthlyAvgBal}</td>
						 <td>${value.lockInbalance}</td>	
						 <td>${value.smsCharges}</td>
						 <td>${value.smsInterval}</td>	
						 <td>${value.freeIfscCollectionpm}</td>
						 <td>${value.freeTransferspm}</td>	
						 <td>${value.singleTxnLimit}</td>
						 <td>${value.dailyMAXLimit}</td>
						 <td>${value.weeklyMAXLimit}</td>	
						 <td>${value.monthlyMAXLimit}</td>
						 <td>${value.serviceCharges}</td>	
						 <td>${value.serviceInterval}</td>
						 <td>${value.cardCharge}</td>	
						 <td>${value.cardLimitMonthly}</td>
						 <td>${value.cardTotalLimitYearly}</td>
                     </tr>`
                 );
             })
             .join('');
        	 const savingAccounttable = document.querySelector("#savingAccounttable");
             savingAccounttable.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 }); 
}

function getAllBranch(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchIndropdownSavingAccount',
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

//Ajax to show data to tables 
//search saving account
function showTableDataOfSearchSaving(){
	var input = {
		 branchName : document.getElementById("branchName").value,
		 fDate : document.getElementById("fDate").value,
		 tDate : document.getElementById("tDate").value,
		 accHolderName : document.getElementById("accHolderName").value,
		 accountNo : document.getElementById("accountNo").value,
		 memberCode : document.getElementById("memberCode").value,
		 advisorCode : document.getElementById("advisorCode").value,
		 schemeName : document.getElementById("schemeName").value, 		 
	}
	let myJson =JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getAllDataInTableSavingAccount',
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
						 <td>${value.txnDate}</td> 
					     <td>${value.branchName}</td>   
					     <td>${value.accountNo}</td>  
					     <td>${value.memberCode}</td>  
					     <td>${value.accHolderName}</td>  
					     <td>${value.mobileNumber}</td> 
                         <td>${value.jointHolder}</td>
                         <td>${value.sbPlanName}</td>
                         <td>${value.avaBalance}</td> 
                         <td>${value.remarks}</td>   
                          <td>${value.schemeName}</td> 		
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

//5.Savings Passbook
//get All Account No in dropdown
function getAllAccountNo(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllAccountNoInDropdown',
		asynch: false,
		success: function(data) {
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].accountNo+"'>"+data[i].accountNo +"</option>";
                    }
                    $("#accountNo").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//5.Savings Passbook
function showSavingsPassbookData(){
	var input = {
		 accountNo : document.getElementById("accountNo").value, 
	}
	let myJson =JSON.stringify(input);
	//alert(input)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getTableDataSavingsPassbook',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.bankName}</td> 
					     <td>${value.accountNo}</td>   
					     <td>${value.mobileNo}</td>  
					     <td>${value.address}</td>  
					     <td>${value.openingDate}</td>  
					     <td>${value.openingBalance}</td> 
                         <td>${value.mappedBranch}</td>	
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

function showSavingsStatementSearch(){
	var input = {
		 accountNo : document.getElementById("accountNo").value,
		 fDate : document.getElementById("fDate").value,
		 tDate : document.getElementById("tDate").value,	 
	}
	let myJson =JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'savingsStatementSearch',
		asynch: false,
		success: function(data) {
			//alert(data.branchName)
			//alert(data.fDate);
			//alert(data.tDate);
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.accountNo}</td> 
                         <td>${value.accHolderName}</td>
						 <td>${value.txnDate}</td> 
					     <td>${value.mobileNumber}</td>   
					     <td>${value.transactionFor}</td>  
					     <td>${value.amount}</td>  
					     <td>${value.paymentBy}</td>  
					     <td>${value.branchName}</td> 
                         <td>${value.remarks}</td>		
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

//9.SMS Charges Duduction
//get All Data to Table
function getAllDataSMSCharges(){
	var input = {
		 payDate : document.getElementById("payDate").value,	 
	}
	let myJson =JSON.stringify(input);
	//alert(input)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'fetchDataByDateSMSCharges',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.basic}</td> 
					     <td>${value.hra}</td>   
					     <td>${value.ta}</td>  
					     <td>${value.allowance}</td>  
					     <td>${value.pf}</td> 
                         <td>${value.esi}</td>	
                         <td>${value.netPay}</td>	
                         <td>${value.empCode}</td>		
                         <td>${value.smsCharges}</td>	
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

//10. Servive Charges Deduction
function getServiceChargesDeductionOnTable(){
	var input = {
		 payDate : document.getElementById("payDate").value,	 
	}
	let myJson =JSON.stringify(input);
	//alert(input)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getTableDataServiceChargesDeduction',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.basic}</td> 
					     <td>${value.hra}</td>   
					     <td>${value.ta}</td>  
					     <td>${value.allowance}</td>  
					     <td>${value.pf}</td> 
                         <td>${value.esi}</td>	
                         <td>${value.netPay}</td>	
                         <td>${value.empCode}</td>		
                         <td>${value.serviceCharges}</td>	
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

function getfetchsavingid(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'savingfetchbranchacc',
		asynch: false,
		success: function(data){				
			var appenddata2 = "";
				for(var i=0; i<data.length; i++){
					appenddata2 += "<option value='"+data[i].id+"'>"+data[i].id+"</option> ";
				}
				$("#id").append(appenddata2);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}

function FetchDetailforsavingacc() {
	var id = document.getElementById("id");
	//alert(id.value)
	var input = {
		"id": id.value
	}
	var xhr = new XMLHttpRequest();
	xhr.open('POST', 'searchbyidforsavingacxx', false);
	xhr.setRequestHeader('Content-Type', 'application/json');
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				var data = JSON.parse(xhr.responseText);
				document.getElementById("memberName").value = data.memberName;
				document.getElementById("phoneno").value = data.phoneno;
				document.getElementById("jointName").value = data.jointName;
				document.getElementById("sBPlan").value = data.sBPlan;
				document.getElementById("openingAmount").value = data.openingAmount;
				//alert(data.id);
			} else {
				alert('Device control failed');
			}
		}
	};
	xhr.send(JSON.stringify(input));
}

//7.Account closer
function getAllBranchAccountCloser(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchIndropdownAccountCloser',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].name+"'>"+data[i].name +"</option>";
                    }
                    $("#branchName1").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//7.Account closer
//getData on Fields
function getDataOnFieldsSavingAccCloser(){
	let accountNo = document.getElementById("accountNo").value;
		var input = {
                     "accountNo": accountNo
             };
             const myJson = JSON.stringify(input);
         	$.ajax({
                 type:"POST",
                 contentType: "application/json",
                 data:myJson, 
                 url: 'getDataOnFiledsAccountCloser',
                 asynch: false,
                 success: function(data) {
	                if(data.length){
	                document.getElementById("accountNo").value= data[0].accountNo;
					document.getElementById("memberCode").value= data[0].memberCode;
				    document.getElementById("mobileNumber").value= data[0].mobileNumber;
					document.getElementById("branchName").value= data[0].branchName;
					document.getElementById("openingDate").value= data[0].openingDate;
					document.getElementById("avaBalance").value= data[0].avaBalance;
					document.getElementById("paidInterest").value= data[0].paidInterest;
					document.getElementById("interestDue").value= data[0].interestDue;
					document.getElementById("netAmount").value= data[0].netAmount;
					document.getElementById("branchName1").value= data[0].branchName;
					document.getElementById("closingDate").value= data[0].closingDate;
					document.getElementById("paymentBy").value= data[0].paymentBy;
					document.getElementById("remarks").value= data[0].remarks;
				 }
                   else{
	               alert("Data Not Found");
                   }  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}