
function BankStatementAjax(){
 
  var accountno= document.getElementById("accountno").value; 
  var fromdate= document.getElementById("fromdate").value;
  var todate= document.getElementById("todate").value;

 $.ajax({
     type:"get",
     contentType: "application/json",
     url: 'bankstatement1',
     data:{ Accountno:accountno, Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
				const tableData = data.map(function(value){
                 return (
               		 
                     `<tr>
                         <td>${value.bank}</td> 
						 <td>${value.accountno}</td>     
					     <td>${value.date}</td>  
					     <td>${value.narration}</td>  
					     <td>${value.credit}</td>  
					     <td>${value.debit}</td>  
					     <td>${value.balance}</td>    
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }

          









