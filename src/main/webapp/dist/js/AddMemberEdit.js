/* Update Code */
 function UpdateCode(){	
	const obj= {

  verifyWithAadhar: document.getElementById("verifyWithAadhar").value,
  registrationDate: document.getElementById("registrationDate").value,
  memberNamePrefix: document.getElementById("memberNamePrefix").value,
  memberName: document.getElementById("memberName").value,
  relativeName: document.getElementById("relativeName").value,
  relativeRelation: document.getElementById("relativeRelation").value,
  gender: document.getElementById("gender").value,
  dob: document.getElementById("dob").value,
  age: document.getElementById("age").value,
  maritalStatus: document.getElementById("maritalStatus").value,
  address: document.getElementById("address").value,
  district: document.getElementById("district").value,
  state: document.getElementById("state").value,
  branchName: document.getElementById("branchName").value,
  pinCode: document.getElementById("pinCode").value,
  aadharNo: document.getElementById("aadharNo").value,
  pan: document.getElementById("pan").value,
  voterNo: document.getElementById("voterNo").value,
  phoneno: document.getElementById("phoneno").value,
  emailid: document.getElementById("emailid").value,
  occupation: document.getElementById("occupation").value,
  education: document.getElementById("education").value,
  introMCode: document.getElementById("introMCode").value,
  introMName: document.getElementById("introMName").value,
 
  nomineeName: document.getElementById("nomineeName").value,
  nRelation: document.getElementById("nRelation").value,
  nomineeAddress: document.getElementById("nomineeAddress").value,
  nomineeKycNumber: document.getElementById("nomineeKycNumber").value,
  nomineeMobileNo: document.getElementById("nomineeMobileNo").value,
  nomineeAge: document.getElementById("nomineeAge").value,
  nomineePanNo: document.getElementById("nomineePanNo").value,
  nomineeKycTyp: document.getElementById("nomineeKycType").value,
 
 memberJoiningFess: document.getElementById("memberJoiningFess").value,
 shareAllotedfrm: document.getElementById("shareAllotedfrm").value,
 noOfShared: document.getElementById("noOfShared").value,
 enterShareAmount: document.getElementById("enterShareAmount").value,
 paymode: document.getElementById("paymode").value,
 remarks: document.getElementById("remarks").value,
 
 id: document.getElementById("id").value,
 
 };
 const myJSON = JSON.stringify(obj);
 
 $.ajax({
	 type:"POST",
     contentType: "application/json",
     url: 'updateAddMember',
     data:myJSON,
     asynch: false,
     success: function(data) {  
	     //alert("Updated THe Data");
	     swal("Data Update Successfully..!!","","success");
	      
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }