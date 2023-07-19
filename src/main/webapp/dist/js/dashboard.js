$(document).ready(function() {
	
	//get Wallent Amount
	$.get("getAllWalletAmount", function(data, status) {
		$('#impsBal').text(data.impsBal);
		$('#neftBal').text(data.neftBal);
	});
	
	//get member count
	$.get("getMemberCount", function(data, status) {
		$('#memberCount').text(data);
	});
	
	//get share count
	$.get("getShareCount", function(data, status) {
		$('#shareCount').text(data);
	});
	
	//get advisor count
	$.get("getAdvisorCount", function(data, status) {
		$('#advisorCount').text(data);
	});
	
	//get rd count
	$.get("getRdCount", function(data, status) {
		$('#rdCount').text(data);
	});
	
	//get Daily Deposite count
	$.get("getDailyDepositeCount", function(data, status) {
		$('#dailyDepositeCount').text(data);
	});
	
	//get Fixed Deposite count
	$.get("getFixedDepositeCount", function(data, status) {
		$('#fixedDepositeCount').text(data);
	});
	
	//get Mis count
	$.get("getMisCount", function(data, status) {
		$('#misCount').text(data);
	});
	
	//get Saving count
	$.get("getSavingCount", function(data, status) {
		$('#savingCount').text(data);
	});
	
	//get Loan count
	$.get("getLoanCount", function(data, status) {
		$('#loanCount').text(data);
	});
	
	//get Group Loan count
	$.get("getGroupCount", function(data, status) {
		$('#groupCount').text(data);
	});
	
});

function setCashBalance(){
	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getCashBalance',
            asynch: false,
            success: function(data) {  
		      for (let i = 0; i < data.length; i++) {
				 const tableData = data.map(function(value){
                        return (
                            `<tr>
                                <td>${value.id}</td>
                                <td>${value.name}</td>
                                <td></td>
                                <td></td>
                            </tr>`
                        );
                    }).join('');
                const tabelBody = document.querySelector("#ContentPlaceHolder1_gvrCash");
                    tabelBody.innerHTML = tableData;
			} 
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function setBankMaster(){
	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getBankMaster',
            asynch: false,
            success: function(data) {  
		      for (let i = 0; i < data.length; i++) {
				 const tableData = data.map(function(value){
                        return (
                            `<tr>
                                <td>${value.id}</td>
                                <td>${value.bankName}</td>
                                <td>${value.accountNo}</td>
                                <td>${value.openingBalance} &#x20b9;</td>
                            </tr>`
                        );
                    }).join('');
                const tabelBody = document.querySelector("#ContentPlaceHolder1_gdvBankdashboard");
                tabelBody.innerHTML = tableData;
			} 
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}