//Ajax Code Starts Here
function IncentivePaymentReport()
{	
 var branch= document.getElementById("branch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 //alert(branch);
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'IncentivePaymentReport1',
     data:{Branch: branch, Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 `<tr>
                        	 <td>${value.branch}</td> 
							 <td>${value.paydate}</td>     
					     	 <td>${value.advisorcode}</td>  
					     	 <td>${value.advisorname}</td>  
					     	 <td>${value.month}</td>  
					     	 <td>${value.amount}</td>
					     	 <td>${value.paymode}</td>
					     	 <td>${value.chqNo}</td>
					     	 <td>${value.sbAccount}</td>
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
 
function fetchyear(){
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'fetchingmonths',
		asynch: false,
		success: function(data){				
			var appenddata2 = "";
				for(var i=0; i<data.length; i++){
					appenddata2 += "<option value='"+data[i].month+"'>"+data[i].month+"</option> ";
				}
				$("#invmonth").append(appenddata2);
		},
		error: function(){
			alert("Device conteol failed");
		}
	});
}