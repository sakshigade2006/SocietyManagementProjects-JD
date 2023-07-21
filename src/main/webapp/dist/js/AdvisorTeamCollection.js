//Ajax Code Starts Here
function AdvisorTeamCollection()
{
 var advisorcode= document.getElementById("advisorcode").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
  document.getElementById("FromDate").innerHTML = fromdate;
  document.getElementById("ToDate").innerHTML = todate;
  document.getElementById("Advisorcode").innerHTML = advisorcode;
  
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'getAdvisorTeamCollection1',
     data:{Advisorcode: advisorcode, Fromdate :fromdate, Todate :todate},
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                    ` <tr>
                         <td>${value.teamselfsummary}</td> 
						 <td>${value.date}</td>     
					     <td>${value.policyno}</td>   
					     <td>${value.ino}</td>  
					     <td>${value.applicationname}</td> 
					     <td>${value.plancode}</td>  
					     <td>${value.advisorcode}</td>  
					     <td>${value.amount}</td>  
					     <td>${value.clearedamount}</td>  
					     <td>${value.unclearedamount}</td>  
					     <td>${value.paymode}</td>  
					     <td>${value.chqno}</td>   
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#tabelBody");
             tabelBody.innerHTML = tableData;
		} 
      },
	    error: function(){
	    	alert("Device control failed");
	    }
 });
}
 
function appendSelectMember() {
	    $.ajax({
		type: "get",
		contentType: "application/json",
		url: 'appendSelectMember',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].id + "'>" + data[i].id + "-" + data[i].memberName + "</option>";
			}
			$("#selectMember").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function fetchBySelectedMember(){
	let id = document.getElementById("selectMember").value;
	var input = {
		"id":id
	};
	const myJson = JSON.stringify(input);
	//alert(id)
	//alert(myJson)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'fetchBySelectedMember',
		async: false,
		success: function(data){
			for (var i = 0; i < data.length; i++){
				//document.getElementById("joiningDate").value = data[i].;
				document.getElementById("memberName").value = data[i].memberName;
				document.getElementById("dob").value = data[i].dob;
				document.getElementById("age").value = data[i].age;
				document.getElementById("relativeName").value = data[i].relativeName;
				document.getElementById("relativeRelation").value = data[i].relativeRelation;
				document.getElementById("mobileNo").value = data[i].phoneno;
				document.getElementById("nomineeName").value = data[i].nomineeName;
				document.getElementById("relation").value = data[i].nRelation;
				document.getElementById("branchName").value = data[i].branchName;
				document.getElementById("nomineeAge").value = data[i].nomineeAge;
				document.getElementById("address").value = data[i].address;
				document.getElementById("district").value = data[i].district;
				document.getElementById("state").value = data[i].state;
				document.getElementById("pinCode").value = data[i].pinCode;
				document.getElementById("occupation").value = data[i].occupation;
				document.getElementById("education").value = data[i].education;
				//document.getElementById("selectPosition").value = data[i].;
				document.getElementById("introducerCode").value = data[i].introMCode;
				document.getElementById("introducerName").value = data[i].introMName;
				//document.getElementById("position").value = data[i].;
				document.getElementById("feesIfAny").value = data[i].relativeRelation;
				document.getElementById("paymode").value = data[i].paymode;
				document.getElementById("remarks").value = data[i].remarks;
				
				var imgElement = document.getElementById("preview");
			    imgElement.src ="data:image/png;base64,"+data[i].image;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function selectCodeOfAdvisor() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'selectCodeOfAdvisor',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].id + "'>" + data[i].id + "-" + data[i].memberName + "</option>";
			}
			$("#id").append(appenddata1);		
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function selectCodeOfAdvisoridPosition() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'selectCodeOfAdvisor',
		asynch: false,
		success: function (data) {
			var appenddata2 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata2 += "<option value ='" + data[i].selectPosition + "'>" + data[i].selectPosition + "</option>";
			}
			$("#selectPosition").append(appenddata2);	
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function getBranchName() {
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
			$("#memberDataBranch2").append(appenddata1);
			$("#branchName").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}

function fetchBySelectedCode(){
	let id = document.getElementById("id").value;
	var input = {
		"id":id
	};
	const myJson = JSON.stringify(input);
	//alert(id)
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: myJson,
		url: 'fetchBySelectCode',
		async: false,
		success: function(data){
			for(var i=0; i<data.length; i++){
				//alert(data[i].id);
				//document.getElementById("id133").value = data[i].id;
				document.getElementById("position").value = data[i].position;
				document.getElementById("branch").value = data[i].branchName;
				document.getElementById("seniorCode").value = data[i].seniorCode;
				document.getElementById("position1").value = data[i].seniorPosition;
				document.getElementById("immidiateSr").value = data[i].immidiateSr;
				document.getElementById("srPosition").value = data[i].srPosition;
				document.getElementById("immidiateJr").value = data[i].immidiateJr;
				document.getElementById("jrPosition").value = data[i].jrPosition;
				document.getElementById("branchName").value = data[i].branchName;
				document.getElementById("selectPosition").value = data[i].selectPosition;
				document.getElementById("newSenior").value = data[i].newSenior;
				document.getElementById("seniorName").value = data[i].seniorName;
				document.getElementById("seniorPosition").value = data[i].seniorPosition;
			}
		}, 
		error: function(){
			alert("Device control failed");
		}
	});
}

function selectPosition() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'selectPosition',
		asynch: false,
		success: function (data) {
			var appenddata1 = "";
			//var jsonData1 = JSON.parse(data1.d);
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].designation + "'>" + data[i].designation +"</option>";
			}
			$("#selectPosition").append(appenddata1);
		},
		error: function () {
			alert("Device control failed");
		}
	});
}
