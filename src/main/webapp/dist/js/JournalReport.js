//javaScript code Starts Here
function JournalReport()
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

function getJournalReport(){
    //alert("hi");
    var input = {
        selectbranch: document.getElementById("selectbranch").value,
        fromdate: document.getElementById("fromdate").value,
        todate: document.getElementById("todate").value
    };
    const myJson = JSON.stringify(input);
    //alert(input.selectledger);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/journalReport1', // Update the URL to match the correct endpoint
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                const value = data[i];
                const row = `<tr>
                                <td>${value.receiptno}</td>
                                <td>${value.date}</td> 
                                <td>${value.narration}</td> 
                                <td>${value.debit}</td> 
                                <td>${value.credit}</td>  
                            </tr>`;
                tableData += row;
            }
            const tableBody = document.querySelector("#tableBody1");
            tableBody.innerHTML = tableData;
        },
        error: function () {
            alert("Failed to retrieve data");
        }
    });
}
