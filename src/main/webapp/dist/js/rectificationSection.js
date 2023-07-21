//Get Id In The DropDown
function GetIdInTheDropDown(){
	
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'selectByCode',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].id +"'>" +data[i].id +"-"+ data[i].memberName + "</option>";
                    }
                    $("#id").append(appenddata1);  
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

//Data retrival from Id
function searchById() {
    let id = document.getElementById("id").value;
    var input = {
        "id": id
    };
    const myJson = JSON.stringify(input);

    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: 'searchById',
        async: false,
        success: function (response) {
            if (response) {
                var advisor = response;
                document.getElementById("id133").value = advisor.id;
                document.getElementById("joiningDate").value = advisor.joiningDate;
                document.getElementById("memberName").value = advisor.memberName;
                document.getElementById("dob").value = advisor.dob;
                document.getElementById("age").value = advisor.age;
                document.getElementById("relativeName").value = advisor.relativeName;
                document.getElementById("relativeRelation").value = advisor.relativeRelation;
                document.getElementById("mobileNo").value = advisor.mobileNo;
                document.getElementById("nomineeName").value = advisor.nomineeName;
                document.getElementById("relation").value = advisor.relation;
                document.getElementById("branchName").value = advisor.branchName;
                document.getElementById("nomineeAge").value = advisor.nomineeAge;
                document.getElementById("address").value = advisor.address;
                document.getElementById("district").value = advisor.district;
                document.getElementById("state").value = advisor.state;
                document.getElementById("pinCode").value = advisor.pinCode;
                document.getElementById("occupation").value = advisor.occupation;
                document.getElementById("education").value = advisor.education;
                document.getElementById("selectPosition").value = advisor.selectPosition;
                document.getElementById("introducerCode").value = advisor.introducerCode;
                document.getElementById("introducerName").value = advisor.introducerName;
                document.getElementById("position").value = advisor.position;
                document.getElementById("feesIfAny").value = advisor.feesIfAny;
                document.getElementById("paymentBy").value = advisor.paymentBy;

                // Update remarks
                document.getElementById("remarks").value = advisor.remarks;

                // Update photo and signature
                var imgElement = document.getElementById("preview");
                imgElement.src = "data:image/png;base64," + advisor.frontEndPhoto;

                var img2 = document.getElementById('secondpreview');
                img2.src = "data:image/png;base64," + advisor.frontEndSignature;
            } else {
                alert("No data found");
            }
        },
        error: function () {
            alert("Device control failed");
        }
    });
}

//Making disabled field unable & text field empty
function enableDisabledFieldOfRectification() {
	//alert("Hello")
	document.getElementById("joiningDate").value = "";
	
	document.getElementById("selectMember").value = "";
	
	document.getElementById("memberName").disabled = false;
	document.getElementById("memberName").value = "";
	
	document.getElementById("dob").disabled = false;
	document.getElementById("dob").value = "";
	
	document.getElementById("age").disabled = false;
	document.getElementById("age").value = "";
	
	document.getElementById("relativeName").disabled = false;
	document.getElementById("relativeName").value = "";
	
	document.getElementById("relativeRelation").disabled = false;
	document.getElementById("relativeRelation").value = "";
	
	document.getElementById("mobileNo").disabled = false;
	document.getElementById("mobileNo").value = "";
	
	document.getElementById("nomineeName").value = "";
	
	document.getElementById("relation").value = "";
	
	document.getElementById("branchName").value = "";
	
	document.getElementById("nomineeAge").value = "";
	
	document.getElementById("address").disabled = false;
	document.getElementById("address").value = "";
	
	document.getElementById("district").disabled = false;
	document.getElementById("district").value = "";
	
	document.getElementById("state").disabled = false;
	document.getElementById("state").value = "";
	
	document.getElementById("pinCode").disabled = false;
	document.getElementById("pinCode").value = "";
	
	document.getElementById("occupation").disabled = false;
	document.getElementById("occupation").value = "";
	
	document.getElementById("education").disabled = false;
	document.getElementById("education").value = "";
	
	document.getElementById("selectPosition").value = "";
	
	document.getElementById("introducerCode").value = "";
	
	document.getElementById("introducerName").disabled = false;
	document.getElementById("introducerName").value = "";
	
	document.getElementById("position").disabled = false;
	document.getElementById("position").value = "";
	
	document.getElementById("feesIfAny").value = "";
	
	document.getElementById("paymentBy").value = "";
	
	document.getElementById("remarks").value = "";
	
	var img = document.getElementById('preview');
				img.src = "";
	var img = document.getElementById('secondpreview');
				img.src = "";
	
	//Making NEW button disabled			
	document.getElementById("newbutton").disabled = false;	
}

