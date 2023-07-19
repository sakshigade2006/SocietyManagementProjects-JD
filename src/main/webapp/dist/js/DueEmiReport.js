//Ajax Code Starts Here
function DueEmiReport()
{	
 var branch= document.getElementById("branch").value;
 var plan= document.getElementById("plan").value;
 var advisorCode= document.getElementById("advisorCode").value;
 var tillDate= document.getElementById("tillDate").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'DueEmiReport1',
     data:{Branch: branch, Plan: plan, AdvisorCode: advisorCode, TillDate: tillDate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 ` 
                     	<tr>
                        	 <td>${value.slno}</td> 
							 <td>${value.loanId}</td>     
					     	 <td>${value.memberCode}</td>  
					     	 <td>${value.memberName}</td>  
					     	 <td>${value.loanDate}</td>
					     	 <td>${value.branch}</td>
					     	 <td>${value.mobile}</td>
					     	 <td>${value.loanName}</td>
					     	 <td>${value.loanAmt}</td>
					     	 <td>${value.principalPaid}</td>  
					     	 <td>${value.interestPaid}</td>  
					     	 <td>${value.totalPaid}</td>  
					     	 <td>${value.tillDue}</td> 
					     	 <td>${value.principalDue}</td> 
					     	 <td>${value.interestDue}</td>  
					   </tr>
					   `
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
 