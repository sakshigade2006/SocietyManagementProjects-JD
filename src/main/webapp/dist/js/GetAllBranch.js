function GetBranchNameInTheDropDown(){
	
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllBranch',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].name +"'>" +data[i].name +"</option>";
                    }
                    $("#selectbranch").append(appenddata1);  
                    $("#selectbranchs").append(appenddata1);  
                    $("#paybranch").append(appenddata1);  
                    $("#branchName").append(appenddata1); 
                    $("#selectbranchfyz").append(appenddata1); 
                    $("#fromBranch").append(appenddata1); 
                    $("#toBranch").append(appenddata1);   
                    $("#branch").append(appenddata1);    
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function GetAccountNumberInTheDropDown(){
	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'accountNumber',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].accountNo +"'>" +data[i].accountNo +"</option>";
                    }
                    $("#dtransfer").append(appenddata1);  
                    $("#selectcrledger").append(appenddata1);  
                    $("#selectdrledger").append(appenddata1);  
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function CountryEntryAjax(){
	
	var input = {
		 selectbranch : document.getElementById("selectbranch").value,
		 fromdate : document.getElementById("fromdate").value,
		 todate : document.getElementById("todate").value,
	}
	let myJson =JSON.stringify(input);
	//alert(myJson)
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getAllRecord',
		asynch: false,
		success: function(data) {
	
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.selectbranch}</td>
				         <td>${value.txndate}</td>
				         <td>${value.selectcrledger}</td>
						 <td>${value.selectdrledger}</td>	
						 <td>${value.amount}</td>
						 <td>${value.remarks}</td>		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function JournalEntryAjax(){
	
	var input = {
		 selectbranch : document.getElementById("selectbranch").value,
		 fromdate : document.getElementById("fromdate").value,
		 todate : document.getElementById("todate").value,
	}
	let myJson =JSON.stringify(input);
	//alert(myJson)
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'getAllRecord123',
		asynch: false,
		success: function(data) {
	
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.selectbranch}</td>
				         <td>${value.txndate}</td>
				         <td>${value.selectcrledger}</td>
						 <td>${value.selectdrledger}</td>	
						 <td>${value.amount}</td>
						 <td>${value.remarks}</td>		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchByMonthNameAndCode(){
	let monthname = document.getElementById("monthname").value;
	let code = document.getElementById("code").value;
	var input = {
		"monthname":monthname,
		"code":code
	};
	const myJson = JSON.stringify(input);
	//alert(code)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'incentivepayments',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				//document.getElementById("id133").value = data[i].id;
				document.getElementById("name").value = data[i].name;
				document.getElementById("position").value = data[i].position;
				document.getElementById("selfbusiness").value = data[i].selfbusiness;
				document.getElementById("teambusiness").value = data[i].teambusiness;
				document.getElementById("totalbusiness").value = data[i].totalbusiness;
				document.getElementById("totalincentive").value = data[i].totalincentive;
				document.getElementById("tds").value = data[i].tds;
				document.getElementById("servicecharge").value = data[i].servicecharge;
				document.getElementById("allowance").value = data[i].allowance;
				document.getElementById("netpayable").value = data[i].netpayable;
				document.getElementById("paybranch").value = data[i].paybranch;
				document.getElementById("paydate").value = data[i].paydate;
				document.getElementById("paymentby").value = data[i].paymentby;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function searchByEnterPolicyNumber(){
	let policyno = document.getElementById("policyno").value;
	var input = {
		"policyno":policyno,
	};
	const myJson = JSON.stringify(input);
	//alert(policyno)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'enterPolicyNumber',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				//document.getElementById("id133").value = data[i].id;
				document.getElementById("applicantname").value = data[i].applicantName;
				document.getElementById("policydate").value = data[i].policyDate;
				document.getElementById("policyamount").value = data[i].policyAmount;
				document.getElementById("intrestamount").value = data[i].mISInterest;
				document.getElementById("schemename").value = data[i].schemeName;
				//document.getElementById("policybranch").value = data[i].;
				document.getElementById("membercode").value = data[i].searchMemberCode;
				document.getElementById("payamount").value = data[i].amount;
				document.getElementById("paybranch").value = data[i].branchName;
				document.getElementById("paydate").value = data[i].policyDate;
				document.getElementById("paymentby").value = data[i].paymode;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function getCashStatement() {
    //alert("hi");
    var input = {
        selectBranch: document.getElementById("selectbranch").value
    };
    const myJson = JSON.stringify(input);
    //alert(input.selectBranch);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/cashbook1', // Update the URL to match the correct endpoint
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                const value = data[i];
                const row = `<tr>
                                <td>${value.received}</td> 
                                <td>${value.payment}</td>  
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

function getCashStatement123() {
    //alert("hi");
    var input = {
        fromDate: document.getElementById("fromDate").value,
        toDate: document.getElementById("toDate").value
    };
    const myJson = JSON.stringify(input);
    //alert(input.fromDate);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: myJson,
        url: '/cashbook1',
        success: function (data) {
            var tableData = '';
            for (let i = 0; i < data.length; i++) {
                var j = i + 1;
                const value = data[i];
                const row = `<tr>
                                <td>${j}</td> 
                                <td>${value.selectBranch}</td> 
                                <td>${value.txnDate}</td> 
                                <td>${value.ledgerName}</td> 
                                <td>${value.credit}</td> 
                                <td>${value.debit}</td> 
                                <td>${value.accountNo}</td> 
                                <td>${value.memberCode}</td>  
                                <td>${value.section}</td>  
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


