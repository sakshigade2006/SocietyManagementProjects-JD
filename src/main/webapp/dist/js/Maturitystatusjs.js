//by combobox and dates
 function getmaturityStatus(){
	
	var fdate = document.getElementById("fromdate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'Maturityapi',
      					data: {fromdate: fdate ,todate: tdate, selectbranch: branch },
                        asynch: false,
                        success: function(data) {
                   	    for (var i = 0; i < data.length; i++) 
                   	    {
							const tableData = data.map(function(value){
                            return (
                     `<tr>
                         <td>${value.policybranch}</td>
                         <td>${value.policyno}</td>
                         <td>${value.applicationname}</td>
                         <td>${value.mdate}</td>
                         <td>${value.applicationdate}</td>
                         <td>${value.username}</td>
                         <td>${value.bname}</td>
                         <td>${value.calculatematurity}</td>
                         <td>${value.netpay}</td>
                         <td>${value.status}</td>
                         <td>${value.duematurity}</td>
                         <td>${value.paidmaturity}</td>
                         <td>${value.payby}</td>  
                     </tr>`
                 );
             }).join('');
                const tabelBody = document.querySelector("#tableBody");
                tableBody.innerHTML = tableData;
                   }
                   } ,
           	        error: function(){
           	    	alert("Device control failed");
           	    }
		});
}