/* Daily Deposit */
function MaturityMasterAjax1()
{	
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'maturityMaster11',
     asynch: false,
     success: function(data) {  
	 for (let i = 0; i < data.length; i++)
	 {
			 const tableData = data.map(function(value){
                 return (
                		 
                     	`<tr>
                        	<td>${value.dplancode}</td> 
							<td>${value.dinstfrom}</td>     
					     	<td>${value.dinstto}</td>  
					     	<td>${value.droi}</td>  
					     	<td>${value.ddeduction}</td>  
                     	</tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
		  } 
        },
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
 
/* Recurring Deposit */
function MaturityMasterAjax2()
{	
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'maturityMaster22',
     asynch: false,
     success: function(data) {  
	 for (let i = 0; i < data.length; i++)
	 {
			 const tableData = data.map(function(value){
                 return (
                     	`<tr>
                        	<td>${value.rplancode}</td> 
							<td>${value.rinstfrom}</td>     
					     	<td>${value.rinstto}</td>  
					     	<td>${value.rroi}</td>  
					     	<td>${value.rdeduction}</td>  
                     	</tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
		 } 
        },
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
 
/* Fixed Deposit */
function MaturityMasterAjax3()
{	
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'maturityMaster33',
     asynch: false,
     success: function(data) {  
	 for (let i = 0; i < data.length; i++)
	 {
			 const tableData = data.map(function(value){
                 return (
                     	`<tr>
                        	<td>${value.fplancode}</td> 
							<td>${value.fmonthfrom}</td>     
					     	<td>${value.fmonthto}</td>  
					     	<td>${value.froi}</td>  
					     	<td>${value.fdeduction}</td>  
                     	</tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
		 } 
        },
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
 
/* MIS DEPOSITE */
function MaturityMasterAjax4()
{	
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'maturityMaster44',
     asynch: false,
     success: function(data) {  
	 for (let i = 0; i < data.length; i++)
	 {
			 const tableData = data.map(function(value){
                 return (
                     	`<tr>
                        	<td>${value.mISplancode}</td> 
							<td>${value.mISmonthfrom}</td>     
					     	<td>${value.mISmonthto}</td>  
					     	<td>${value.mISROI}</td>  
					     	<td>${value.mISdeduction}</td>  
                     	</tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
		 } 
        },
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }