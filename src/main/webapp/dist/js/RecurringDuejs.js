//ByDate
function getbetdate(){

	var fdate = document.getElementById("fromdate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		
		          type:"get",
                  contentType: "application/json",
                  url: 'findByDate',
      			  data: {fromdate: fdate ,todate: tdate, selectbranch: branch },
                  asynch: false,
                  success: function(data) {
                  for (var i = 0; i < data.length; i++) {
					const tableData = data.map(function(value){
                    return (
                     `<tr>
                         <td>${value.policyno}</td>
                         <td>${value.applicantname}</td>
                         <td>${value.branchname}</td>
                         <td>${value.plancode}</td>
                         <td>${value.mobileno}</td>
                         <td>${value.txndate}</td>
                         <td>${value.paidinst}</td>
                         <td>${value.paidamount}</td>
                         <td>${value.dueinst}</td>
                         <td>${value.dueamount}</td>
                         <td>${value.advisor}</td>
                         <td>${value.advisoramount}</td>
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