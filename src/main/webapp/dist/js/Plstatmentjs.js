function getdates(){
	
	var fdate = document.getElementById("fromdate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		
		          		type:"get",
                        contentType: "application/json",
                        url: 'searchPlstatement',
      					data: {fromdate: fdate ,todate: tdate, selectbranch: branch },
                        asynch: false,
                   		success: function(data) {
                   		for (var i = 0; i < data.length; i++) {
						const tableData = data.map(function(value){
                 		return (
                			 
                     	`<tr>
            				<td>${value.id}</td>
            				<td>${value.branchname}</td>
            				<td>${value.pldate}</td>                 
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
	
//fyyearButton2	
function getdatesfy(){
	
	let fdatefy = document.getElementById("fromdatefy").value;
	let tdatefy = document.getElementById("todatefy").value;
	let branchfy = document.getElementById("selectbranchfyz").value;
	let yearfy  =document.getElementById("selectyearfyz").value;
	
	 $.ajax({
		
		          type:"get",
                  contentType: "application/json",
                  url: 'searchPlstatementfy',
      			  data: {fromdatefy: fdatefy ,todatefy: tdatefy, selectbranchfyz: branchfy ,selectyearfyz: yearfy},
                  asynch: false,
                  success: function(data) {
				  for (let i = 0; i < data.length; i++) {
				 const tableData = data.map(function(value){
                 return (
                		 
                     `<tr>
            			<td>${value.id}</td>
            			<td>${value.branchname}</td>
            			<td>${value.selectfyear}</td>
            			<td>${value.pldate}</td>                   
                    </tr>`
                 );
             }).join('');
         	 const tabelBody = document.querySelector("#tableBody2");
             tableBody2.innerHTML = tableData;
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		});
}