/*Gold Loan Rectification Ajax */

//Dynamic Loan Id in Dropdown of GoldLoanRectification
function getAllIdofGoldLoanRectification(){
	    
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLoanID',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].id +"'>" +data[i].id +" </option>";
                    }
                    $("#id").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
		
}

//Dynamic Member Name in Dropdown of GoldLoanRectification
function getAllMemberinDropdown(){
	  $.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getMemberinDropdown',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].memberName +"'>" +data[i].memberName +" </option>";
                    }
                    $("#memberName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Dynamic LoanPlanName in Dropdown of GoldLoanRectification
function getLoanPlanNameinDropdown(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getLoanPlanName',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].loanPlanName +"'>" +data[i].loanPlanName +" </option>";
                    }
                    $("#loanPlanName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});	
}

//Dynamic BranchName in Dropdown of GoldLoanRectification
function getAllBranchName(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getBranch',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].branchName +"'>" +data[i].branchName +" </option>";
                    }
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
}

//Dynamic PlanTerm in Dropdown of GoldLoanRectification
function getAllPlanTerm(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getPlanTerm',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].planTerm +"'>" +data[i].planTerm +" </option>";
                    }
                    $("#planTerm").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Dynamic Karat in Dropdown of GoldLoanRectification
function getAllkarat(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllKarat',
		asynch: false,
		success: function(data) {
		
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].karat +"'>" +data[i].karat +" </option>";
                    }
                    $("#karat").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Dynamic ItemName in Dropdown of GoldLoanRectification
function getAllItemName(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getItemName',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].itemName +"'>" +data[i].itemName +" </option>";
                    }
                    $("#itemName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Dynamic LockerLocation in Dropdown of GoldLoanRectification
function getAllLockerLoc(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getLockerLocation',
		asynch: false,
		success: function(data) {
					
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].lockerLoc +"'>" +data[i].lockerLoc +" </option>";
                    }
                    $("#lockerLoc").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//Dynamic Purity in Dropdown of GoldLoanRectification
function getAllPurity(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getPurity',
		asynch: false,
		success: function(data) {
					
			 var appenddata1 = "";
                    
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].purity +"'>" +data[i].purity +" </option>";
                    }
                    $("#purity").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Retrieve All Fields using MemberName of GoldLoanRectification
function retrieveUsingMemberName(){
	
	const memberName = document.getElementById("memberName").value;
	
	const obj = {
                     "memberName": memberName
              };
              const myJson = JSON.stringify(obj);
	          
	           $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: myJson,
                 url: 'RetrieveMemberDataInGoldLoan',
                 asynch: false,
                 success: function(data) {
					for(var i=0; i<data.length; i++){
			
			        var imgElement = document.getElementById("photo");
			    	imgElement.src ="data:image/png;base64,"+data[i].image;
			       	 
			       	var img = document.getElementById('signature');
			       	img.src =`upload/`+data[i].signature+``;
					
					document.getElementById("relativeRelation").value = data[i].relativeRelation;
					document.getElementById("dob").value = data[i].dob;
					document.getElementById("age").value = data[i].age;
					document.getElementById("phoneno").value = data[i].phoneno;	
				    document.getElementById("status").value = data[i].status;	
				    document.getElementById("address").value = data[i].address;	
				    document.getElementById("pinCode").value = data[i].pinCode;	
				    document.getElementById("branchName").value = data[i].branchName;
				  }  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });   
}

