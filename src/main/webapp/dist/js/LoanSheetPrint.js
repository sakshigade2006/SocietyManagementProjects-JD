//Ajax Code Starts Here
function LoanSheetPrint()
{	
 var plan= document.getElementById("plan").value;
 var advisorCode= document.getElementById("advisorCode").value;
 var tillDate= document.getElementById("tillDate").value;
 //alert(branch);
 
 document.getElementById("AdvisorCode").innerHTML = advisorCode;
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'LoanSheetPrint1',
     data:{Plan: plan, AdvisorCode: advisorCode, TillDate: tillDate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 document.getElementById("AdvisorName").innerHTML = data[i].appName;
			 //alert(data[i].appName);
			 const tableData = data.map(function(value){
                 return (
                		 `<tr>
                        	 <td>${value.loanId}</td> 
							 <td>${value.loanType}</td>     
					     	 <td>${value.appName}</td>  
					     	 <td>${value.address}</td>  
					     	 <td>${value.mobileLoanDate}</td>  
					     	 <td>${value.loanAmount}</td>
					     	 <td>${value.totalReturnTotalPaid}</td>
					     	 <td>${value.balance}</td>
					     	 <td>${value.payDate}</td>
					     	 <td>${value.emiAmount}</td>
					     	 <td>${value.termMode}</td>
					     	 <td>${value.overDue}</td>
					     	 <td>${value.advance}</td>
					     	 <td>${value.emiDue}</td>
					     	 <td>${value.remarks}</td>
					     	 <td>${value.sign}</td>
					   </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#table");
             table.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }