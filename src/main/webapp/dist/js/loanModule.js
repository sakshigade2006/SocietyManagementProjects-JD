function getListOfLoanId() {
	const searchLoanId = document.getElementById("searchLoanId");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLoanId',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.id
				searchLoanId.appendChild(option)
			})
		},
		error: function() {
			alert("Server not responsding");
		}
	});
}

function getByLoanId(type) {
	var searchLoanId = document.getElementById("searchLoanId1").value;
	var input = {
		"id": searchLoanId
	};

	fetch('/getByLoanAppId', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(input)
	})
		.then(function(response) {
			if (response.ok) {
				return response.json();
			} else {
				throw new Error('Server not responding...');
			}
		})
		.then(function(data) {
			try{
			if (data.id != null) {
				document.getElementById("id").value = data.id;
			}
			if (data.loanDate != null) {
				document.getElementById("loanDate").value = data.loanDate;
			}

			if (data.searchMemberCode != null) {
				document.getElementById("searchMemberCode").value = data.searchMemberCode;
			}

			if (data.relativeDetails != null) {
				document.getElementById("relativeDetails").value = data.relativeDetails;
			}

			if (data.dob != null) {
				document.getElementById("DOB").value = data.dob;
			}

			if (data.age != null) {
				document.getElementById("age").value = data.age;
			}

			if (data.phoneno != null) {
				document.getElementById("phoneno").value = data.phoneno;
			}

			if (data.smsStatus != null) {
				document.getElementById("smsStatus").value = data.smsStatus;
			}

			if (data.address != null) {
				document.getElementById("address").value = data.address;
			}

			if (data.pin != null) {
				document.getElementById("pin").value = data.pin;
			}

			if (data.cspName != null) {
				document.getElementById("cspName").value = data.cspName;
			}

			if (data.loanName != null) {
				document.getElementById("loanName").value = data.loanName;
			}

			if (data.planTerm != null) {
				document.getElementById("planTerm").value = data.planTerm;
			}

			if (data.mode != null) {
				document.getElementById("mode").value = data.mode;
			}

			if (data.loanAmount != null) {
				document.getElementById("loanAmount").value = data.loanAmount;
			}

			if (data.roiType != null) {
				document.getElementById("roiType").value = data.roiType;
			}

			if (data.emiAmount != null) {
				document.getElementById("emiAmount").value = data.emiAmount;
			}

			if (data.loanPurpose != null) {
				document.getElementById("loanPurpose").value = data.loanPurpose;
			}

			if (data.guarantorCode !== null) {
				document.getElementById("guarantorCode").value = data.guarantorCode;
			}

			if (data.guarantorName != null) {
				document.getElementById("guarantorName").value = data.guarantorName;
			}

			if (data.addressGuarantor != null) {
				document.getElementById("addressGuarantor").value = data.addressGuarantor;
			}

			if (data.pincodeGuarantor != null) {
				document.getElementById("pincodeGuarantor").value = data.pincodeGuarantor;
			}

			if (data.guarantorphone != null) {
				document.getElementById("guarantorphone").value = data.guarantorphone;
			}

			if (data.securityType != null) {
				document.getElementById("securityType").value = data.securityType;
			}

			if (data.coApplicantCode != null) {
				document.getElementById("coApplicantCode").value = data.coApplicantCode;
			}

			if (data.memberRelativesName != null) {
				document.getElementById("memberRelativesName").value = data.memberRelativesName;
			}

			if (data.addressco != null) {
				document.getElementById("addressco").value = data.addressco;
			}

			if (data.pincodeco != null) {
				document.getElementById("pincodeco").value = data.pincodeco;
			}

			if (data.phoneco != null) {
				document.getElementById("phoneco").value = data.phoneco;
			}

			if (data.securityDetails != null) {
				document.getElementById("securityDetails").value = data.securityDetails;
			}

			if (data.processingFee != null) {
				document.getElementById("processingFee").value = data.processing
			}
			if (data.processingFee != null) {
				document.getElementById("processingFee").value = data.processingFee;

			}
			if (data.advisorCode != null) {
				document.getElementById("advisorCode").value = data.advisorCode;

			}
			if (data.gst != null) {
				document.getElementById("GST").value = data.gst;

			}
			if (data.insuranceAmt != null) {
				document.getElementById("insuranceAmt").value = data.insuranceAmt;

			} if (data.advisorName != null) {
				document.getElementById("advisorName").value = data.advisorName;

			}
			/*if (data.approvalDate != null && type!='payment') {
				document.getElementById("approvalDate").value = data.approvalDate;

			}
			if (data.approvalStatus != null&& type!='payment') {
				document.getElementById("approvalStatus").value = data.approvalStatus;

			}*/
			if (type !== 'payment') {
                if (data.approvalDate != null) {
                    document.getElementById("approvalDate").value = data.approvalDate;
                }

                if (data.approvalStatus != null) {
                    document.getElementById("approvalStatus").value = data.approvalStatus;
                }
            }
        } catch (error) {
            console.error(error);
        }
		})
		.catch(function(error) {
			alert(error.message);
		});
}

