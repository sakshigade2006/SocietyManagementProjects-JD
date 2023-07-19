//Fetching for Branch
function getemioverdue(){
	
	var branch = document.getElementById("selectbranch").value;
	var plan= document.getElementById("selectplan").value;
    var codeadv= document.getElementById("typeadvisorcode").value;    
    var tdate=  document.getElementById("tilldate").value;  
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'emiOverDue',
      					data: {selectbranch: branch ,selectplan:plan ,typeadvisorcode:codeadv , tilldate: tdate},
                        asynch: false,
                        success: function(data) {
                   	    for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                            return (
                     `<tr>
                         <td>${value.slno}</td>
                         <td>${value.loanid}</td>
                         <td>${value.membercode}</td>
                         <td>${value.membername}</td>
                         <td>${value.loandate}</td>
                         <td>${value.branchname}</td>
                         <td>${value.mobileno}</td>
                         <td>${value.loanname}</td>
                         <td>${value.loanamt}</td>
                         <td>${value.totalpaid}</td>
                         <td>${value.overdue}</td>
                         <td>${value.currentdue}</td>
                         <td>${value.totaldue}</td>
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
