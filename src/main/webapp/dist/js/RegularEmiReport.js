function  RegularEmiReport()
{
	var branch= document.getElementById("branch").value;
    var fromdate= document.getElementById("fromdate").value;
    var todate= document.getElementById("todate").value;
    
    $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'getregularEmiReport',
     data:{Branch: branch, Fromdate :fromdate, Todate :todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return ( 
                    ` <tr>
                         <td>${value.sino}</td> 
						 <td>${value.loanid}</td>     
					     <td>${value.membercode}</td>   
					     <td>${value.membername}</td>  
					     <td>${value.branch}</td> 
					     <td>${value.paydate}</td> 
					     <td>${value.payamount}</td>  
					     <td>${value.principal}</td>  
					     <td>${value.interest}</td>  
					     <td>${value.paymode}</td>  
					     <td>${value.chequeno}</td>  
					     <td>${value.sbaccount}</td> 
					     <td>${value.collectorcode}</td>   
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tabelemi");
             tabelemi.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
}