//Soft delete integration
function softDeleteForAdvisorRectification(){
	var id = document.getElementById("id").value;
	var input = {
		"id" : id,
	}
	var myJson = JSON.stringify(input);
	//alert(id)
	if(!id){
		alert("Please select ID")
	}
	else{
		$.ajax({
			type:"post",
			contentType: "application/json",
			data: JSON.stringify(input),
			url: 'deleteAdvisorRectification',
			asynch: false,
			success: function(data){
				alert("Soft Delete Successfully...!!!")
				window.location.href = "advisorRectification";
			},
			error: function(){
				alert("Device control failed");
			}
		});
	}
}

//Get Loan Plan Name In Dropdown From Dp
function GetLoanPlanNameInDropdownFromDp(){
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'slectLoanPlanNameFromLoanTable',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].loanPlanName+"'>"+data[i].loanPlanName +"</option>";
                    }
                    $("#loanPlanName").append(appenddata1);  
                    
             var appenddata2 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value ='"+data[i].planTerm+"'>"+data[i].planTerm +"</option>";
                    }
                    $("#planTerm").append(appenddata2);  
                    
            var appenddata3 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata3 += "<option value ='"+data[i].coApplicantCode+"'>"+data[i].coApplicantCode +"</option>";
                    }
                    $("#coApplicantCode").append(appenddata3); 
                    
            var appenddata4 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata4 += "<option value ='"+data[i].searchMemberCode+"'>"+data[i].searchMemberCode +"</option>";
                    }
                    $("#searchMemberCode").append(appenddata4);   
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

