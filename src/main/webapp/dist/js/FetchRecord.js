function fetchMemberData(){
 $.ajax({
     type:"get",
     contentType: "application/json",
     url: 'searchDayBook',
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++) {
			//alert(data[i].id)
			 const tableData = data.map(function(value){
                 return (
                		   		 
                     `<tr>
                         <td>${value.selectBranch}</td>
                         <td>${value.selectLedger}</td>
                         <td>${value.date}</td>
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

function getSelectedDayBook() {
    var selectbranch = document.getElementById("selectbranch").value;
    var selectledger = document.getElementById("selectledger").value;
    var fDate = document.getElementById("fDate").value;
    var tDate = document.getElementById("tDate").value;
    var input = {
        selectBranch: selectbranch,
        selectLedger: selectledger,
        fDate: fDate,
        tDate: tDate
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'searchDayBook',
        data: JSON.stringify(input),
        success: function(data) {
            var tableData = "";
            for (var i = 0; i < data.length; i++) {
                var value = data[i];
                tableData += `
                    <tr>
                        <td>${value.id}</td>
                        <td>${value.selectBranch}</td>
                        <td>${value.selectLedger}</td>
                        <td>${value.date}</td>
                    </tr>`;
            }
            $('#tableBody').html(tableData);
        },
        error: function() {
            alert("Failed to fetch data");
        }
    });
}

// Balance Sheet (Fy)
//Button 1
function getBalanceSheetFy() {
    var branchName = document.getElementById("branchName").value;
    var fromDate = document.getElementById("fromDate").value;
    var toDate = document.getElementById("toDate").value;
    var input = {
        name: branchName,
        fdate: fromDate,
        tdate: toDate
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'searchFirstButton',
        data: JSON.stringify(input),
        success: function(data) {
            var tableData = "";
            for (var i = 0; i < data.length; i++) {
                var value = data[i];
                tableData += `
                    <tr>
                        <td>${value.id}</td>
                        <td>${value.name}</td>
                        <td>${value.opening_date}</td>
                    </tr>`;
            }
            $('#tableBody').html(tableData);
        },
        error: function() {
            alert("Failed to fetch data");
        }
    });
}

//Button 2
function getBalanceSheetFy1() {
    var Branch = document.getElementById("selectbranchfyz").value;
    var Fyear = document.getElementById("fyear").value;
    var FromDate = document.getElementById("fromDate1").value;
    var ToDate = document.getElementById("toDate1").value;

    $.ajax({
        type: "GET",
        url: 'searchSecondButton',
        data: {
            Branch1: Branch,
            FromDate1: FromDate,
            ToDate1: ToDate,
            Fyear1: Fyear
        },
        success: function(data) {
            if (data.length > 0) {
                var tableData = "";
                for (var i = 0; i < data.length; i++) {
                    tableData += `
                        <tr>
                            <td>${data[i].id}</td>
                            <td>${data[i].branch}</td>
                            <td>${data[i].date}</td>
                        </tr>`;
                }
                $("#tableBody01").html(tableData);
            } else {
                $("#tableBody01").html("<tr><td colspan='3'>No data found</td></tr>");
            }
        },
        error: function() {
            alert("Failed to retrieve data");
        }
    });
}

//Report Section
//Advisor Collection or Employee Collection
function getBusinessType(){
	
	var BusinessType = document.getElementById("businessType").value;
	var AdvisorCode = document.getElementById("advisorCode").value;
	var fDate = document.getElementById("fDate").value;
	var tDate = document.getElementById("tDate").value;
              
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchBusinessType',
      					data: {BusinessType:BusinessType,AdvisorCode:AdvisorCode, FDate : fDate ,TDate : tDate},
                        asynch: false,
                   		success: function(data) {
                   		for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                 return (
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.businessType}</td>
                         <td>${value.advisorCode}</td>
                         <td>${value.date}</td>
                         
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

//Loan Not Approve Report 
function getLoanNotApprove(){
	
	var Branch = document.getElementById("branch").value;
	var fDate = document.getElementById("fdate").value;
	var tDate = document.getElementById("tdate").value;
	         
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'searchLoanNotApproveReport',
      					data: {Branch1:Branch ,FDate : fDate ,TDate : tDate},
                        asynch: false,
    
                   success: function(data) {
                   	for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                    return (	 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.date}</td>
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

//LoanEMIOutstandingReport
function getLoanEMIOutstandingReport(){
	
	var Branch = document.getElementById("branch").value;
	var Plan = document.getElementById("plan").value;
	var AdvisorCode = document.getElementById("advisorCode").value;
	var Datee = document.getElementById("datee").value;
	           
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'searchLoanEMIOutstandingReport',
      					data: {Branch1:Branch,Plan:Plan ,AdvisorCode:AdvisorCode,Datee:Datee},
                        asynch: false,
    
                   success: function(data) {    
                   	for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                 return (
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.plan}</td>
                         <td>${value.advisorCode}</td>
                         <td>${value.datee}</td>
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

//Projection Report
function getProjectionREport(){
	
	var Branch = document.getElementById("branch").value;
	var PlanName = document.getElementById("planeName").value;
	var Fdate = document.getElementById("fdate").value;
	var Tdate = document.getElementById("tdate").value;
                
	 $.ajax({
		                type:"get",
                        contentType: "application/json",
                        url: 'searchProjectionReport',
      					data: {Branch1:Branch,PlanName1:PlanName,Fdate1:Fdate,Tdate1:Tdate},
                        asynch: false,
                   		success: function(data) {
                   		for (var i = 0; i < data.length; i++) {
						const tableData = data.map(function(value){
                    return (	 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.planeName}</td>
                         <td>${value.date}</td>
                         
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

function getSelectedReceiptVoucger(){
	
	var fdate = document.getElementById("fDate").value;
	var tdate = document.getElementById("tDate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		          type:"get",
                  contentType: "application/json",
                  url: 'searchRecieveVoucher',
      			  data: {fDate: fdate, tDate: tdate, selectbranch: branch },
                  asynch: false,
                  success: function(data) {
                   	for (var i = 0; i < data.length; i++) {
							const tableData = data.map(function(value){
                 			return (
                     `<tr>
            			<td>${value.id}</td>
            			<td>${value.selectBranch}</td>
            			<td>${value.txnDate}</td>
            			<td>${value.directTransfer}</td>
            			<td>${value.selectLedger}</td>
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

function getSelectedChequeClears() {
    var input = {
        type: document.getElementById("paymentType").value,
        branch: document.getElementById("selectbranch").value,
        fdate: document.getElementById("fdate").value,
        tdate: document.getElementById("tdate").value,
        cheque: document.getElementById("chequeNo").value
    };

    const myJson = JSON.stringify(input);
    
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/searchChequeClears', // Update the URL to match the correct endpoint
        async: false, // Correct the spelling of 'async'
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                const value = data[i];
                const row = `<tr>
                                <td>${i + 1}</td>
                                <td>${value.type}</td>
                                <td>${value.branch}</td>
                                <td>${value.txndate}</td>
                                <td>${value.cheque}</td>
                            </tr>`;
                tableData += row;
            }
            const tableBody = document.querySelector("#tableBody");
            tableBody.innerHTML = tableData;
        },
        error: function () {
            alert("Failed to retrieve data");
        }
    });
}

function getMandateDeposite() {
    var input = {
        fromdate: document.getElementById("fromdate").value,
        todate: document.getElementById("todate").value
    };

    const myJson = JSON.stringify(input);
    //alert(fromdate)
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/getAllRecords', 
        async: false, 
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                const value = data[i];
                const row = `<tr>
                                <td>${value.fddeposit}</td>
                                <td>${value.misdeposit}</td>
                                <td>${value.rddeposit}</td>
                                <td>${value.savingsdeposit}</td>
                                <td>${value.savingswithdrawal}</td>
                                <td>${value.flexideposit}</td>
                                <td>${value.flexiwithdrawal}</td>
                                <td>${value.maturityprincipal}</td>
                                <td>${value.totaldeposit}</td>
                                <td>${value.totalwithdrawal}</td>
                                <td>${value.totalbalance}</td>
                                <td>${value.previousfddeposited}</td>
                                <td>${value.unencumbered}</td>
                                <td>${value.unencumberedamount}</td>
                                <td>${value.bankname}</td>
                                <td>${value.bankaddress}</td>
                                <td>${value.fdno}</td>
                                <td>${value.fdamt}</td>
                                <td>${value.maturityamt}</td>
                                <td>${value.fddate}</td>
                                <td>${value.maturitydate}</td>
                                <td>${value.paymentby}</td>
                                <td>${value.remarks}</td>
                            </tr>`;
                tableData += row;
            }
            const tableBody = document.querySelector("#tableBody");
            tableBody.innerHTML = tableData;
        },
        error: function () {
            alert("Failed to retrieve data");
        }
    });
}

