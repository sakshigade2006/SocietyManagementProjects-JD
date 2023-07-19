function BranchCashTransfer()
{
	const fromBranch = document.getElementById("fromBranch");
	const toBranch = document.getElementById("toBranch");
	const amount = document.getElementById("amount");

	if (fromBranch.value === '')
	{ 
    var span = document.getElementById("fromBranchmsg"); 
    span.textContent = "Select From Branch"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (toBranch.value === '')
	{ 
    var span = document.getElementById("toBranchmsg"); 
    span.textContent = "Select To Branch"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (amount.value === '')
	{ 
    var span = document.getElementById("amountmsg"); 
    span.textContent = "Enter Amount"; 
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

//Ajax Code Starts Here
function BranchCashTransferAjax() {
    var transferDate = document.getElementById("transferDate").value;
    var fromBranch = document.getElementById("fromBranch").value;
    var toBranch = document.getElementById("toBranch").value;
    var amount = document.getElementById("amount").value;

    $.ajax({
        type: "GET",
        url: 'branchCashTransferUpdate',
        data: {
            TransferDate: transferDate,
            FromBranch: fromBranch,
            ToBranch: toBranch,
            Amount: amount
        },
        success: function(response) {
            alert(response);
        },
        error: function() {
            alert("Device control failed");
        }
    });
}

function getBranchCashTransferTableData() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'findAllBranchCashTransfer',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				var j = 1;
				const tableData = data.map(function (value) {
					return (
						      `<tr>
									<td scope="col">${value.openingDate}</td>
	                                <td scope="col">${value.name}</td>
	                                <td scope="col">${value.amount}</td>
	                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#table");
				tabelBodyShare.innerHTML = tableData;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}
 
 
 