function getByLoanIdRegularEmiRepayment() {
	var searchLoanId = document.getElementById("searchLoanId1");
	var input = {
		"id": searchLoanId.value
	};

	fetch('getByLoanIdRegularEmiRepayment', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(input)
	})
		.then(function(response) {
			if (response.ok) {
				return response.json();
			} else {
				throw new Error('Server not responding...');
			}
		})
		.then(function(data) {
			// Create a reference to the table
			var table = document.getElementById("loanTable");

			// Clear existing table rows
			while (table.rows.length > 1) {
				table.deleteRow(1);
			}

			// Iterate over the data and add rows to the table
			for (var key in data) {
				var row = table.insertRow();
				var fieldCell = row.insertCell(0);
				var valueCell = row.insertCell(1);
				if(fieldCell!=null){
					fieldCell.textContent = key;

				}
				if(valueCell!=null){
					valueCell.textContent = data[key];
				}
			}
		})
		.catch(function(error) {
			alert(error.message);
		});
}

function getByLoanIdIrRegularEmiRepayment() {
	var searchLoanId = document.getElementById("searchLoanId1");
	var input = {
		"id": searchLoanId.value
	};

	fetch('getByLoanIdIrregularEmiRepayment', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(input)
	})
		.then(function(response) {
			if (response.ok) {
				return response.json();
			} else {
				throw new Error('Server not responding...');
			}
		})
		.then(function(data) {
			// Create a reference to the table
			var table = document.getElementById("loanTable");

			// Clear existing table rows
			while (table.rows.length > 1) {
				table.deleteRow(1);
			}

			// Iterate over the data and add rows to the table
			for (var key in data) {
				var row = table.insertRow();
				var fieldCell = row.insertCell(0);
				var valueCell = row.insertCell(1);
				if(fieldCell!=null){
					fieldCell.textContent = key;

				}
				if(valueCell!=null){
					valueCell.textContent = data[key];
				}
			}
		})
		.catch(function(error) {
			alert("no data");
		});
}

