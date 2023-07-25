function searchIncentiveDetailsPrints() {
	//alert("Hello")
	var input = {
		invmonth: document.getElementById("invmonth").value,
		code: document.getElementById("code").value,
	}
	const myJson = JSON.stringify(input);
	//alert(myJson)fetchyear
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data: myJson,
		url: 'searchIncentiveDetailsPrint',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${j++}</td> 
						 <td>${value.invmonth}</td> 
						 <td>${value.code}</td>    	
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#shareTableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function BranchNameInIncentiveSection(){
	//alert("hi")
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			//alert("helooo")
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].name +"'>" +data[i].name + "</option>";
					}
                    $("#branchName").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchIncentiveListPrints() {
	//alert("Hello")
	var input = {
		invmonth: document.getElementById("invmonth").value,
		branchName: document.getElementById("branchName").value,
		code: document.getElementById("code").value,
	}
	const myJson = JSON.stringify(input);
	//alert(myJson)
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data: myJson,
		url: 'searchIncentiveListPrint',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${j++}</td> 
						 <td>${value.invmonth}</td>
						 <td>${value.branchName}</td> 
						 <td>${value.code}</td>    	
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#shareTableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function tableOfIncentiveMasters() {
	//alert("Hello")
	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'tableOfIncentiveMaster',
		asynch: false,
		success: function (data) {
			for (let i = 0; i < data.length; i++) {
				var j=1;
				const tableData1 = data.map(function (value) {
					return (
						`<tr>
                         <td>${j++}</td> 
						 <td>${value.invmonth}</td> 
						 <td>${value.fDate}</td> 
						 <td>${value.tDate}</td> 
						 <td>${value.remark}</td>       	
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#shareTableBody");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function () {
			alert("Device control failed");
		}
	});
}