function investmentSearchFunction(){
	
const shareAllotedfrm = document.getElementById("branchName");
$.ajax({
	type: "get",
	contentType: "application/json",
	url: 'getBranchName',
	asynch: false,
	success: function(data) {
		data.forEach(value => {
			const option = document.createElement('option')
			option.setAttribute('value', value.branchName);
			option.innerHTML = value.branchName
			shareAllotedfrm.appendChild(option)
		})

	},
	error: function() {
		alert("Device control failed");
	}
});	
	
}

function getTableData(){
	//alert("hi")
	var obj={
		branchName : document.getElementById("branchName").value,
		fDate : document.getElementById("fDate").value,
		tDate : document.getElementById("tDate").value,
		applicantName : document.getElementById("applicantName").value,
		policyno : document.getElementById("policyno").value,
		searchMemberCode : document.getElementById("searchMemberCode").value,
		planName : document.getElementById("planName").value,
		advisorCode : document.getElementById("advisorCode").value
		  
	};
	//alert(obj)
	const myJSON = JSON.stringify(obj);
    //alert(myJSON);
     $.ajax({
	 type:"POST",
     contentType: "application/json",
     url: 'getDataByAllFieldsofInvestment',
     data:myJSON,
     asynch: false,
     success: function(data) {  
	 //alert(myJSON)
	for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                    ` <tr>
                         <td>${value.id}</td> 
						 <td>${value.cspname}</td>     
					     <td>${value.address}</td>   
					     <td>${value.advisorCode}</td>  
					     <td>${value.age}</td> 
					     <td>${value.district}</td> 
					     <td>${value.dob}</td>  
					     <td>${value.jointCode}</td>  
					     <td>${value.jointName}</td>  
					     <td>${value.mDate}</td>  
					     <td>${value.maturityAmount}</td>  
					     <td>${value.memberName}</td> 
					     
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tablesearch");
             tablesearch.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
}