function getRegularLoanData() {
	var searchLoanId = document.getElementById("searchLoanId1");
	var input = {
		"id": searchLoanId.value
	};

	fetch('getByLoanAppId', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify(input)
	})
		.then(function(response) {
			if (response.ok) {
				return response.json();
			} else {
				throw new Error('Server not responding...');
			}
		})
		.then(function(data) {
			if (data.id != null) {
				document.getElementById("id").value = data.id;
			}
			if (data.loanDate != null) {
				document.getElementById("loanDate").value = data.loanDate;
			}
			if (data.loanDate != null) {
				document.getElementById("cspName").value = data.cspName;
			}
			if (data.loanDate != null) {
				document.getElementById("memberRelativesName").value = data.relativeDetails;
			}
			if (data.loanDate != null) {
				document.getElementById("phoneno").value = data.phoneno;
			}
			if (data.loanDate != null) {
				document.getElementById("loanName").value = data.loanPlanName;
			}
			if (data.loanDate != null) {
				document.getElementById("planTerm").value = data.planTerm;
			}
			if (data.loanDate != null) {
				document.getElementById("loanType").value = data.loanType;
			}
			if (data.loanDate != null) {
				document.getElementById("loanAmount").value = data.loanAmount;
			}
			if (data.loanDate != null) {
				document.getElementById("loanROI").value = data.loanROI;
			}
			if (data.loanDate != null) {
				document.getElementById("roiType").value = data.roiType;
			}
			if(data.loanDate != null){
				document.getElementById("remarks").value = data.remarks;
			}
			if(data.loanDate != null){
				document.getElementById("advisorCode").value = data.advisorCode;
			}
			if(data.loanDate != null){
				document.getElementById("advisorName").value = data.advisorName;
			}
			if(data.loanDate != null){
				document.getElementById("payDate").value = data.payDate;
			}
			if(data.loanDate != null){
				document.getElementById("paymode").value = data.paymode;
			}
			if (data.loanDate != null) {
				document.getElementById("loanName").value = data.loanName;
			}
			if (data.loanDate != null) {
				document.getElementById("planTerm").value = data.planTerm;
			}
			if (loanDate != null) {
				document.getElementById("advancePaid").value = data.advancePaid;
			}
			//planTerm
			if (data.planTerm != null) {
				document.getElementById("planTerm").value = data.planTerm;
			}else{
				document.getElementById("planTerm").value = "";
			}
			if (data.loanType != null) {
				document.getElementById("loanType").value = data.loanType;
			}else{
				document.getElementById("loanType").value = "";
			}
			if (data.loanAmount != null) {
				document.getElementById("loanAmount").value = data.loanAmount;
			}else{
				document.getElementById("loanAmount").value = "";
			}
			if (data.loanROI != null) {
				document.getElementById("loanROI").value = data.loanROI;
			}else{
				document.getElementById("loanROI").value = "";
			}
			//roiType
			if (data.roiType != null) {
				document.getElementById("roiType").value = data.roiType;
			}else{
				document.getElementById("roiType").value = "";
			}
			//emiAmount
			if (data.emiAmount != null) {
				document.getElementById("emiAmount").value = data.emiAmount;
			}else{
				document.getElementById("emiAmount").value = "";
			}
			//totalInterest
			if (data.totalInterest != null) {
				document.getElementById("totalInterest").value = data.totalInterest;
			}else{
				document.getElementById("totalInterest").value = "";
			}
			//totalPrinciple
			if (data.totalPrinciple != null) {
				document.getElementById("totalPrinciple").value = data.totalPrinciple;
			}else{
				document.getElementById("totalPrinciple").value = "";
			}
			//totalPayble
			if (data.totalPayble != null) {
				document.getElementById("totalPayble").value = data.totalPayble;
			}else{
				document.getElementById("totalPayble").value = "";
			}
			//totalInterestDue
			if (data.totalInterestDue != null) {
				document.getElementById("totalInterestDue").value = data.totalInterestDue;
			}else{
				document.getElementById("totalInterestDue").value = "";
			}
			//totalPrincipleDue
			if (data.totalPrincipleDue != null) {
				document.getElementById("totalPrincipleDue").value = data.totalPrincipleDue;
			}else{
				document.getElementById("totalPrincipleDue").value = "";
			}
			//totalDueAmt
			if (data.totalDueAmt != null) {
				document.getElementById("totalDueAmt").value = data.totalDueAmt;
			}else{
				document.getElementById("totalDueAmt").value = "";
			}
			//dueDate
			if (data.dueDate != null) {
				document.getElementById("dueDate").value = data.dueDate;
			}else{
				document.getElementById("dueDate").value = "";
			}
			//cspName
			if (data.cspName != null) {
				document.getElementById("cspName").value = data.cspName;
			}else{
				document.getElementById("cspName").value = "";
			}
			//advancePaid
			if (data.advancePaid != null) {
				document.getElementById("advancePaid").value = data.advancePaid;
			}else{
				document.getElementById("advancePaid").value = "";
			}
			//paymentDate
			if (data.paymentDate != null) {
				document.getElementById("paymentDate").value = data.paymentDate;
			}else{
				document.getElementById("paymentDate").value = "";
			}
			//deductLateFine
			if (data.deductLateFine != null) {
				document.getElementById("deductLateFine").value = data.deductLateFine;
			}else{
				document.getElementById("deductLateFine").value = "";
			}
			//payableAmount
			if (data.payableAmount != null) {
				document.getElementById("payableAmount").value = data.payableAmount;
			}else{
				document.getElementById("payableAmount").value = "";
			}
			//totalPayableAmt
			if (data.totalPayableAmt != null) {
				document.getElementById("totalPayableAmt").value = data.totalPayableAmt;
			}else{
				document.getElementById("totalPayableAmt").value = "";
			}
			//paymode
			if (data.paymode != null) {
				document.getElementById("paymode").value = data.paymode;
			}else{
				document.getElementById("paymode").value = "";
			}
			//payDate
			if (data.payDate != null) {
				document.getElementById("payDate").value = data.payDate;
			}else{
				document.getElementById("payDate").value = "";
			}
			//advisorName
			if (data.advisorName != null) {
				document.getElementById("advisorName").value = data.advisorName;
			}else{
				document.getElementById("advisorName").value = "";
			}
			if (data.advisorCode != null) {
				document.getElementById("advisorCode").value = data.advisorCode;
			}else{
				document.getElementById("advisorCode").value = "";
			}
			//remarks
			if (data.remarks != null) {
				document.getElementById("remarks").value = data.remarks;
			}else{
				document.getElementById("remarks").value = "";
			}
			//
		})
		.catch(function(error) {
			alert(error.message);
		});
}