function getTransferStatement() {
    var selectBranch = document.getElementById("selectbranch").value;
    var input = {
        selectbraanch: selectBranch
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'fetchAllData',
        data: JSON.stringify(input),
        success: function(data) {
            var tableData = "";
            for (var i = 0; i < data.length; i++) {
                var value = data[i];
                tableData += `
                    <tr>
                        <td>${i + 1}</td>
                        <td>${value.received}</td>
                        <td>${value.payment}</td>
                    </tr>`;
            }
            $('#tableBody').html(tableData);
        },
        error: function() {
            alert("Failed to fetch data");
        }
    });
}

function getTransferStatement123() {
    var fromdate = document.getElementById("fromdate").value;
    var todate = document.getElementById("todate").value;
    var input = {
        fromdate: fromdate,
        todate: todate
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'fetchAllData',
        data: JSON.stringify(input),
        success: function(data) {
            var tableData = "";
            for (var i = 0; i < data.length; i++) {
                var value = data[i];
                tableData += `
                    <tr>
                    			<td>${i + 1}</td>
                        		<td>${value.branchname}</td> 
                                <td>${value.txndate}</td> 
                                <td>${value.debit}</td> 
                                <td>${value.credit}</td> 
                                <td>${value.acno}</td> 
                                <td>${value.membercode}</td> 
                                <td>${value.section}</td>   
                    </tr>`;
            }
            $('#tableBody1').html(tableData);
        },
        error: function() {
            alert("Failed to fetch data");
        }
    });
}
