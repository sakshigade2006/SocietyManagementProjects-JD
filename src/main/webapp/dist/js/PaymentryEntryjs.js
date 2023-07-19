function getpayEntry(){
	
	var fdate = document.getElementById("fDate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		          type:"get",
                        contentType: "application/json",
                        url: 'searchPaymentEntry',
      					data: {fDate: fdate ,todate: tdate, selectbranch: branch },
                        asynch: false,
                   success: function(data) {
                   	for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                 			return (
                     `<tr>
            			<td>${value.id}</td>
            			<td>${value.selectbranch}</td>
            			<td>${value.txndate}</td>
            			<td>${value.dtransfer}</td>
            			<td>${value.selectledger}</td>
            			<td>${value.amount}</td>
            			<td>${value.narration}</td> 
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

function GetLedgerMasterInTheDropDown(){
			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'ledgerMaster',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].ledgername +"'>" +data[i].ledgername +"</option>";
                    }
                    $("#selectledger").append(appenddata1);  
                    $("#selectcrledger").append(appenddata1);  
                    $("#selectdrledger").append(appenddata1);  
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function getLedgerReport() {
    //alert("hi");
    var input = {
        selectledger: document.getElementById("selectledger").value,
        fromdate: document.getElementById("fromdate").value,
        todate: document.getElementById("todate").value
    };
    const myJson = JSON.stringify(input);
    //alert(input.selectledger);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/getAllLedgerReport', // Update the URL to match the correct endpoint
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                const value = data[i];
                const row = `<tr>
                                <td>${value.date}</td> 
                                <td>${value.receiptno}</td>
                                <td>${value.narration}</td> 
                                <td>${value.code}</td>
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