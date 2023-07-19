/* 1. Data Retrival */
 function AddInvestmentAjax()
{	
 let searchMemberCode= document.getElementById("searchMemberCode").value;
 //alert(searchMemberCode)
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'SelectMember',
     data:{searchMemberCode: searchMemberCode},
     asynch: false,
     success: function(data) {  
		  
	      for (let i = 0; i < data.length; i++)
	       {
			   
			var img = document.getElementById('preview');
			img.src =`upload/`+data[i].photo+``;

			var img2 = document.getElementById('secondpreview');
			img2.src =`upload/`+data[i].signature+``;
			    
			 document.getElementById("policyDate").value=data[i].policyDate;
			 document.getElementById("searchMemberCode").value=data[i].searchMemberCode;
			 document.getElementById("memberName").value=data[i].memberName;
			 document.getElementById("dob").value=data[i].dob;
			 document.getElementById("age").value=data[i].age;
			 document.getElementById("relativeName").value=data[i].relativeName;
			 document.getElementById("phoneno").value=data[i].phoneno;
			 document.getElementById("nomineeName").value=data[i].nomineeName;
			 document.getElementById("nomineeAge").value=data[i].nomineeAge;
			 document.getElementById("nomineeRelation").value=data[i].nomineeRelation;
			 document.getElementById("address").value=data[i].address;
			 document.getElementById("district").value=data[i].district;
			 document.getElementById("state").value=data[i].state;
			 document.getElementById("pin").value=data[i].pin;
			 document.getElementById("CSPName").value=data[i].CSPName;
			 document.getElementById("modeOfOp").value=data[i].modeOfOp;
			 document.getElementById("jointCode").value=data[i].jointCode;
			 document.getElementById("jointName").value=data[i].jointName;
			 document.getElementById("mDate").value=data[i].mDate;
			 document.getElementById("schemeType").value=data[i].schemeType;
			 document.getElementById("schemeName").value=data[i].schemeName;
			 document.getElementById("term").value=data[i].term;
			 document.getElementById("mode").value=data[i].mode;
			 document.getElementById("misMode").value=data[i].misMode;
			 document.getElementById("policyAmount").value=data[i].policyAmount;
			 document.getElementById("totalDeposit").value=data[i].totalDeposit;
			 document.getElementById("maturityAmount").value=data[i].maturityAmount;
			 document.getElementById("mISInterest").value=data[i].mISInterest;
			 document.getElementById("paymode").value=data[i].paymode;
			 document.getElementById("remarks").value=data[i].remarks;
			 document.getElementById("advisorCode").value=data[i].advisorCode;
			 document.getElementById("advisorName").value=data[i].advisorName;
			 document.getElementById("chkisSms").value=data[i].chkisSms;
			            
			 let photoValue =data[i].photo;
		     //alert(photoValue);
             //alert(data[i].signature);
			 //document.getElementById("photo").value=data[i].photo;
			 //document.getElementById("signature").value=data[i].signature;
			 
		}
		 //alert(photoValue);
		
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }