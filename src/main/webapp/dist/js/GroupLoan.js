function getAllGroupLoanBranch() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoanBranch',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllGroupLoanId() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoanID',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].id + "'>" + data[i].id + "</option>";
			}
			$("#id").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllGroupLoanplan() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoanplan',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].loanName + "'>" + data[i].loanName + "</option>";
			}
			$("#loanPlanName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchThroughGrouploan() {
    var input = {
        cspName: document.getElementById("branchName").value,
        fDate: document.getElementById("fDate").value,
        tDate: document.getElementById("tDate").value,
        advisorName: document.getElementById("advisorName").value,
        id: document.getElementById("id").value,
        searchMemberCode: document.getElementById("searchMemberCode").value,
        loanPlanName: document.getElementById("loanPlanName").value,
        advisorCode: document.getElementById("advisorCode").value,
    };

    const myJSON = JSON.stringify(input);

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: 'searchInTheGroupLoan',
        data: myJSON,
        async: false, // Corrected spelling of 'async'
        success: function(data) {
            var j = 1;
            const tableData = data.map(function(value) {
                return (
                    `<tr>
                        <td scope="col">${j++}</td>
                        <td scope="col">${value.memberName}</td>
                    </tr>`
                );
            }).join('');
            const searchGroup = document.querySelector("#searchGroup");
            searchGroup.innerHTML = tableData;
        },
        error: function() {
            alert("Group loan search failed");
//                        <td scope="col">${value.loanAmount}</td>
//                        <td scope="col">${value.emiAmount}</td>
//                        <td scope="col">${value.loanPurpose}</td>
//                        <td scope="col">${value.phoneno}</td>
//                        <td scope="col">${value.addressco}</td>
        }
    });
}