//by combobox and dates 
function getmaturityPayment(){
	
	var fdate = document.getElementById("fromdate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'maturityPaymentapi',
      					data: {fromdate: fdate ,todate: tdate, selectbranch: branch },
                        asynch: false,
                        success: function(data) {
	  	                for (var i = 0; i < data.length; i++) {
						const tableData = data.map(function(value){
                 return ( 
                     `<tr>
                         <td>${value.slno}</td>
                         <td>${value.policyno}</td>
                         <td>${value.applicantname}</td>
                         <td>${value.paybranch}</td>
                         <td>${value.paydate}</td>
                         <td>${value.approvadate}</td>
                         <td>${value.amount}</td>
                         <td>${value.principal}</td>
                         <td>${value.intrest}</td>
                         <td>${value.paymode}</td>
                         <td>${value.sbaccount}</td>
                         <td>${value.payremark}</td>
                         
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

function  getBranchName3() {
	
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