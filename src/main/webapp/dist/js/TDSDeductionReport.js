//1Ajax Code Starts Here
function TDSDeductionReportAjax()
{
	
 let month= document.getElementById("month").value;
 var advisorcode= document.getElementById("advisorcode").value;

 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'TDSDeductionReport1',
     data:{ Month:month, Advisorcode: advisorcode},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 
                	` <tr>
						 <td>${value.businessType}</td>     
					     <td>${value.advisorCode}</td>
					     <td>${value.date}</td>      
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
