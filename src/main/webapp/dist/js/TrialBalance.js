//Ajax Code Starts Here
 function TrialBalance()
{	
 var branchName= document.getElementById("branchName").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
 document.getElementById("Branch").innerHTML = branchName;
 document.getElementById("FormDate").innerHTML = fromdate;
 document.getElementById("ToDate").innerHTML = todate;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'trialBalance1',
     data:{BranchName: branchName, Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 
                		 ` 
                     	<tr>
                        	 <td>${value.ledgerName}</td> 
							 <td>${value.opening}</td>     
					     	<td>${value.debit}</td>  
					     	<td>${value.credit}</td>  
					     	<td>${value.closing}</td>  
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
 
 
 
 