 function MandateDepositToBank()
 {
	 const fddeposit= document.getElementById("fddeposit");
	 const misdeposit= document.getElementById("misdeposit");
	 const rddeposit= document.getElementById("rddeposit");
	 const savingsdeposit= document.getElementById("savingsdeposit");
	 const savingswithdrawal= document.getElementById("savingswithdrawal");
	 const flexideposit= document.getElementById("flexideposit");
	 const flexiwithdrawal= document.getElementById("flexiwithdrawal");
	 const maturityprincipal= document.getElementById("maturityprincipal");
	 const totaldeposit= document.getElementById("totaldeposit");
	 const totalwithdrawal= document.getElementById("totalwithdrawal");
	 const totalbalance= document.getElementById("totalbalance");
	 const previousfddeposited= document.getElementById("previousfddeposited");
	 const unencumbered= document.getElementById("unencumbered");
     const unencumberedamount= document.getElementById("unencumberedamount");
     const bankname= document.getElementById("bankname");
     const bankaddress= document.getElementById("bankaddress");
     const fdno= document.getElementById("fdno");
     const fdamt= document.getElementById("fdamt");
     const maturityamt= document.getElementById("maturityamt");
     const fddate= document.getElementById("fddate");
     const maturitydate= document.getElementById("maturitydate");
	 const paymentby= document.getElementById("paymentby");
	 const remarks= document.getElementById("remarks");
	
	if (fddeposit.value === '') 
   { 
    var span = document.getElementById("fddepositMsg"); 
    span.textContent = "FD Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (misdeposit.value === '') 
   { 
    var span = document.getElementById("misdepositMsg"); 
    span.textContent = "Mis Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   
   if (rddeposit.value === '') 
   { 
    var span = document.getElementById("rddepositMsg"); 
    span.textContent = "RD/DRD Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (savingsdeposit.value === '') 
   { 
    var span = document.getElementById("savingsdepositMsg"); 
    span.textContent = "Savings Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (savingswithdrawal.value === '') 
   { 
    var span = document.getElementById("savingswithdrawalMsg"); 
    span.textContent = "Savings Withdrawal Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (flexideposit.value === '') 
   { 
    var span = document.getElementById("flexidepositMsg"); 
    span.textContent = "Flexi Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (flexiwithdrawal.value === '') 
   { 
    var span = document.getElementById("flexiwithdrawalMsg"); 
    span.textContent = "Flexi Withdrawal Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (maturityprincipal.value === '') 
   { 
    var span = document.getElementById("maturityprincipalMsg"); 
    span.textContent = "Maturity Principal Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (totaldeposit.value === '') 
   { 
    var span = document.getElementById("totaldepositMsg"); 
    span.textContent = "Total Deposit Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (totalwithdrawal.value === '') 
   { 
    var span = document.getElementById("totalwithdrawalMsg"); 
    span.textContent = "Total Withdrawal Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (totalbalance.value === '') 
   { 
    var span = document.getElementById("totalbalanceMsg"); 
    span.textContent = "Total Balance Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (previousfddeposited.value === '') 
   { 
    var span = document.getElementById("previousfddepositedMsg"); 
    span.textContent = "Previous Fd Deposited Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (unencumbered.value === '') 
   { 
    var span = document.getElementById("unencumberedMsg"); 
    span.textContent = "Unencumbered Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (unencumberedamount.value === '') 
   { 
    var span = document.getElementById("unencumberedamountMsg"); 
    span.textContent = "Unencumbered Amount Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (bankname.value === '') 
   { 
    var span = document.getElementById("banknameMsg"); 
    span.textContent = "Bank Name Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (bankaddress.value === '') 
   { 
    var span = document.getElementById("bankaddressMsg"); 
    span.textContent = "Bank Address Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (fdno.value === '') 
   { 
    var span = document.getElementById("fdnoMsg"); 
    span.textContent = "FD No Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (fdamt.value === '') 
   { 
    var span = document.getElementById("fdamtMsg"); 
    span.textContent = "FD Amount Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (maturityamt.value === '') 
   { 
    var span = document.getElementById("maturityamtMsg"); 
    span.textContent = "Maturity Amount Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (fddate.value === '') 
   { 
    var span = document.getElementById("fddateMsg"); 
    span.textContent = "Select Fd Date"; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (maturitydate.value === '') 
   { 
    var span = document.getElementById("maturitydateMsg"); 
    span.textContent = "Select Maturity Date"; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (paymentby.value === '') 
   { 
    var span = document.getElementById("paymentbyMsg"); 
    span.textContent = "Payment Cannot be Empty."; 
    span.style.display = "block"; 
    status = false; 
   } 
   
   if (remarks.value === '') 
   { 
    var span = document.getElementById("remarksMsg"); 
    span.textContent = "Remarks Cannot be Empty."; 
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