function validateInputField(){
	var status = true;
    const loanName = document.getElementById("loanName");
	if (loanName.value === '') {
		var span = document.getElementById("loanNameMsg");
		span.textContent = "Loan Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const loanType = document.getElementById("loanType");
	if (loanType.value === '') {
		var span = document.getElementById("loanTypeMsg");
		span.textContent = "Loan Type  cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const emiCollection = document.getElementById("emiCollection");
	if (emiCollection.value === '') {
		var span = document.getElementById("emiCollectionMsg");
		span.style.display = "block";
		span.textContent = "Emi mode cannot be empty.";
		status = false;
	}
	const roiType = document.getElementById("roiType");
	if (roiType.value === '') {
		var span = document.getElementById("roiTypeMsg");
		span.style.display = "block";
		span.textContent = "ROI type cannot be empty.";
		status = false;
	}
	const emiType = document.getElementById("emiType");
	if (emiType.value === '') {
		var span = document.getElementById("emiTypeMsg");
		span.style.display = "block";
		span.textContent = "EMI type cannot be empty.";
		status = false;
	}
	const minAge = document.getElementById("minAge");
	if (minAge.value === '') {
		var span = document.getElementById("minAgeMsg");
		span.style.display = "block";
		span.textContent = "Min Age cannot be empty.";
		status = false;
	}
	const maxAge = document.getElementById("maxAge");
	if (maxAge.value === '') {
		var span = document.getElementById("maxAgeMsg");
		span.style.display = "block";
		span.textContent = "Max Age cannot be empty.";
		status = false;
	}
	const minAmount = document.getElementById("minAmount");
	if (minAmount.value === '') {
		var span = document.getElementById("minAmountMsg");
		span.style.display = "block";
		span.textContent = "Min Amount  cannot be empty.";
		status = false;
	}
	const maxAmount = document.getElementById("maxAmount");
	if (maxAmount.value === '') {
		var span = document.getElementById("maxAmountMsg");
		span.style.display = "block";
		span.textContent = "Max Amount  cannot be empty.";
		status = false;
	}
	const minTerm = document.getElementById("minTerm");
	if (minTerm.value === '') {
		var span = document.getElementById("minTermMsg");
		span.style.display = "block";
		span.textContent = "Min Term  cannot be empty.";
		status = false;
	}
	const maxTerm = document.getElementById("maxTerm");
	if (maxTerm.value === '') {
		var span = document.getElementById("maxTermMsg");
		span.style.display = "block";
		span.textContent = "Max Term  cannot be empty.";
		status = false;
	}
	const roi = document.getElementById("roi");
	if (roi.value === '') {
		var span = document.getElementById("roiMsg");
		span.style.display = "block";
		span.textContent = "ROI cannot be empty.";
		status = false;
	}
	const securityType = document.getElementById("securityType");
	if (securityType.value === '') {
		var span = document.getElementById("securityTypeMsg");
		span.style.display = "block";
		span.textContent = "Security cannot be empty.";
		status = false;
	}
	const processingFee = document.getElementById("processingFee");
	if (processingFee.value === '') {
		var span = document.getElementById("processingFeeMsg");
		span.style.display = "block";
		span.textContent = "Processing Fee cannot be empty.";
		status = false;
	}
	const legalAmt = document.getElementById("legalAmt");
	if (legalAmt.value === '') {
		var span = document.getElementById("legalAmtMsg");
		span.style.display = "block";
		span.textContent = "Legal Amt cannot be empty.";
		status = false;
	}
	const gst = document.getElementById("gst");
	if (gst.value === '') {
		var span = document.getElementById("gstMsg");
		span.textContent = "GST Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const insuranceAmt = document.getElementById("insuranceAmt");
	if (insuranceAmt.value === '') {
		var span = document.getElementById("insuranceAmtMsg");
		span.textContent = "Insurance Amt Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const valuerFees = document.getElementById("valuerFees");
	if (valuerFees.value === '') {
		var span = document.getElementById("valuerFeesMsg");
		span.textContent = "valuer Fees Amt Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const gracePeriodDays = document.getElementById("gracePeriodDays");
	if (gracePeriodDays.value === '') {
		var span = document.getElementById("gracePeriodDaysMsg");
		span.textContent = "Grace Period Days Fees Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const penaltyType = document.getElementById("penaltyType");
	if (penaltyType.value === '') {
		var span = document.getElementById("penaltyTypeMsg");
		span.textContent = "Penalty Type Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const penalty = document.getElementById("penalty");
	if (penalty.value === '') {
		var span = document.getElementById("penaltyMsg");
		span.style.display = "block";
		span.textContent = "Penalty cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.loanPlan.submit();
		return true;
	} else {
		return false;
	}
}

function getAllLoanMasterData() {
  $.ajax({
    type: "get",
    contentType: "application/json",
    url: 'getAllLoanMasterData',
    async: false,
    success: function (data) {
      const tableData = data.map(function (value) {
        return (
          `<tr>
            <td>${value.id}</td>
            <td>${value.loanName}</td>
            <td>${value.loanType}</td>
            <td>${value.emiCollection}</td>
          </tr>`
        );
      }).join('');
      
      const tableBody = $("#ContentPlaceHolder1_gdvDataLoan");
      tableBody.empty().append(tableData);
    },
    error: function () {
      alert("Device control failed");
    }
  });
}


function validateLoanApplciation() {
	var status = true;
	const loanDate = document.getElementById("loanDate");
	if (loanDate.value === '') {
		var span = document.getElementById("loanDateMsg");
		span.style.display = "block";
		span.textContent = "loan Date cannot be empty.";
		status = false;
	}

	const searchMemberCode = document.getElementById("searchMemberCode");
	if (searchMemberCode.value === '') {
		var span = document.getElementById("searchMemberCodeMsg");
		span.style.display = "block";
		span.textContent = "search Member Code cannot be empty.";
		status = false;
	}

	const cspName = document.getElementById("cspName");
	if (cspName.value === '') {
		var span = document.getElementById("cspNameMsg");
		span.style.display = "block";
		span.textContent = "csp Name cannot be empty.";
		status = false;
	}

	const loanPlanName = document.getElementById("loanPlanName");
	if (loanPlanName.value === '') {
		var span = document.getElementById("loanPlanNameMsg");
		span.style.display = "block";
		span.textContent = "loan Plan Name cannot be empty.";
		status = false;
	}

	const loanAmount = document.getElementById("loanAmount");
	if (loanAmount.value === '') {
		var span = document.getElementById("loanAmountMsg");
		span.style.display = "block";
		span.textContent = "loan Amount cannot be empty.";
		status = false;
	}

	const loanPurpose = document.getElementById("loanPurpose");
	if (loanPurpose.value === '') {
		var span = document.getElementById("loanPurposeMsg");
		span.style.display = "block";
		span.textContent = "loan Purpose cannot be empty.";
		status = false;
	}

	const guarantorCode = document.getElementById("guarantorCode");
	if (guarantorCode.value === '') {
		var span = document.getElementById("guarantorCodeMsg");
		span.style.display = "block";
		span.textContent = "Member code cannot be empty.";
		status = false;
	}
	
	const advisorCode = document.getElementById("advisorCode");
	if (guarantorCode.value === '') {
		var span = document.getElementById("advisorCodeMsg");
		span.style.display = "block";
		span.textContent = "Advisor/Collector Code cannot be empty.";
		status = false;
	}
	
	if (status === true) {
		document.updateLoanDetails.submit();
		return true;
	} else {
		return false;
	}
}