//Retrieve All Fields using LoanPlanName of GoldLoanRectification
function retrieveUsingLoanPlanName(){
	
	const loanPlanName = document.getElementById("loanPlanName").value;
	
	const obj = {
                     "loanPlanName": loanPlanName
              };
              const myJson = JSON.stringify(obj);
	          
	           $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: myJson,
                 url: 'RetrieveUsingLoanPlanName',
                 asynch: false,
                 success: function(data) {
					for(var i=0; i<data.length; i++){
	                
	                var img = document.getElementById('goldImg');
			       	img.src =`upload/`+data[i].goldImg+``;	
	                
	                document.getElementById("loanDate").value = data[i].loanDate;
	                document.getElementById("loanType").value = data[i].loanType;
	                document.getElementById("planTerm").value = data[i].planTerm;
	                document.getElementById("mode").value = data[i].mode;
	                document.getElementById("loanROI").value = data[i].loanROI;
	                document.getElementById("loanAmount").value = data[i].loanAmount;
	                document.getElementById("roiType").value = data[i].roiType;
	                document.getElementById("emiAmount").value = data[i].emiAmount;
	                document.getElementById("loanPurpose").value = data[i].loanPurpose;
	                document.getElementById("karat").value = data[i].karat;
	                document.getElementById("itemType").value = data[i].itemType;
	                document.getElementById("todayRate").value = data[i].todayRate;
	                document.getElementById("itemName").value = data[i].itemName;
	                document.getElementById("lockerLoc").value = data[i].lockerLoc;
	                document.getElementById("purity").value = data[i].purity;
	                document.getElementById("itemQty").value = data[i].itemQty;
	                document.getElementById("itemWt").value = data[i].itemWt;
	                document.getElementById("grossWt").value = data[i].grossWt;
	                document.getElementById("stonewt").value = data[i].stonewt;
	                document.getElementById("netWt").value = data[i].netWt;
	                document.getElementById("marketValuation").value = data[i].marketValuation;
	                document.getElementById("eligibleLoan").value = data[i].eligibleLoan;
	                document.getElementById("netQty").value = data[i].netQty;
	                document.getElementById("totItemWt").value = data[i].totItemWt;
	                document.getElementById("totalNetWt").value = data[i].totalNetWt;
	                document.getElementById("totalEligibleAmt").value = data[i].totalEligibleAmt;
	                document.getElementById("searchMemberCode").value = data[i].searchMemberCode;
	                document.getElementById("guarantorName").value = data[i].guarantorName;
	                document.getElementById("addressGuarantor").value = data[i].addressGuarantor;
	                document.getElementById("pincodeGuarantor").value = data[i].pincodeGuarantor;
	                document.getElementById("phone").value = data[i].phone;
	                document.getElementById("securityType").value = data[i].securityType;
	                document.getElementById("coApplicantCode").value = data[i].coApplicantCode;
	                document.getElementById("memberRelativesName").value = data[i].memberRelativesName;
	                document.getElementById("addressco").value = data[i].addressco;
	                document.getElementById("pincodeco").value = data[i].pincodeco;
	                document.getElementById("phoneco").value = data[i].phoneco;
	                document.getElementById("securityDetails").value = data[i].securityDetails;
	                document.getElementById("processingFee").value = data[i].processingFee;
	                document.getElementById("legalAmt").value = data[i].legalAmt;
	                document.getElementById("advisorCode").value = data[i].advisorCode;
	                document.getElementById("gst").value = data[i].gst;
	                document.getElementById("insuranceAmt").value = data[i].insuranceAmt;
	                document.getElementById("vFeesAmt").value = data[i].vFeesAmt;
	                document.getElementById("advisorName").value = data[i].advisorName;
	              }  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             }); 
}

//Soft delete integration
function softDeleteIntegrations(){
	var id = document.getElementById("id").value;
	var input = {
		"id" : id,
	}
	var myJson = JSON.stringify(input);
	//alert(id)
	if(!id){
		alert("Please select Loan Id")
	}
	else{
		$.ajax({
			type:"post",
			contentType: "application/json",
			data: JSON.stringify(input),
			url: 'softDeleteByLoanId',
			asynch: false,
			success: function(data){
				alert("Soft Delete Successfully...!!!")
				window.location.href = "getGoldLoanRectification";
			},
			error: function(){
				alert("Device control failed");
			}
		});
	}
}

//Retrival code after soft delete
function getAllLoanIDAfterSoftDeleteOperation(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrievalCodeAfterSoftDeleteByFlag',
		asynch: false,
		success: function(data){
			var appenddata1 = "";
				for(var i=0; i<data.length; i++){
					appenddata1 += "<option value='"+data[i].id+"'>"+data[i].id+"</option> ";
				}
				$("#id").append(appenddata1);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}





