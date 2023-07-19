//Ajax Code Starts Here
function InvestmentReportAjax1()
{	
 var branch= document.getElementById("branch").value;
 var planName= document.getElementById("planName").value;
 var planCode= document.getElementById("planCode").value;
 var biztype= document.getElementById("biztype").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
 document.getElementById("FormDate").innerHTML = fromdate;
 document.getElementById("ToDate").innerHTML = todate;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'InvestmentReport1',
     data:{BRANCH: branch, PlanName: planName, PlanCode: planCode, Biztype: biztype, Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 
                		` 
                     	<tr>
                        	 <td>${value.branch}</td> 
							 <td>${value.txnDate}</td>     
					     	<td>${value.policyNo}</td>  
					     	<td>${value.applicatName}</td>  
					     	<td>${value.memberCode}</td>  
					     	<td>${value.ino}</td> 
                         	<td>${value.advisorCode}</td>
                         	<td>${value.bizAmount}</td>
                         	<td>${value.biztype}</td>
                         	<td>${value.planCode}</td>
                         	<td>${value.planName}</td>
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
 