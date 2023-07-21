/* Member Rectification JS */

/* Dynamic Dropdown from DB */
function retrieveCodeInDropdown(){
	//alert("hi")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getDataInDd',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].id +"'>" +data[i].id +"-"+ data[i].memberName + "</option>";
					}
                    $("#id").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function ShareAllotedFromInDropdown(){
	//alert("hi")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getshareAllotedfrm',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].shareAllotedfrm2 +"'>" +data[i].shareAllotedfrm2 + "</option>";
					}
                    $("#shareAllotedfrm").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function BranchNameInDropdown(){
	//alert("hi")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].name +"'>" +data[i].name + "</option>";
					}
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function DepositAccNoInDropdown(){
	//alert("hi")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getDepositAccNo',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].accountNo +"'>" +data[i].accountNo + "</option>";
					}
                    $("#depositAcc").append(appenddata1);
                    $("#accountno").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

/* Retrieval Code for Member Rectification */
function getDataBySearchCode(){
	const id = document.getElementById("id").value;
	const obj = {
                     "id": id
              };
              const myJson = JSON.stringify(obj);
              //alert(id)
     $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: myJson,
                 url: 'searchByCode',
                 asynch: false,
                 success: function(data) {
					for(var i=0; i<data.length; i++){
					 document.getElementById("id123").value = data[i].id;
                 	 document.getElementById("registrationDate").value = data[i].registrationDate;
                     document.getElementById("memberNamePrefix").value = data[i].memberNamePrefix;
                     document.getElementById("memberName").value = data[i].memberName;
                     document.getElementById("relativeName").value = data[i].relativeName;
                     document.getElementById("relativeRelation").value = data[i].relativeRelation;
                     document.getElementById("gender").value = data[i].gender;
                     document.getElementById("dob").value = data[i].dob;
                     document.getElementById("age").value = data[i].age;
                     document.getElementById("maritalStatus").value = data[i].maritalStatus;
                     document.getElementById("address").value = data[i].address;
                     document.getElementById("district").value = data[i].district;
                     document.getElementById("state").value = data[i].state;
                     document.getElementById("branchName").value = data[i].branchName;
                     document.getElementById("pinCode").value = data[i].pinCode;
                     document.getElementById("aadharNo").value = data[i].aadharNo;
                     document.getElementById("pan").value = data[i].pan;
                     document.getElementById("voterNo").value = data[i].voterNo;
                     document.getElementById("phoneno").value = data[i].phoneno;
                     document.getElementById("emailid").value = data[i].emailid;
                     document.getElementById("occupation").value = data[i].occupation;
                     document.getElementById("education").value = data[i].education;
                     document.getElementById("introMCode").value = data[i].introMCode;
                     document.getElementById("introMName").value = data[i].introMName;
                     document.getElementById("nomineeName").value = data[i].nomineeName;
                     document.getElementById("nRelation").value = data[i].nRelation;
                     document.getElementById("nomineeAddress").value = data[i].nomineeAddress;
                     document.getElementById("nomineeKycNumber").value = data[i].nomineeKycNumber;
                     document.getElementById("nomineeMobileNo").value = data[i].nomineeMobileNo;
                     document.getElementById("nomineeAge").value = data[i].nomineeAge;
                     document.getElementById("nomineePanNo").value = data[i].nomineePanNo;
                     document.getElementById("nomineeKycType").value = data[i].nomineeKycType;
                     document.getElementById("memberJoiningFess").value = data[i].memberJoiningFess;
                     document.getElementById("shareAllotedfrm").value = data[i].shareAllotedfrm;
                     document.getElementById("noOfShared").value = data[i].noOfShared;
                     document.getElementById("enterShareAmount").value = data[i].enterShareAmount;
                     document.getElementById("paymode").value = data[i].paymode;
                     document.getElementById("chkNo").value = data[i].chkNo;
                     document.getElementById("chkDate").value = data[i].chkDate;
                     document.getElementById("depositAcc").value = data[i].depositAcc;
                     document.getElementById("remarks").value = data[i].remarks;
                     
                     //var img = document.getElementById('imgName');
			       	 //img.src =`upload/`+data[i].imgName+``;
			       	 var imgElement = document.getElementById("preview");
			         imgElement.src ="data:image/png;base64,"+data[i].image;
                   }  
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });         	
}

/* Soft delete integration */
function softDeleteIntegrations(){
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
			url: 'deleteMemberRectificationBySelectByCode',
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

//Retrieval Code for Member Rectification
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
					appenddata1 += "<option value='"+data[i].id+"'>"+data[i].id+"</option> ";
				}
				$("#id").append(appenddata1);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}

function retrieveCodeAfterSoftDelete(){
	//alert("ho")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'retrieveMemberRectificaionByFlag',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].id +"'>" +data[i].id +"-"+ data[i].memberName + "</option>";
					}
                    $("#id").append(appenddata1);
                    
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


