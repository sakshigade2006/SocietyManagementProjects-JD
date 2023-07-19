//Fetching for Branch
function getbranch(){
	var branch = document.getElementById("selectbranch").value;
	 $.ajax({
	
		                type:"get",
                        contentType: "application/json",
                        url: 'searchInfobranch',
      					data: {selectbranch: branch },
                        asynch: false,
                        success: function(data) {
                   	    for (var i = 0; i < data.length; i++) 
                   	    {
							const tableData = data.map(function(value){
                            return (
              
                     `<tr>
                         <td>${value.bccode}</td>
                         <td>${value.branchname}</td>
                         <td>${value.newbuisness}</td>
                         <td>${value.fees}</td>
                         <td>${value.renewbuisness}</td>
                         <td>${value.latefine}</td>
                     </tr>`
                 );
             }).join('');
             const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
                   }
                },
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});
}

//bydate
function getDate(){
	
	var fdate = document.getElementById("fromdate").value;
	var tdate = document.getElementById("todate").value;
	
	 $.ajax({
		
		          type:"get",
                        contentType: "application/json",
                        url: 'searchByDate',
      					data: {fromdate: fdate ,todate: tdate },
                        asynch: false,
                        success: function(data) {
                   		for (var i = 0; i < data.length; i++) 
                   		{
					
					  	const tableData = data.map(function(value){
                      	return (
                     `<tr>
                         <td>${value.bccode}</td>
                         <td>${value.branchname}</td>
                         <td>${value.newbuisness}</td>
                         <td>${value.fees}</td>
                         <td>${value.renewbuisness}</td>
                         <td>${value.latefine}</td>
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
	