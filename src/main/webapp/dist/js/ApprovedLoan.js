//Ajax Code Starts Here
function ApprovedLoan()
{
 var branch= document.getElementById("branch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;

 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'getapprovedLoan',
     data:{Branch: branch, Fromdate :fromdate, Todate :todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return ( 
                    ` <tr>
                         <td>${value.slno}</td> 
						 <td>${value.loanid}</td>     
					     <td>${value.membercode}</td>   
					     <td>${value.membername}</td>  
					     <td>${value.loandate}</td> 
					     <td>${value.branch}</td>  
					     <td>${value.loanname}</td>  
					     <td>${value.loanamount}</td>  
					     <td>${value.term}</td>  
					     <td>${value.mode}</td>  
					     <td>${value.roi}</td>  
					     <td>${value.emi}</td> 
					     <td>${value.approvaldate}</td>
					     <td>${value.approveuser}</td>  
					            
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tabelapproved");
             tabelapproved.innerHTML = tableData;
		} 
      } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }