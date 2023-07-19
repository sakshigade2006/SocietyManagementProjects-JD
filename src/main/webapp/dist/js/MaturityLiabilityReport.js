function MaturityLiabilityReport()
{
	var branch= document.getElementById("branch").value;
	var planname=document.getElementById("planname").value;
    var fromdate= document.getElementById("fromdate").value;
    var todate= document.getElementById("todate").value;
    
	$.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'getmaturityLiabilityReport',
     data:{Branch: branch, Planname : planname, Fromdate :fromdate, Todate :todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return ( 
                    ` <tr>
                         <td>${value.slno}</td> 
						 <td>${value.policyno}</td>     
					     <td>${value.applicantname}</td>   
					     <td>${value.branch}</td>  
					     <td>${value.advisor}</td> 
					     <td>${value.policydate}</td> 
					     <td>${value.matdate}</td>  
					     <td>${value.planname}</td>  
					     <td>${value.plancode}</td>  
					     <td>${value.policyamt}</td>  
					     <td>${value.totalpaid}</td>  
					     <td>${value.calmaturity}</td> 
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tablematurity");
             tablematurity.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
}