//Search THe Policy Number
function SearchTHePolicyNumber(){
	
	var PolicyNo = document.getElementById("id").value;
	
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'searchMaturityPayment',
      					data: {PolicyNo1:PolicyNo },
                        asynch: false,
                   		success: function(data) {
                   		for (var i = 0; i < data.length; i++) {
						document.getElementById("policyNo1").value = data[i].policyno;
						document.getElementById("ApplicantName").value = data[i].applicantName;
						document.getElementById("planName").value = data[i].planName;
						document.getElementById("planCode").value = data[i].planCode;
						document.getElementById("term").value = data[i].term;
						document.getElementById("policyAmount").value = data[i].policyAmount;
						document.getElementById("actualMaturity").value = data[i].maturityAmount;
						document.getElementById("MaturityDate").value = data[i].mDate;
						document.getElementById("sysPayable").value = data[i].syspayable;
						document.getElementById("deduction").value = data[i].deduction;
						document.getElementById("adjusment").value = data[i].adjustment;
						document.getElementById("netPayable").value = data[i].netpayable;
						document.getElementById("approvalBranch").value = data[i].branchName;
						document.getElementById("approvalDate").value = data[i].approvaldate;
						document.getElementById("approveRemarks").value = data[i].approveremarks;
						document.getElementById("approveUser").value = data[i].approveuser; 
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});	
}

//Update the Maturity Section 
function UpdatetheMaturitySection(){
	var PolicyNo = document.getElementById("policyNo").value;
	var PayementDate = document.getElementById("payementDate").value;
	var PayBranch = document.getElementById("payBranch").value;
	var PaymentBy = document.getElementById("paymentBy").value;
	var PayRemarks = document.getElementById("payRemarks").value;
 
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'MaturityPaymentUpdate',
      					data: {PolicyNo1:PolicyNo,PayementDate1:PayementDate,PayBranch1:PayBranch,PaymentBy1:PaymentBy,PayRemarks1:PayRemarks },
                        asynch: false,
                        success: function(data) {
					     swal("Updated Sucessfully !!!!", "","success");	
                } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});
}

//Maturity Application
//Search Through Policy Number
function SearchThroughPolicyNumber(){
	
	var id = document.getElementById("id").value;

	 $.ajax({
		      			type:"GET",
                        contentType: "application/json",
                        url: 'searchMaturityApplication',
      					data: {ids:id },
                        asynch: false,
                   		success: function(data) {     
                   		for (var i = 0; i < data.length; i++) {
							document.getElementById("memberName").value = data[i].memberName;
							document.getElementById("policyDate").value = data[i].policyDate;
					}
                   	console.log(JSON.stringify( id)); 
                    },
           	    	error: function(){
           	    		alert("Device control failed");
           	    	}
	});
}

//Update the Maturity Apllication 
function UpdatetheMaturityApllication(){
	var PolicyNo = document.getElementById("policyNo").value;
	var ApplcationDate = document.getElementById("applicationDate").value;
	var Remarks = document.getElementById("remarks").value;

	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'MaturityAplicationUpdate',
      					data: {PolicyNo1:PolicyNo,ApplcationDate1:ApplcationDate,Remarks1:Remarks},
                        asynch: false,
                   		success: function(data) {
					       swal("Updated Sucessfully !!!!", "","success");
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});
}

//Search Maturity Appplication Find All
function SearchMaturityAppplicationFindAll(){  
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'polfordropdown',
                        asynch: false,
                        success: function(data) {
	      	            for (var i = 0; i < data.length; i++) {
                        let j=1;
						const tableData = data.map(function(value){
                		 return (
                     		`<tr>
                     			<td>${j++}</td>
                         		<td>${value.policyno}</td>
                         		<td>${value.memberName}</td>
                          		<td>${value.policyDate}</td>
                           		<td>${value.applicationDate}</td>
                            	<td>${value.remarks}</td>
                     		</tr>`
                 );
             }).join('');
         	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
             }
           },
           error: function(){
           	    	alert("Device control failed");
           }
	});
}

//DropDown For Policy Number
function  PolNoDropdown() {
	$.ajax({
		type: "GET",
		contentType: "application/json",
		url: 'polfordropdown',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].id +"'>" +data[i].policyno +" </option>";
                    }
                    $("#id").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function  getBranchName() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getBranchNameForMaturity',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
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

function policyStatement1(){
	
	var PolicyNo = document.getElementById("id").value;
 
	 $.ajax({
		                
		                type:"get",
                        contentType: "application/json",
                        url: 'getmaturityreceiptprint',
      			        data: {PolicyNo1:PolicyNo },
                        asynch: false,
                        success: function(data) {   
                   		for (var i = 0; i < data.length; i++) {
                         let j=1;
						 const tableData = data.map(function(value){
                         return (
                		 
                     `<tr>
                     	 <td>${value.cspname}</td>
			 			 <td>${value.address}</td>
						 <td>${value.advisorCode}</td>
						 <td>${value.advisorName}</td>
						 <td>${value.age}</td>
						 <td>${value.chkisSms}</td>
						 <td>${value.district}</td>
						 <td>${value.dob}</td>
			             <td>${value.jointCode}</td>
						 <td>${value.jointName}</td>
			             <td>${value.mDate}</td>
			             <td>${value.mISInterest}</td>
			             <td>${value.maturityAmount}</td>
		                 <td>${value.memberName}</td>
			             <td>${value.misMode}</td>
			             <td>${value.mode}</td>
						 <td>${value.modeOfOp}</td>
				         <td>${value.nomineeAge}</td>
						 <td>${value.nomineeName}</td>
					     <td>${value.nomineeRelation}</td>
						 <td>${value.paymode}</td>
				         <td>${value.phoneno}</td>
						 <td>${value.pin}</td>
				         <td>${value.policyAmount}</td>
			             <td>${value.policyDate}</td>
						 <td>${value.relativeName}</td>
						 <td>${value.remarks}</td>
						 <td>${value.schemeName}</td>
						 <td>${value.schemeType}</td>
			             <td>${value.searchMemberCode}</td>
						 <td>${value.state}</td>
						 <td>${value.term}</td>
			             <td>${value.totalDeposit}</td>
			             <td>${value.policyno}</td>
                     </tr>`
                 );
             }).join('');
             const tabelBody = document.querySelector("#tableMaturityReceipt");
             tableMaturityReceipt.innerHTML = tableData;
              }
             },
           	 error: function(){
           	    	alert("Device control failed");
           	  }
	});
}