//Retrieve data in dropdown from db after soft delete operation is done
function getAllIDAfterSoftDeleteOperation(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrieveDataOfSoftDeleteApi',
		asynch: false,
		success: function(data){
			
			var appenddata1 = "";
				for(var i=0; i<data.length; i++){
					appenddata1 += "<option value ='"+data[i].id +"'>" +data[i].id +"-"+ data[i].memberName + "</option>";
				}
				$("#id").append(appenddata1);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}

//Update Operation
$(document).ready(function() {
			$('#updatebutton').click(function() {
				
				if ($("#filetag").val() == "") {
		             alert("Select THe Photo !!!");
		             return;
		         }
		         
		         if ($("#secondfiletag").val() == "") {
		             alert("Select THe Signature !!!");
		             return;
		         }
		         
				//alert("Update  is working ")
				var form = $('#myForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'updateAdvisorRectification',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						console.log(response);
						alert("DATA UPDATED")
						window.location.href = "advisorRectification";
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
});

//Retrieve data in dropdown from db after soft delete operation is done on SelectByLoanID
function getRetrieveDataInSelectByLoanID(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrieveDataOfSelectByLoanID',
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

//Get Search Member In Dropdown From Dp
function GetSearchMemberInDropdownFromDp(){
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllClientAfterSoftDelete',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].memberName+"'>"+data[i].memberName +"</option>";
                    }
                    $("#memberName").append(appenddata1);  
                    
            var appenddata2 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value ='"+data[i].branchName+"'>"+data[i].branchName +"</option>";
                    }
                    $("#branchName").append(appenddata2);  
                     
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

//Data retrival from Loan Plan Name
function DataretrivalfromLoanPlanName(){
	let loanPlanName = document.getElementById("loanPlanName").value;
	var input = {
		"loanPlanName":loanPlanName
	};
	const myJson = JSON.stringify(input);
	//alert(loanPlanName)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'searchByLoanPlanNameFromLoanTable',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				//document.getElementById("id133").value = data[i].id;
				document.getElementById("loanType").value = data[i].loanType;
				document.getElementById("planTerm").value = data[i].planTerm;
				document.getElementById("mode").value = data[i].mode;
				document.getElementById("loanROI").value = data[i].loanROI;
				document.getElementById("loanAmount").value = data[i].loanAmount;
				document.getElementById("roitype").value = data[i].roitype;
				document.getElementById("emiAmount").value = data[i].emiAmount;
				document.getElementById("loanPurpose").value = data[i].loanPurpose;
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
				document.getElementById("advisorName").value = data[i].advisorName;
				document.getElementById("loanDate").value = data[i].loanDate;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

//Soft delete operation on Select by LoanID
function softDeleteForSelectByLoanID(){
	var id = document.getElementById("id").value;
	var input = {
		"id" : id,
	}
	var myJson = JSON.stringify(input);
	//alert(id)
	if(!id){
		alert("Please select ID")
	}
	else{
		$.ajax({
			type:"post",
			contentType: "application/json",
			data: JSON.stringify(input),
			url: 'deleteSelectByLoanID',
			asynch: false,
			success: function(data){
			alert("Soft Delete Successfully...!!!");
				
//			Swal.fire({
//  				icon: 'success',
//  				title: 'Soft Delete Successfully...!!!',
//  				showConfirmButton: false,
//  				timer: 1500
//			});
//			
				window.location.href = "loanRectification";
			},
			error: function(){
				alert("Device control failed");
			}
		});
	}
}

//Data retrival from Search Member
function DataretrivalfromSearchMember(){
	let memberName = document.getElementById("memberName").value;
	var input = {
		"memberName":memberName
	};
	const myJson = JSON.stringify(input);
	//alert(memberName)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'searchBySearchMemberFromMemberTable',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				//document.getElementById("id133").value = data[i].id;
				document.getElementById("relativeRelation").value = data[i].relativeRelation;
				document.getElementById("dob").value = data[i].dob;
				document.getElementById("age").value = data[i].age;
				document.getElementById("phoneno").value = data[i].phoneno;
				document.getElementById("status").value = data[i].status;
				document.getElementById("address").value = data[i].address;
				document.getElementById("pinCode").value = data[i].pinCode;
				document.getElementById("branchName").value = data[i].branchName;
				
				var imgElement = document.getElementById("preview");
			    imgElement.src ="data:image/png;base64,"+data[i].image;
			    
			    var imgElement = document.getElementById("secondpreview");
			    imgElement.src ="data:image/png;base64,"+data[i].signature;
				
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}
		
//Doing Save Operation & also validation
$(document).ready(function() {
	$('#newbutton').click(function() {
	//alert("Save is working ")
				
	//Validation Code
   	if($("#joiningDate").val() == ""){
   		alert("Write Joining Date")
   		return;
   	}
   	
	if($("#selectMember").val() == ""){
   		alert("Select Member")
   		return;
   	}
	
	if($("#memberName").val() == ""){
   		alert("Write Member Name")
   		return;
   	}
	
	if($("#dob").val() == ""){
   		alert("Select DOB")
   		return;
   	}
	
	if($("#mobileNo").val() == ""){
   		alert("Write Mobile Number")
   		return;
   	}
	
	if($("#branchName").val() == ""){
   		alert("Select Branch Name")
   		return;
   	}
	
	if($("#address").val() == ""){
   		alert("Write Address")
   		return;
   	}
	
	if($("#district").val() == ""){
   		alert("Write District")
   		return;
   	}
	
	if($("#state").val() == ""){
   		alert("Wite State")
   		return;
   	}
	
	if($("#pinCode").val() == ""){
   		alert("Write Pincode")
   		return;
   	}
	
	if($("#selectPosition").val() == ""){
   		alert("Select Position")
   		return;
   	}
	
	if($("#introducerCode").val() == ""){
   		alert("Write Introduce Code")
   		return;
   	}
	
	if($("#position").val() == ""){
   		alert("Write Position")
   		return;
   	}
	
	if($("#feesIfAny").val() == ""){
   		alert("Write Fees If Any")
   		return;
   	}
	
	if($("#paymentBy").val() == ""){
   		alert("Select Payment By")
   		return;
   	}

				var form = $('#myForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'saveNewData',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						console.log(response);
						alert("DATA SAVED")
						window.location.href = "advisorRectification";
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
});		

function SelectMemberAfterSoftDelete(){
	//alert("ho")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrieveMemberRectificaionByFlag',
		asynch: false,
		success: function(data) {
			//alert("helooo")
            
             var appenddata2 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata2 += "<option value ='"+data[i].memberName +"'>" +data[i].memberName + "</option>";
					}
                    $("#selectMember").append(appenddata2);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function RetrieveLoanMasterId(){
	let id = document.getElementById("id").value;
	var input = {
		"id":id
	};
	const myJson = JSON.stringify(input);
	//alert(id)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'retrieveLoanMasterId',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				document.getElementById("id123").value = data[i].id;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function RetrieveGroupLoanMasterId(){
	//alert("hi")
	$.ajax({
            type:"POST",
            contentType: "application/json",
            url: 'RetrieveDataOfSoftDeletedApiGroupLoan',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].id+"'>"+data[i].id +"</option>";
                    }
                    $("#id").append(appenddata1);  
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function GetGroupLoanIdForUpdate(){
	let id = document.getElementById("id").value;
	var input = {
		"id":id
	};
	const myJson = JSON.stringify(input);
	//alert(id)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'getGroupLoanIdForUpdate',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				document.getElementById("id123").value = data[i].id;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function softDeleteIntegrationsGroupLoan(){
	var id = document.getElementById("id").value;
	var input = {
		"id" : id,
	}
	var myJson = JSON.stringify(input);
	//alert(id)
	if(!id){
		alert("Please select Code")
	}
	else{
		$.ajax({
			type:"post",
			contentType: "application/json",
			data: JSON.stringify(input),
			url: 'deleteGroupMasterApplicationById',
			asynch: false,
			success: function(data){
				alert("Soft Delete Successfully...!!!")
				window.location.href = "getMemberRectification";
			},
			error: function(){
				alert("Device control failed");
			}
		});
	}
}