function getByNoc(){
	alert("no data")
}

function displayLoanDetailsOfRegularEMIRepaymentSelectedId() {
	
	//alert("Function is ruuning")
	var id = document.getElementById("searchLoanId1");
	var input = {
		"id": id.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'fetchRegularEMIRepayment',
		asynch: false,
		success: function(response) {
			
        var loanData = response.data.loan;
        var loanMasterData = response.data.loanMaster;
		
		document.getElementById("id").value = loanData.id;
		document.getElementById("loanDate").value = loanData.loanDate;
		document.getElementById("cspName").value = loanData.searchMemberCode;
		document.getElementById("memberRelativesName").value = loanData.relativeDetails;
		document.getElementById("phoneno").value = loanData.phoneno;
		document.getElementById("branchName").value = loanData.cspName;
		document.getElementById("loanName").value = loanData.loanPlanName;
		document.getElementById("planTerm").value = loanData.planTerm;
		document.getElementById("loanType").value = loanData.mode;
		document.getElementById("loanAmount").value = loanData.loanAmount;
		document.getElementById("loanROI").value = loanData.loanROI;
		document.getElementById("roiType").value = loanData.roiType;
		document.getElementById("emiAmount").value = loanData.emiAmount;
//		document.getElementById("totalInterest").value = loanData.loanDate;
//		document.getElementById("totalPrinciple").value = loanData.loanDate;
//		document.getElementById("totalPayble").value = loanData.loanDate;
		

        //document.getElementById("branchName").value = loanMasterData.branchName;
        //document.getElementById("payDate").value = loanData.payDate;
        //document.getElementById("emiAmount").value = loanMasterData.emiAmount;
        //document.getElementById("loanAmount").value = loanMasterData.loanAmount;
        document.getElementById("paymode").value = loanData.paymode;
        document.getElementById("advisorCode").value = loanMasterData.advisorCode;
        document.getElementById("advisorName").value = loanMasterData.advisorName;
        document.getElementById("remarks").value = loanData.remarks;
//        document.getElementById("totalInterestDue").value = loanData.emiAmount;
//        document.getElementById("totalPrincipleDue").value = loanData.emiAmount;
//        document.getElementById("totalDueAmt").value = loanData.emiAmount;
//        document.getElementById("dueDate").value = loanData.emiAmount;
//        document.getElementById("cspName").value = loanData.emiAmount;
//        document.getElementById("advancePaid").value = loanData.emiAmount;
//        document.getElementById("paymentDate").value = loanData.emiAmount;
//        document.getElementById("deductLateFine").value = loanData.emiAmount;
//        document.getElementById("payableAmount").value = loanData.emiAmount;
//        document.getElementById("totalPayableAmt").value = loanData.emiAmount;


		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchNormalLoanDocument() {
  let id = document.getElementById("searchLoanId1").value;
  let printType = document.getElementById("printType").value;
  
  var input = {
    "id": id,
    "printType": printType
  };
  
  const myJson = JSON.stringify(input);
  
  $.ajax({
    type: "POST",
    contentType: "application/json",
    data: myJson,
    url: '/searchNormalLoanDocument',
    success: function(data) {
      if (data) {
        document.getElementById("loanDate").value = data.loanDate;
        document.getElementById("loanName").value = data.searchMemberCode;
        document.getElementById("memberRelativesName").value = data.relativeDetails;
        document.getElementById("phoneno").value = data.phoneno;
        document.getElementById("loanPlanName").value = data.loanPlanName;
        document.getElementById("planTerm").value = data.planTerm;
        document.getElementById("loanMode").value = data.mode;
        document.getElementById("loanAmount").value = data.loanAmount;
        document.getElementById("ROI").value = data.loanROI;
        document.getElementById("roiType").value = data.roiType;
        document.getElementById("emiAmount").value = data.emiAmount;
      } else {
        alert("No data found");
      }
    },
    error: function() {
      alert("Failed to retrieve loan data");
    }
  });
}


function LoanNOCTable() {
    var searchLoanId = document.getElementById("searchLoanId1").value;

    var requestData = {
        id: searchLoanId
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'searchNormalLoanDocument',
        data: JSON.stringify(requestData),
        success: function(data) {
            var tableData = '';
            if (data != null) {
                tableData += `
                    <tr>
                        <td>${data.id}</td>
                        <td>${data.loanPlanName}</td>
                        <td>${data.loanType}</td>
                        <td>${data.loanPurpose}</td>
                        <td>${data.guarantorName}</td>
                        <td>${data.branchname}</td>
                        <td>${data.phoneno}</td>
                        <td>${data.address}</td>
                    </tr>`;
            } else {
                tableData += '<tr><td colspan="8">No data found</td></tr>';
            }

            var tableBody = document.querySelector("#loanNOC");
            tableBody.innerHTML = tableData;
        },
        error: function() {
            alert("Failed to fetch loan data");
        }
    });
}

function searchLoanDataInTable() {
	var branchnameElement = document.getElementById("branchname");
    var branchname;

    if (branchnameElement.tagName === "SELECT") {
        // For <select> element, retrieve the selected value
        branchname = branchnameElement.options[branchnameElement.selectedIndex].text;
    } else {
        // For <input> element, retrieve the input value directly
        branchname = branchnameElement.value;
    }

    //alert("Branch Name: " + branchname);
    var input = {
        //branchname: document.getElementById("branchname").value,
        branchname: branchname,
        fDate: document.getElementById("fDate").value,
        tDate: document.getElementById("tDate").value,
        memberRelativesName: document.getElementById("memberRelativesName").value,
        id: parseInt(document.getElementById("id").value),
        searchMemberCode: document.getElementById("searchMemberCode").value,
        loanPurpose: document.getElementById("loanPurpose").value,
        advisorCode: document.getElementById("advisorCode").value,
    };
    //alert("Branch Name: " + branchname);
    $.ajax({
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'searchLoanDataInTable',
        async: false,
        success: function (data) {
            const tableData1 = data.map(function (value) {
                return (
                    `<tr>
                         <td>${value.advisorName}</td> 
                         <td>${value.dob}</td>   
                         <td>${value.age}</td>  
                         <td>${value.phoneno}</td>  
                         <td>${value.address}</td>  
                         <td>${value.loanPlanName}</td>    
                         <td>${value.loanDate}</td>
                         <td>${value.loanAmount}</td>
                         <td>${value.loanPurpose}</td>  		
                     </tr>`
                );
            }).join('');
            const tableBody1 = document.querySelector("#tableBody");
            tableBody1.innerHTML = tableData1;
        },
        error: function () {
            alert("Error fetching loan data.");
        }
    });
}

// Helper function to format the loanDate value
function formatDate(dateValue) {
    var date = new Date(dateValue);
    var year = date.getFullYear();
    var month = ("0" + (date.getMonth() + 1)).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);
    return year + "-" + month + "-" + day;
}
