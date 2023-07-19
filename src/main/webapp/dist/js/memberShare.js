//Data Fetch in DropDown               
function dropDownBranchCode() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchDropdownMemerShare',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value='" + data[i].branchName + "'>" + data[i].branchName + "</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Search Data By Branch Name & Date	
function getMemberShareSearch() {
	//alert("Hello")
	var input = {
		branchName: document.getElementById("branchName").value,
		fDate: document.getElementById("fDate").value,
		tDate: document.getElementById("tDate").value,
	}
	const myJson = JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data: myJson,
		url: 'memberShareSearch',
		asynch: false,
		success: function (data) {
			//alert(data.branchName)
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName)
				//var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${value.id}</td> 
						 <td>${value.mumberCode}</td>     
					     <td>${value.memberName}</td>  
					     <td>${value.transferDate}</td>
					     <td>${value.enterShareAmount}</td>
					     <td>${value.noOfShared}</td> 
					     <td>${value.folioNo}</td>  
					     <td>${value.dLNo}</td>  
					     <td>${value.sharebalance}</td>    
                         <td>${value.issuefrom}</td>
                         <td>${value.paymode}</td>
                         <td>${value.txnid}</td>		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Custom Js Code shifted to memberShare
function getShareTableData() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareTransferData',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				var j = 1;
				const tableData = data.map(function (value) {
					return (
						      ` <tr>
									<td scope="col">${j++}</td>
	                                <td scope="col">${value.branchName}</td>
	                                <td scope="col">${value.memberName}</td>
	                                <td scope="col">${value.previousNoOfShared} - ${value.sharebalance}</td>
	                                <td scope="col">${value.certificateNo}</td>
	                                 <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-1</a></td>
	                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#shareTableBody");
				tabelBodyShare.innerHTML = tableData;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//get The Value In sahre Transfer In The DropDown
function getTheValueInsahreTransferInTheDropDown() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareTransferData',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].id + "'>" + data[i].id + "-" + data[i].memberName + "</option>";
			}
			$("#memberData").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	//Branch Master         
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareTransferData',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].memberName + "'>" + data[i].memberName + "</option>";
			}
			$("#shareAllotedfrm2").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPaymentMaster',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#paymode").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//get the value in dropdown of share Certificate
function getthevalueindropdownofshareCertificate() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'fetchinsharecertificate',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].id + "'>" + data[i].id + "-"+data[i].memberName+"</option>";
			}
			$("#id").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Save OPeration in Share Transfer
function saveOPerationinShareTransfer() {
	var memberData = document.getElementById("memberData").value;
	var memberName = document.getElementById("memberName");
	var registrationDate = document.getElementById("registrationDate");
	var previousBalance = document.getElementById("previousBalance");
	var previousNoOfShared = document.getElementById("previousNoOfShared");
	//var faceValue = document.getElementById("faceValue");
	var branchName = document.getElementById("branchName");
	var transferDate = document.getElementById("transferDate");
	var shareAllotedfrm = document.getElementById("shareAllotedfrm2");
	var sharebalance = document.getElementById("sharebalance");
	var transferAmount = document.getElementById("transferAmount");
	var noOfShared = document.getElementById("noOfShared");
	var paymode = document.getElementById("paymode");
	var remarks = document.getElementById("remarks");

	var input = {
		"id": memberData,
		"memberName": memberName.value,
		"registrationDate": registrationDate.value,
		"previousBalance": previousBalance.value,
		"previousNoOfShared": previousNoOfShared.value,
		//"faceValue": faceValue.value,
		"branchName": branchName.value,
		"transferDate": transferDate.value,
		"shareAllotedfrm": shareAllotedfrm.value,
		"sharebalance": sharebalance.value,
		"transferAmount": transferAmount.value,
		"noOfShared": noOfShared.value,
		"paymode": paymode.value,
		"remarks": remarks.value
	}

	var myJson = JSON.stringify(input);

		//alert(myJson);
		//console.log(myJson);

	if (!memberData) {
		alert("Plz Select search By Code");
	} else {
		$.ajax({
			type: "post",
			contentType: "application/json",
			data: myJson,
			url: 'updateShareTranfer',
			asynch: false,
			success: function (data) {
				alert("Data Updated SucessFully!!!!!!!!");
				window.location.href = "shareIssue";
			},
			error: function () {
				alert("Device control failed");
			}
		});
	}
}

function callback() {
	var memberData = document.getElementById("memberData");
	//var branchName = document.getElementById("branchName");
	var input = {
		"id": memberData.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getShareTransferDataByID',
		asynch: false,
		success: function (data) {
			for (var i = 0; i < data.length; i++) {
				document.getElementById("id").value = data[i].id;
				document.getElementById("memberName").value = data[i].memberName;
				document.getElementById("registrationDate").value = data[i].registrationDate;
				document.getElementById("previousBalance").value = data[i].previousBalance;
				document.getElementById("previousNoOfShared").value = data[i].previousNoOfShared;
				//document.getElementById("faceValue").value = data[i].faceValue;
				document.getElementById("branchName").value = data[i].branchName;
				document.getElementById("transferDate").value = data[i].transferDate;
				document.getElementById("shareAllotedfrm2").value = data[i].shareAllotedfrm;
				document.getElementById("sharebalance").value = data[i].sharebalance;
				document.getElementById("transferAmount").value = data[i].transferAmount;
				document.getElementById("noOfShared").value = data[i].noOfShared;
				document.getElementById("paymode").value = data[i].paymode;
				document.getElementById("remarks").value = data[i].remarks;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function toggleDisabledFields() {
	document.getElementById("previousShare").disabled = false;
	document.getElementById("previousShareNo").disabled = false;
	document.getElementById("faceValue").disabled = false;
	document.getElementById("sharebalance").disabled = false;
	document.getElementById("noOfShare").disabled = false;
}

//Fetch Data in unAlloted Share
function fetchDatainunAllotedShare() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName)
				const tableData = data.map(function (value) {
					return (
						  `<tr>
                                <td>${value.id}</td>
                                <td>${value.memberName}</td>
                                <td>${value.transferDate}</td>
                            </tr>`
					);
				}).join('');
				const tabelBody = document.querySelector("#tableBody");
				tableBody.innerHTML = tableData;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function getShareCertificate() {
	var id = document.getElementById("id").value;
		$.ajax({
			type: "get",
			contentType: "application/json",
			data: { id:id},
			url: 'fetchsharecerificatebyID',
			asynch: false,
			success: function (data) {
				for (let i = 0; i < 1; i++) {
					var j = 1;
					const tableData1 = data.map(function (value) {
						return (
							`<tr>
                           		<td>${j++}</td>
                                <td>${value.branchName}</td>
                                <td>${value.memberName}</td>
                                <td>${value.sharebalance}</td>
                                 <td>${value.noOfShared}</td>
                                 <td>${value.certificateNo}</td>
                                <td scope="col"><a href="downloadCerificate?id=${value.id}">SH-1</a></td>
                            </tr>`
						);
					}).join('');
					const tableBodyShareCertificate = document.querySelector("#tableBodyShareCertificate");
					tableBodyShareCertificate.innerHTML = tableData1;
				}
			},
			error: function () {
				alert("Device control failed");
			}
		});
}

//Fetch Data in DNo Generate Of Director
function fetchDatainDNoGenerateOfDirector() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'FetchTheDataOfDirectorMaster',
		asynch: false,
		success: function (data) {
			var appenddata2 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata2 += "<option value ='" + data[i].directorName + "'>" + data[i].directorName + "</option>";
			}
			$("#memberData").append(appenddata2);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

//Fetch Data in DNo Generate Of Director in Table
function fetchDatainDNoGenerateOfDirectorinTable() {
	var memberData = document.getElementById("memberData").value;
	var input = {
		"directorName": memberData,
	}
	var myJson = JSON.stringify(input);
	if (!memberData) {
		alert("Plz Select search By Code");
	} else {
		$.ajax({
			type: "post",
			contentType: "application/json",
			url: 'FetchTheDataOfDirectorMasterINTheTable',
			data: myJson,
			asynch: false,
			success: function (data) {
				for (let i = 0; i < data.length; i++) {
					//alert(data[i].branchName)
					const tableData = data.map(function (value) {
						return (
							`<tr>
						        <td>${value.id}</td>
                                <td>${value.directorName}</td>
                                <td>${value.appointmentDate}</td>
                                <td>${value.noOfShare}</td>
                                <td>${value.shareAmount}</td>
                            </tr>`
						);
					}).join('');
					const tabelBody = document.querySelector("#tableBody");
					tableBody.innerHTML = tableData;
				}
			},
			error: function () {
				alert("Device control failed");
			}
		});

	}
}







