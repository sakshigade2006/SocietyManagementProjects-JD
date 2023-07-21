function callGetAllMasterData() {
	//relativeRelation
	const select = document.getElementById("relativeRelation");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllRelativeRelationl',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				select.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//getAllMartial
	const selectmaritalStatus = document.getElementById("maritalStatus");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMartial',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				selectmaritalStatus.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//getAllState
	const selectState = document.getElementById("state");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllState',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				selectState.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//branchName
	const selectBranchName = document.getElementById("branchName");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				selectBranchName.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//nRelation
	const selectnRelation = document.getElementById("nRelation");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllRelativeRelationl',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				selectnRelation.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//Position
	const selectPosition = document.getElementById("selectPosition");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPosition',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				selectPosition.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//nomineeKycType
	const nomineeKycType = document.getElementById("nomineeKycType");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllKYC',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				nomineeKycType.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//shareAllotedfrm
	const shareAllotedfrm = document.getElementById("shareAllotedfrm");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareAllocation',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				shareAllotedfrm.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//shareAllotedfrm2
	const shareAllotedfrm2 = document.getElementById("shareAllotedfrm2");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllShareAllocation',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				shareAllotedfrm2.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//paymode
	const paymode = document.getElementById("paymode");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPaymentMaster',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.name
				paymode.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//alladvisor getAllAdvisor
	const allAdvisor = document.getElementById("collector");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllAdvisor',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.memberName
				allAdvisor.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//memberDataBranch
	const memberDataBranch2 = document.getElementById("memberDataBranch2");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.branchName
				memberDataBranch2.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//allMember
	const memberData = document.getElementById("memberData");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.memberName + '-' + value.branchName
				memberData.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//allMember branch name
	const memberDataBranch = document.getElementById("memberDataBranch");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.branchName);
				option.innerHTML = value.branchName
				memberDataBranch.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//unallotedShareReport
	const fetch = document.getElementById("unallocatedTable");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				//alert(data[i].branchName)
				const tableData = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.branchName}</td>
                                <td>${value.memberName}</td>
                                <td>${value.transferDate}</td>
                         </tr>`
					);
				}).join('');
				const tabelBody = document.querySelector("#tableBody");
				tableBody.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});

	//allMember with name
	const shareCertificate = document.getElementById("shareCertificate");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllMember',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
				//alert(value.name)
				const option = document.createElement('option')
				option.setAttribute('value', value.id);
				option.innerHTML = value.memberName + '-' + value.memberName
				shareCertificate.appendChild(option)
			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//tableBodyAdvisor
function gettableAdvisor() {
    var advisorSearchbyCode = document.getElementById("advisorSearchbyCode");
    var input = {
        "id": advisorSearchbyCode.value
    };
    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'advisorDownlineTable',
        async: false,
        success: function (data) {
            // Ensure data is an array of objects
            if (Array.isArray(data) && data.length > 0) {
				var j=1;
                // Use forEach to iterate over the array of objects
                data.forEach(function (value, index) {
                    var tableAdvisor = `<tr>
                            <td>${j++}</td>
                            <td>${value.id}</td>
                            <td>${value.memberName}</td>
                            <td>${value.position}</td>
                          </tr>`;
                    $("#tableBodyAdvisor").append(tableAdvisor);
                });
            } else {
                // Handle no data or invalid response
                alert("No data found for the provided Advisor Code.");
            }
        },
        error: function () {
            alert("Failed to fetch Advisor details.");
        }
    });
}

function getAllrd() {
	//alert('hi')
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllrd',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (var i = 0; i < data.length; i++) {
				document.getElementById("rDplanName1").innerHTML = data[i].rDPlanName;
				document.getElementById("rDid").innerHTML = data[i].id;
				document.getElementById("rDterm").innerHTML = data[i].rDTerm;
				document.getElementById("rDinterestRate").innerHTML = data[i].rDInterestRate;
				document.getElementById("rDtermType").innerHTML = data[i].rDTermType;
				document.getElementById("rDcomN").innerHTML = data[i].rDComN;
				document.getElementById("rDcomR").innerHTML = data[i].rDComR;
				document.getElementById("rDminimumAmount").innerHTML = data[i].rDMaturityAmount;
				document.getElementById("rDminimumAmount").innerHTML = data[i].eDMinimumAmount;
				document.getElementById("rDgrace").innerHTML = data[i].rDGrace;
				document.getElementById("rDlatefine").innerHTML = data[i].rDLatefine;
			}
		}
		,
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllfd() {
	//alert('hi')
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllfd',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (var i = 0; i < data.length; i++) {
				document.getElementById("fdPlanName1").innerHTML = data[i].fdPlanName;
				document.getElementById("fdPlanCode1").innerHTML = data[i].id;
				document.getElementById("fdTerm1").innerHTML = data[i].fDTerm;
				document.getElementById("fDInterestRate1").innerHTML = data[i].fDInterestRate;
				document.getElementById("fDTermType1").innerHTML = data[i].fDTermType;
				document.getElementById("fDComN1").innerHTML = data[i].fDComN;
				document.getElementById("fDMinimumAmount1").innerHTML = data[i].fDMinimumAmount;
			}
		}
		,
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllmis() {
	//alert('hi')
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllmis',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (var i = 0; i < data.length; i++) {
				document.getElementById("misPlanName1").innerHTML = data[i].mISPlanName;
				document.getElementById("misPlanCode1").innerHTML = data[i].id;
				document.getElementById("misTerm1").innerHTML = data[i].mISTerm;
				document.getElementById("mISInterestRate").innerHTML = data[i].mISInterestRate;
				document.getElementById("mISROI1").innerHTML = data[i].mISROI;
				document.getElementById("mISTermType1").innerHTML = data[i].mISTermType;
				document.getElementById("mISComN1").innerHTML = data[i].mISComN;
				document.getElementById("mISMinimumAmount1").innerHTML = data[i].mISMinimumAmount;
			}
		}
		,
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAlldd() {
	//alert('hi')
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAlldd',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (var i = 0; i < data.length; i++) {
				document.getElementById("planName1").innerHTML = data[i].ddplanName;
				document.getElementById("id").innerHTML = data[i].id;
				document.getElementById("term").innerHTML = data[i].ddterm;
				document.getElementById("interestRate").innerHTML = data[i].ddinterestRate;
				document.getElementById("termType").innerHTML = data[i].ddtermType;
				document.getElementById("comN").innerHTML = data[i].ddcomN;
				document.getElementById("comR").innerHTML = data[i].ddcomR;
				document.getElementById("anyAmountPlanIsFlexi").innerHTML = data[i].ddanyAmountPlanIsFlexi;
				document.getElementById("minimumAmount").innerHTML = data[i].ddminimumAmount;
				document.getElementById("grace").innerHTML = data[i].ddgrace;
				document.getElementById("latefine").innerHTML = data[i].ddlatefine;
			}
		}
		,
		error: function() {
			alert("Device control failed");
		}
	});
}

function searchMemberShareReport() {
	//alert('hi')
	var branchName = document.getElementById("memberDataBranch");
	var fDate = document.getElementById("fDate");
	var tDate = document.getElementById("tDate");
	var input = {
		"branchName": branchName.value,
		"fDate": fDate.value,
		"tDate": tDate.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getMemberShareReport',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (var i = 0; i < data.length; i++) {
				document.getElementById("slNo").innerHTML = data[i].id;
				document.getElementById("mumberCode").innerHTML = data[i].branchName;
				document.getElementById("memberName").innerHTML = data[i].memberName;
				document.getElementById("transferDate").innerHTML = data[i].transferDate;
				document.getElementById("transferAmount").innerHTML = data[i].transferAmount;
				document.getElementById("noOfShare").innerHTML = data[i].noOfShare;
				document.getElementById("foliono").innerHTML = data[i].foliono;
				document.getElementById("dno").innerHTML = data[i].dno;
				document.getElementById("balance").innerHTML = data[i].balance;
				document.getElementById("issueFrom").innerHTML = data[i].issueFrom;
				document.getElementById("payMode").innerHTML = data[i].paymode;
				document.getElementById("txnId").innerHTML = data[i].txnId;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getMemberById(ids) {
	//alert(ids)
	var input = {
		"id": ids
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getMember',
		asynch: false,
		success: function(data) {
			var x = Number(data.id)
			document.getElementById("memberId").value = x;
			document.getElementById("memberName").value = data.memberName;
			document.getElementById("dob").value = data.dob;
			document.getElementById("relativeName").value = data.relativeName;
			document.getElementById("relativeRelation").value = data.relativeRelation
			document.getElementById("mobileNo").value = data.phoneno;
			document.getElementById("address").value = data.address;
			document.getElementById("district").value = data.district;
			document.getElementById("state").value = data.state;
			document.getElementById("pinCode").value = data.pinCode;
			document.getElementById("occupation").value = data.occupation;
			document.getElementById("education").value = data.education;
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getByAdvisorCode() {
	var advisorSearchbyCode = document.getElementById("advisorSearchbyCode");
	var input = {
		"id": advisorSearchbyCode.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getAdvisor',
		asynch: false,
		success: function(data) {
			var x = Number(data.id)
			document.getElementById("position").value = data.position;
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function calculateAge() {
	var dob = document.getElementById("dobMember").value;
	var currentYear = "2023"; //as of now hard coding value
	var calculate = (parseInt(currentYear) - parseInt(dob));
	document.getElementById("memberAge").value = calculate;
}

function printMemberForm(memberFrm) {
	var printdata = document.getElementById(memberFrm);
	newwin = window.open("");
	newwin.document.write(printdata.outerHTML);
	newwin.print();
	newwin.close();
}

function toggleDisabledFields(){
	document.getElementById("previousShare").disabled = false;
	document.getElementById("previousShareNo").disabled = false;
	document.getElementById("faceValue").disabled = false;
	document.getElementById("sharebalance").disabled = false;
	document.getElementById("noOfShare").disabled = false;
}

function getByAdvisorColleactorCode() {
	const obj ={
		memberName : document.getElementById("collector").value
	};
	const myJSON = JSON.stringify(obj);
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: myJSON,
		url: 'getAdvisor',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++)
	        {
		        document.getElementById("position").value = data[i].position;
				document.getElementById("branchName").value = data[i].branchName;
				document.getElementById("seniorCode").value = data[i].seniorCode;
				document.getElementById("seniorPosition").value = data[i].seniorPosition;
				document.getElementById("immidiateSr").value = data[i].immidiateSr;
				document.getElementById("immidiateSrPosition").value = data[i].immidiateSrPosition;
				document.getElementById("immidiateJunior").value = data[i].immidiateJunior;
				document.getElementById("immidiateJuniorPosition").value = data[i].immidiateJuniorPosition;
				document.getElementById("memberDataBranch2").value = data[i].memberDataBranch2;
				document.getElementById("selectPosition").value = data[i].selectPosition;
				document.getElementById("newSenior").value = data[i].newSenior;
				document.getElementById("seniorName").value = data[i].seniorName;
				document.getElementById("seniorPosition1").value = data[i].seniorPosition1;		
	  }
		},
		error: function() {
			alert("Device control failed");
		}
	});
}	

function searchAdvisorDownline() {
    var advisorSearchbyCode = document.getElementById("advisorSearchbyCode");
    var input = {
        "id": advisorSearchbyCode.value 
    };
    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'advisorDownline',
        async: false,
        success: function (data) {
            if (data.length > 0) {
                var advisor = data[0]; // Get the first element from the returned array
                document.getElementById("advisorName").value = advisor.memberName;
                document.getElementById("position").value = advisor.position;
            } else {
                alert("Advisor not found!");
            }
        },
        error: function () {
            alert("Failed to fetch advisor details.");
        }
    });
}
