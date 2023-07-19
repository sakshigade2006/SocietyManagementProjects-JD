//1Ajax Code Starts Here
function MatApplicationStatusAjax()
{
	
 var branch= document.getElementById("selectbranch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;

 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'MatApplicationStatus1',
     data:{Branch:branch, Fromdate: fromdate, Todate:todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 
                	` <tr>
						 <td>${value.slno}</td>     
					     <td>${value.policyno}</td>  
					     <td>${value.applicationname}</td>  
					     <td>${value.applicationbranch}</td> 
					     <td>${value.applicationdate}</td>  
					     <td>${value.maturitydate}</td>  
					     <td>${value.appuser}</td>  
					     <td>${value.appremark}</td>  
					     <td>${value.maturityamt}</td>   
					          
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
 
 function  getBranchName1() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getBranchNameForMaturity',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#selectbranch").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}
