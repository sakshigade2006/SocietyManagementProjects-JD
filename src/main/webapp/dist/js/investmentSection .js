function getAllPolicyNumber1(){
const shareAllotedfrm = document.getElementById("searchbyPolicyNo");
$.ajax({
	type: "get",
	contentType: "application/json",
	url: 'getAllPolicyNumber',
	asynch: false,
	success: function(data) {
		data.forEach(value => {
			const option = document.createElement('option')
			option.setAttribute('value', value.id);
			option.innerHTML = value.id
			shareAllotedfrm.appendChild(option)
		})

	},
	error: function() {
		alert("Device control failed");
	}
});
}

function getfetchbranchinv(){
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
				$("#branchName").append(appenddata2);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}

//Retrieve data in dropdown from db after soft delete operation is done on policy no.
function getRetrieveDataInPolicyNoAfterSoftDeletee(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrievePolicyNoAfterSoftDelete',
		asynch: false,
		success: function(data){
			var appenddata1 = "";
				for(var i=0; i<data.length; i++){
					appenddata1 += "<option value='"+data[i].id+"'>"+data[i].id+"</option> ";
				}
				$("#searchbyPolicyNo").append(appenddata1);
				
			/*var appenddata2 = "";
				for(var i=0; i<data.length; i++){
					appenddata2 += "<option value='"+data[i].branchName+"'>"+data[i].branchName+"</option> ";
				}
				$("#branchName").append(appenddata2);*/
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data){	
			var appenddata2 = "";
				for(var i=0; i<data.length; i++){
					appenddata2 += "<option value='"+data[i].name+"'>"+data[i].name+"</option> ";
				}
				$("#branchName").append(appenddata2);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}

function getByAddInvesmentCode1(){
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
                 	
                 	 document.getElementById("id").value = x;
                     document.getElementById("memberCode").value = data.searchMemberCode;
                     document.getElementById("mobileNo").value = data.phoneno;
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

function getByAddInvesmentCode1(){
	var id = document.getElementById("id");
	var input = {
                     "id": id.value
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
                 	
                 	 document.getElementById("id").value = x;
                     document.getElementById("memberCode").value = data.searchMemberCode;
                     document.getElementById("mobileNo").value = data.phoneno;
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

//Validate the Plan Master of Daily Deposist
function valdiateDailyDepossit(){
    var status = true;
    
	const ddplanName = document.getElementById("ddplanName");
	if (ddplanName.value === '') {
		var span = document.getElementById("planName");
		span.style.display = "block";
		span.textContent = "Enter the Plane Name.";
		status = false;
	}
	
	const minimumAmount = document.getElementById("minimumAmount");
	if (minimumAmount.value === '') {
		var span = document.getElementById("minimumAmountSpan");
		span.style.display = "block";
		span.textContent = "Enter the Minimum Amount";
		status = false;
	}
	
	const ddinterestRate = document.getElementById("ddinterestRate");
	if (ddinterestRate.value === '') {
		var span = document.getElementById("interestRateSpan");
		span.style.display = "block";
		span.textContent = "Enter the Interest Rate";
		status = false;
	}
	
	
	const ddtermType = document.getElementById("ddtermType");
	if (ddtermType.value === '') {
		var span = document.getElementById("termType1");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
	
	const ddterm = document.getElementById("ddterm");
	if (ddterm.value === '') {
		var span = document.getElementById("ddtermSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}

    const ddcomN = document.getElementById("ddcomN");
	if (ddcomN.value === '') {
		var span = document.getElementById("ddcomNSpan");
		span.style.display = "block";
		span.textContent = "Enter the Comm N";
		status = false;
	}
	
	const ddcomR = document.getElementById("ddcomR");
	if (ddcomR.value === '') {
		var span = document.getElementById("ddcomRSapn");
		span.style.display = "block";
		span.textContent = "Enter the Comm R";
		status = false;
	}
	
	const ddcompoundIntrval = document.getElementById("ddcompoundIntrval");
	if (ddcompoundIntrval.value === '') {
		var span = document.getElementById("ddcompoundIntrvalSapn");
		span.style.display = "block";
		span.textContent = "Enter the Compound Interval";
		status = false;
	}
	
	const ddanyAmountPlanIsFlexi = document.getElementById("ddanyAmountPlanIsFlexi");
	if (ddanyAmountPlanIsFlexi.value === '') {
		var span = document.getElementById("ddanyAmountPlanIsFlexiSpan");
		span.style.display = "block";
		span.textContent = "Enter the Amount Plan is Flexi";
		status = false;
	}
	
	const ddgrace = document.getElementById("ddgrace");
	if (ddgrace.value === '') {
		var span = document.getElementById("ddgraceSpan");
		span.style.display = "block";
		span.textContent = "Enter the Grace ";
		status = false;
	}
	
	const ddlatefine = document.getElementById("ddlatefine");
	if (ddlatefine.value === '') {
		var span = document.getElementById("ddlatefineSpan");
		span.style.display = "block";
		span.textContent = "Enter the Late Fine ";
		status = false;
	}
	
	
	if (status === true) {
		document.dailyDeposist.submit();
		return true;
	} else {
		return false;
	}
}

//Validate the Plan Master of Recurring Depossit
function valdiateRecurringDeposist(){
    var status = true;
    
	const rDPlanName = document.getElementById("rDPlanName");
	if (rDPlanName.value === '') {
		var span = document.getElementById("rDPlanNameSpan");
		span.style.display = "block";
		span.textContent = "Enter the Plane Name.";
		status = false;
	}
	
	const eDMinimumAmount = document.getElementById("eDMinimumAmount");
	if (eDMinimumAmount.value === '') {
		var span = document.getElementById("eDMinimumAmountSpan");
		span.style.display = "block";
		span.textContent = "Enter the Minimum Amount";
		status = false;
	}
	
	const rDInterestRate = document.getElementById("rDInterestRate");
	if (rDInterestRate.value === '') {
		var span = document.getElementById("rDInterestRateSpan");
		span.style.display = "block";
		span.textContent = "Enter the Interest Rate";
		status = false;
	}
	
	const rDTermType = document.getElementById("rDTermType");
	if (rDTermType.value === '') {
		var span = document.getElementById("rDTermTypeSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
	
	const rDTerm = document.getElementById("rDTerm");
	if (rDTerm.value === '') {
		var span = document.getElementById("rDTermSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}

    const rDComN = document.getElementById("rDComN");
	if (rDComN.value === '') {
		var span = document.getElementById("rDComNSpan");
		span.style.display = "block";
		span.textContent = "Enter the Comm N";
		status = false;
	}
	
	const rDComR = document.getElementById("rDComR");
	if (rDComR.value === '') {
		var span = document.getElementById("rDComRSpan");
		span.style.display = "block";
		span.textContent = "Enter the Comm R";
		status = false;
	}
	
	const rDGrace = document.getElementById("rDGrace");
	if (rDGrace.value === '') {
		var span = document.getElementById("rDGraceSpan");
		span.style.display = "block";
		span.textContent = "Enter the Grace";
		status = false;
	}
	
	const rDLatefine = document.getElementById("rDLatefine");
	if (rDLatefine.value === '') {
		var span = document.getElementById("rDLatefineSpan");
		span.style.display = "block";
		span.textContent = "Enter the Late Fine Span";
		status = false;
	}
	
	if (status === true) {
		document.recurringDeposist.submit();
		return true;
	} else {
		return false;
	}
}

//Validate the Plan Master of Fixed Deposist
function valdiatefixedDepossit(){
    var status = true;
    
	const fdPlanName = document.getElementById("fdPlanName");
	if (fdPlanName.value === '') {
		var span = document.getElementById("fdPlanNameSpan");
		span.style.display = "block";
		span.textContent = "Enter the Plane Name.";
		status = false;
	}
	
	const fDMinimumAmount = document.getElementById("fDMinimumAmount");
	if (fDMinimumAmount.value === '') {
		var span = document.getElementById("fDMinimumAmountSpan");
		span.style.display = "block";
		span.textContent = "Enter the Minimum Amount";
		status = false;
	}
	
	const fDInterestRate = document.getElementById("fDInterestRate");
	if (fDInterestRate.value === '') {
		var span = document.getElementById("fDInterestRateSpan");
		span.style.display = "block";
		span.textContent = "Enter the Interest Rate";
		status = false;
	}
	
	const fDTerm = document.getElementById("fDTerm");
	if (fDTerm.value === '') {
		var span = document.getElementById("fDTermSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
	
	const fDComN = document.getElementById("fDComN");
	if (fDComN.value === '') {
		var span = document.getElementById("fDComNSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
    
	if (status === true) {
		document.fixedDeposist.submit();
		return true;
	} else {
		return false;
	}
}

//Validate the Plan Master of MIS Deposist
function valdiatemisDepossit(){
    var status = true;
    
	const mISPlanName = document.getElementById("mISPlanName");
	if (mISPlanName.value === '') {
		var span = document.getElementById("mISPlanNameSpan");
		span.style.display = "block";
		span.textContent = "Enter the Plane Name.";
		status = false;
	}
	
	const mISMinimumAmount = document.getElementById("mISMinimumAmount");
	if (mISMinimumAmount.value === '') {
		var span = document.getElementById("mISMinimumAmountSpan");
		span.style.display = "block";
		span.textContent = "Enter the Minimum Amount";
		status = false;
	}
	
	const mISInterestRate = document.getElementById("mISInterestRate");
	if (mISInterestRate.value === '') {
		var span = document.getElementById("mISInterestRateSpan");
		span.style.display = "block";
		span.textContent = "Enter the Interest Rate";
		status = false;
	}
	
	const mISTerm = document.getElementById("mISTerm");
	if (mISTerm.value === '') {
		var span = document.getElementById("mISTermSpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
	
	const mISROI = document.getElementById("mISROI");
	if (mISROI.value === '') {
		var span = document.getElementById("mISROISpan");
		span.style.display = "block";
		span.textContent = "Enter the Term Type";
		status = false;
	}
	
	const mISComN = document.getElementById("mISComN");
	if (mISComN.value === '') {
		var span = document.getElementById("mISComNSpan");
		span.style.display = "block";
		span.textContent = "Enter the Com N";
		status = false;
	}

	if (status === true) {
		document.misDeposist.submit();
		return true;
	} else {
		return false;
	}
}

/* INVESTMENT SECTION - FLEXI RENEWAL PAYMENT */
//Get The Selected Policy Number In The DropDown
function GetTheSelectedPolicyNumberInTheDropDown(){
	
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getPolicyNumberById',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].id+"'>"+data[i].id +"</option>";
                    }
                    $("#searchbyPolicyNo").append(appenddata1);
                    
             var appenddata2 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value = '"+data[i].branchName +"'>" +data[i].branchName +" </option>";
                    }
                    $("#branchName").append(appenddata2);
                    
             var appenddata3 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata3 += "<option value = '"+data[i].transactionType +"'>" +data[i].transactionType +" </option>";
                    }
                    $("#transactionType").append(appenddata3);
               
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

//Data Retrival 
function searchByPolicyNoFunction() {
    let id = document.getElementById("searchbyPolicyNo").value;
    var input = {
        "id": id
    };

    const myJson = JSON.stringify(input);

    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: 'searchByPolicyNo',
        async: false,
        success: function(data) {
            var x = Number(data[0].id); // Assuming you are returning a list with one item

            document.getElementById("id").value = x;
            document.getElementById("tDate").value = data[0].tDate;
            document.getElementById("searchMemberCode").value = data[0].searchMemberCode;
            document.getElementById("empCode").value = data[0].empCode;
            document.getElementById("memberCode").value = data[0].memberCode;
            document.getElementById("memberName").value = data[0].memberName;
            document.getElementById("phoneno").value = data[0].phoneno;
            document.getElementById("planCode").value = data[0].planCode;
            document.getElementById("balance").value = data[0].balance;
            document.getElementById("transactionFor").value = data[0].transactionFor;
            document.getElementById("remarks").value = data[0].remarks;
            document.getElementById("transactionType").value = data[0].transactionType;
            document.getElementById("amount").value = data[0].amount;
            document.getElementById("paymode").value = data[0].paymode;
            document.getElementById("branchName").value = data[0].branchName;
            document.getElementById("id123").value = data[0].id;

            var imgElement = document.getElementById("preview");
            imgElement.src = "data:image/png;base64," + data[0].frontEndPhoto;

            var img2 = document.getElementById('secondpreview');
            img2.src = "data:image/png;base64," + data[0].frontEndSignature;
        },
        error: function() {
            alert("Device control failed");
        }
    });
}
 
 function getDataByAddInvestment() {
	var ids = document.getElementById("searchbyPolicyNo").value;
	//alert("hi")
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
            				 <td>${value.memberName}</td>
            				 <td>${value.phoneno}</td>
            				 <td>${value.schemeName}</td>
            				 <td>${value.policyAmount}</td>
            				 <td>${value.totalDeposit}</td>
            				 <td>${value.maturityAmount}</td>
            				 <td>${value.mISInterest}</td>
            				 <td>${value.lastInstPaid}</td>   
            				 <td>${value.noOfInstPaid}</td>        
        				</tr>`
					);
				}).join('');
				const investmentTable = document.querySelector("#investmentTable");
				investmentTable.innerHTML = tableData;

			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getDataByAddInvestmentforrecurring() {
    //var ids = document.getElementById("id").value;
    var ids = document.getElementById("searchbyPolicyNo").value;
	//alert(ids)
    $.ajax({
        type: "get",
        contentType: "application/json",
        url: 'fetchDataByAddInvestment',
        data: { id: ids },
        async: false,
        success: function(data) {
            const tableData = data.map(function(value) {
                return (
                    `<tr>
                        <td>${value.policyDate}</td>
                        <td>${value.cspname}</td>
                        <td>${value.modeOfOp}</td>
                        <td>${value.misMode}</td>
                        <td>${value.paymode}</td>
                        <td>${value.policyno}</td>
                        <td>${value.term}</td>
                        <td>${value.policyAmount}</td>
                        <td>${value.maturityAmount}</td>
                        <td>${value.mISInterest}</td>
                    </tr>`
                );
            }).join('');
            const investmentTable = document.querySelector("#investmentTable");
            investmentTable.innerHTML = tableData;
        },
        error: function() {
            alert("Data retrieval failed");
        }
    });
}

function getDataByReIssue() {

	var ids = document.getElementById("searchbyPolicyNo").value;
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
						 <td>${value.policyDate}</td>
            				 <td>${value.memberName}</td>
            				 <td>${value.dob}</td>
            				 <td>${value.phoneno}</td>
            				 <td>${value.schemeName}</td>
            				 <td>${value.address}</td>
            				 <td>${value.pin}</td>      
        				</tr>`
					);
				}).join('');
				const investmentInterestTable = document.querySelector("#ReIssueCertTable");
				investmentInterestTable.innerHTML = tableData;

			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getDataByInterestDetails() {

	var ids = document.getElementById("searchbyPolicyNo").value;
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
            				 <td>${value.memberName}</td>
            				 <td>${value.policyDate}</td> 
            				 <td>${value.phoneno}</td> 
            				 <td>${value.schemeName}</td> 
            				 <td>${value.mISInterest}</td> 
            				 <td>${value.lastInstPaid}</td> 
            				 <td>${value.dueDate}</td>  
            				  <td>${value.latefine}</td> 
            				 <td>${value.noOfInstPaid}</td>            					 
        				</tr>`
					);
				}).join('');
				const investmentInterestTable = document.querySelector("#investmentInterestTable");
				investmentInterestTable.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});

}

function getDataByIssue() {

	var id = document.getElementById("searchbyPolicyNo").value;
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByIssueCertificate',
		data: { id1: id },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
            				 <td>${value.policyDate}</td>
            				 <td>${value.memberName}</td>
            				 <td>${value.dob}</td>
            				 <td>${value.phoneno}</td>
            				 <td>${value.schemeName}</td>
            				 <td>${value.address}</td>
            				 <td>${value.pin}</td>
        				</tr>`
					);
				}).join('');
				const investmentInterestTable = document.querySelector("#IssueCertTable");
				investmentInterestTable.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
}

function getDataByInvestmentReciept() {

	var ids = document.getElementById("searchbyPolicyNo").value;
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
						 <td>${value.policyDate}</td>
            				 <td>${value.memberName}</td>
            				 <td>${value.dob}</td>
            				 <td>${value.phoneno}</td>
            				 <td>${value.schemeName}</td>
            				 <td>${value.address}</td>
            				 <td>${value.pin}</td>      
        				</tr>`
					);
				}).join('');
				const investmentRecieptTable = document.querySelector("#investmentRecieptTable");
				investmentRecieptTable.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});

}

//Add Investment
function getByDataBySearchMemberCode(){
	
	var id= document.getElementById("id").value;
 var input = {
	 "id":id
	 };
	 
	 const myJson = JSON.stringify(input);

 $.ajax({
                 type:"POST",
                 contentType: "application/json",
                 data: myJson,
                 url: 'fetchDataFromSelectMember',
                 asynch: false,
                 success: function(data) {
	
	            for (let i=0;i<data.length;i++) {
		
		 document.getElementById("policyDate").value = data[i].policyDate;
		 document.getElementById("nomineeName").value = data[i].nomineeName;
		 document.getElementById("memberName").value = data[i].memberName;
		 document.getElementById("dob").value = data[i].dob;
		 document.getElementById("age").value = data[i].age;
		 document.getElementById("relativeName").value = data[i].relativeName;
		 document.getElementById("phoneno").value = data[i].phoneno;

		 document.getElementById("nomineeName").value = data[i].nomineeName;
		 document.getElementById("nomineeAge").value = data[i].nomineeAge;
		 document.getElementById("nRelation").value = data[i].nRelation;

		 document.getElementById("address").value = data[i].address;
		 document.getElementById("district").value = data[i].district;
		 document.getElementById("state").value = data[i].state;

		 document.getElementById("pinCode").value = data[i].pinCode;
		 document.getElementById("modeOfOp").value = data[i].modeOfOp;
         document.getElementById("chkisSms").value = data[i].chkisSms;
         document.getElementById("remarks").value = data[i].remarks;
          
            var img = document.getElementById('preview');
			img.src =`upload/`+data[i].photo+``;

			var img2 = document.getElementById('secondpreview');
			img2.src =`upload/`+data[i].signature+``;	
        }
       } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
       });
}

//Add investment select branch
function  SelectBranchAddInvesrtment() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'SelectBranch',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
		
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].id + "'>" + data[i].name + "</option>";
			}
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//Add Inverstment select member code 
function  SelectClientCodeAddInvesrtment() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'SelectClientCode',
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

function getDataInRecurring() {
	var ids = document.getElementById("searchbyPolicyNo").value;
	//alert(ids)
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
            				 <td>${value.policyDate}</td>
            				 <td>${value.cspname}</td> 
            				 <td>${value.mode}</td>
            				 <td>${value.misMode}</td>
            				 <td>${value.paymode}</td>
            				 <td>${value.policyno}</td>
            				 <td>${value.term}</td>
            				 <td>${value.policyAmount}</td> 
            				 <td>${value.maturityAmount}</td>
            				 <td>${value.mISInterest}</td>
        				</tr>`
					);
				}).join('');
				const recurringtable = document.querySelector("#recurringtable");
				recurringtable.innerHTML = tableData;

			}
		},
		error: function() {
			alert("Device control failed");
		}
	});

}

/*Investment Section Daily Renewal Payment Module */
//3. Get Dynamic Dropdown BranchName from DB
function getAllBranchNames(){
const branchN = document.getElementById("branchName");
$.ajax({
	type: "get",
	contentType: "application/json",
	url: 'getAllBranchName',
	asynch: false,
	success: function(data) {
		data.forEach(value => {
			const option = document.createElement('option')
			option.setAttribute('value', value.branchName);
			option.innerHTML = value.branchName
			branchN.appendChild(option)
		})

	},
	error: function() {
		alert("Device control failed");
	}
});
}

//Soft delete operation for Policy No., Renewal Date & Branch Name
function softDeleteForThreeThings() {
    var searchbyPolicyNo = document.getElementById("searchbyPolicyNo").value;
    var renewalDate = document.getElementById("renewalDate").value;
    var branchName = document.getElementById("branchName").value;
    var input = {
        "id": searchbyPolicyNo, 
        "renewalDate": renewalDate,
        "branchName": branchName
    };
    var myJson = JSON.stringify(input);

    if (!searchbyPolicyNo && !renewalDate && !branchName) {
        alert("Please Select Policy No. Or Renewal Date Or Branch Name");
    } else {
        $.ajax({
            type: "post",
            contentType: "application/json",
            data: myJson,
            url: 'deleteByPolicyNo',
            async: false,
            success: function (data) {
                alert("Soft Delete Successfully...!!!");
                window.location.href = "renewalRectification";
            },
            error: function () {
                alert("Device control failed");
            }
        });
    }
}

/*Retrieval Investment Section Daily Renewal Payment Module */
/*Retrieval Investment Section Daily Renewal Payment Module & Also Rectification Section Of Renewal Rectification Module */
//1.Get Data By Policy No.
function getByAddInvesmentCode(){
	
	//alert("Hello")
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
		var input = {
                     "id": searchbyPolicyNo.value }
             
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getByAddInvesmentCode',
                 asynch: false,
                 success: function(data) {
                 	 
                     var imgElement = document.getElementById("preview");
             	     imgElement.src = "data:image/png;base64," + data.photo;

             	     var imgElement = document.getElementById("secondpreview");
             	     imgElement.src = "data:image/png;base64," + data.signature;
			
                      document.getElementById("policyDate1").value = data.policyDate;
                      document.getElementById("mDate").value = data.mDate;
                      document.getElementById("memberCode").value = data.searchMemberCode;
                      document.getElementById("applicantName").value = data.memberName;
                      document.getElementById("mobileNo").value = data.phoneno;
                      document.getElementById("PolicyAmount").value = data.policyAmount;
                      document.getElementById("schemeName").value = data.schemeName;
                      document.getElementById("schemeType").value = data.schemeType;
                      document.getElementById("mode").value = data.mode;
                      document.getElementById("maturityAmount").value = data.maturityAmount;
                      document.getElementById("totalDeposit").value = data.totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data.amtDue;
                      document.getElementById("chkisSms").value = data.chkisSms;
                      document.getElementById("advisorCode").value = data.advisorCode;
                      document.getElementById("lastInstPaid").value = data.lastInstPaid;
                      document.getElementById("dueDate").value = data.dueDate;
                      document.getElementById("latefine").value = data.latefine;
                      document.getElementById("NoOfInstPaid").value = data.noOfInstPaid;
                      document.getElementById("paymode").value = data.paymode;
                      document.getElementById("collectorCode").value = data.collectorCode;
                      document.getElementById("advisorName").value = data.advisorName;
                      document.getElementById("remarks").value = data.remarks;
                    
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

/*Investment Section Daily Renewal Payment Module */
//2.Get Data by Renewal Date
 function getByDateAddInvesmentCode(){
	var searchbyRenewalDate = document.getElementById("renewalDate").value;
		
        $.ajax({
                 type:"get",
                 contentType: "application/json",
                 url: 'getByRenewalDate',
                 data: {SearchbyRenewalDate:searchbyRenewalDate},
                 asynch: false,
                 success: function(data) {
	
	            for (let i=0;i<data.length;i++){
		
	                 var imgElement = document.getElementById("preview");
             	     imgElement.src = "data:image/png;base64," + data[i].photo;

             	     var imgElement = document.getElementById("secondpreview");
             	     imgElement.src = "data:image/png;base64," + data[i].signature;
						
                      document.getElementById("policyDate1").value = data[i].policyDate;
                      document.getElementById("mDate").value = data[i].mDate;
                      document.getElementById("memberCode").value = data[i].searchMemberCode;
                      document.getElementById("applicantName").value = data[i].memberName;
                      document.getElementById("mobileNo").value = data[i].phoneno;
                      document.getElementById("PolicyAmount").value = data[i].policyAmount;
                      document.getElementById("schemeName").value = data[i].schemeName;
                      document.getElementById("schemeType").value = data[i].schemeType;
                      document.getElementById("mode").value = data[i].mode;
                      document.getElementById("maturityAmount").value = data[i].maturityAmount;
                      document.getElementById("totalDeposit").value = data[i].totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data[i].amtDue;
                      document.getElementById("chkisSms").value = data[i].chkisSms;
                      document.getElementById("advisorCode").value = data[i].advisorCode;
                      document.getElementById("lastInstPaid").value = data[i].lastInstPaid;
                      document.getElementById("dueDate").value = data[i].dueDate;
                      document.getElementById("latefine").value = data[i].latefine;
                      document.getElementById("NoOfInstPaid").value = data[i].noOfInstPaid;
                      document.getElementById("paymode").value = data[i].paymode;
                      document.getElementById("collectorCode").value = data[i].collectorCode;
                      document.getElementById("advisorName").value = data[i].advisorName;
                      document.getElementById("remarks").value = data[i].remarks;
	}
	            } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

/*Investment Section Daily Renewal Payment Module */
/*3.Get Data from Branch Name*/
function getByBranchNameAddInvesmentCode(){
	var searchbybranchName = document.getElementById("branchName").value;
		
        $.ajax({
                 type:"get",
                 contentType: "application/json",
                 url: 'getAllDataByBranchName',
                 data: {SearchbybranchName:searchbybranchName},
                 asynch: false,
                 success: function(data) {
	
                      for (let i=0;i<data.length;i++){
	                  
	                 var imgElement = document.getElementById("preview");
             	     imgElement.src = "data:image/png;base64," + data[i].photo;

             	     var imgElement = document.getElementById("secondpreview");
             	     imgElement.src = "data:image/png;base64," + data[i].signature;
					
                      document.getElementById("policyDate1").value = data[i].policyDate;
                      document.getElementById("mDate").value = data[i].mDate;
                      document.getElementById("memberCode").value = data[i].searchMemberCode;
                      document.getElementById("applicantName").value = data[i].memberName;
                      document.getElementById("mobileNo").value = data[i].phoneno;
                      document.getElementById("PolicyAmount").value = data[i].policyAmount;
                      document.getElementById("schemeName").value = data[i].schemeName;
                      document.getElementById("schemeType").value = data[i].schemeType;
                      document.getElementById("mode").value = data[i].mode;
                      document.getElementById("maturityAmount").value = data[i].maturityAmount;
                      document.getElementById("totalDeposit").value = data[i].totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data[i].amtDue;
                      document.getElementById("chkisSms").value = data[i].chkisSms;
                      document.getElementById("advisorCode").value = data[i].advisorCode;
                      document.getElementById("lastInstPaid").value = data[i].lastInstPaid;
                      document.getElementById("dueDate").value = data[i].dueDate;
                      document.getElementById("latefine").value = data[i].latefine;
                      document.getElementById("NoOfInstPaid").value = data[i].noOfInstPaid;
                      document.getElementById("paymode").value = data[i].paymode;
                      document.getElementById("collectorCode").value = data[i].collectorCode;
                      document.getElementById("advisorName").value = data[i].advisorName;
                      document.getElementById("remarks").value = data[i].remarks;
                     
                   }
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });

}

function getDataByPolNofordailyRD() {

	var ids = document.getElementById("searchbyPolicyNo").value;
	//alert("hi")
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDataByAddInvestment',
		data: { id: ids },
		asynch: false,
		success: function(data) {
			for (var i = 0; i < data.length; i++) {
                           var j=1;
				const tableData = data.map(function(value) {
					return (

						`<tr>
            				 <td>${j++}</td>
            				 <td>${value.policyAmount}</td>
            				 <td>${value.totalDeposit}</td>
            				 <td>${value.maturityAmount}</td>          					 
        				</tr>`
					);
				}).join('');
				const renewalPassbook = document.querySelector("#renewalPassbook");
				renewalPassbook.innerHTML = tableData;

			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


