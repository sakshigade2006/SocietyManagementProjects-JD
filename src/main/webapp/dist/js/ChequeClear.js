//javaScript code Starts Here
function ChequeClear()
 { 
   const selectbranch= document.getElementById("selectbranch"); 
  	
   if (selectbranch.value === '') 
   { 
 	
    var span = document.getElementById("selectbranchMsg"); 
    span.textContent = "Select Branch."; 
    span.style.display = "block"; 
    status = false; 
   } 
 
   if (status === true)
     { 
     	document.form1.submit(); 
     	return true; 
    } 
    else 
    { 
    	 return false; 
    } 
 } 

//1Ajax Code Starts Here
function ChequeClearAjax1()
{
	
 var type= document.getElementById("type").value;
 var branch= document.getElementById("branch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 var chequeno= document.getElementById("chequeno").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'Chequeclearancestatus1',
     data:{Type:type, Branch:branch, Fromdate: fromdate, Todate:todate, Chequeno:chequeno},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		` <tr>
                         <td>${value.type}</td> 
						 <td>${value.branch}</td>     
					     <td>${value.txndate}</td>  
					     <td>${value.cheque}</td>      
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

function policyStatement() {
    var policyno = document.getElementById("policyno").value;
    var input = {
        "policyno": policyno
    };
	alert(policyno)
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: '/getpolicystatement',
        data: JSON.stringify(input),
        success: function (data) {
			for(let i = 0; i < data.length; i++){
              const tableData1 = data.map(function (value) {
                return (
                    `<tr>
                        <td>${value.cspname}</td>
                        <td>${value.address}</td>
                        <td>${value.advisorCode}</td>
                        <td>${value.advisorName}</td>
                        <td>${value.age}</td>
                        <td>${value.chkisSms}</td>
                        <td>${value.district}</td>
                        <td>${value.dob}</td>
                        <td>${value.jointCode}</td>
                        <td>${value.jointName}</td>
                        <td>${value.mDate}</td>
                        <td>${value.mISInterest}</td>
                        <td>${value.maturityAmount}</td>
                        <td>${value.memberName}</td>
                        <td>${value.misMode}</td>
                        <td>${value.mode}</td>
                        <td>${value.modeOfOp}</td>
                        <td>${value.nomineeAge}</td>
                        <td>${value.nomineeName}</td>
                        <td>${value.nomineeRelation}</td>
                        <td>${value.paymode}</td>
                        <td>${value.phoneno}</td>
                        <td>${value.pin}</td>
                        <td>${value.policyAmount}</td>
                        <td>${value.policyDate}</td>
                        <td>${value.relativeName}</td>
                        <td>${value.remarks}</td>
                        <td>${value.schemeName}</td>
                        <td>${value.schemeType}</td>
                        <td>${value.searchMemberCode}</td>
                        <td>${value.state}</td>
                        <td>${value.term}</td>
                        <td>${value.totalDeposit}</td>
                        <td>${value.policyno}</td>
                    </tr>`
                );
            }).join('');
            const tableBody1 = document.querySelector("#tableBody");
			tableBody1.innerHTML = tableData1;
           }
        },
        error: function () {
            alert("Failed to retrieve data");
        }
    });
}

function GetPolicyNoReportSection(){
		//alert("hi")
		$.ajax({
			type: "get",
			contentType: "application/json",
			url: 'getPolicyNoReportSection',
			asynch: false,
			success: function(data){				
				var appenddata2 = "";
					for(var i=0; i<data.length; i++){
						appenddata2 += "<option value='"+data[i].policyno+"'>"+data[i].policyno+"</option> ";
					}
					$("#policyno").append(appenddata2);
			},
			error: function(){
				alert("Device conteol failed");
			}
		});
}
          

