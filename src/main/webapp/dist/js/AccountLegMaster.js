function validateFormFields()
{
	const ledgername = document.getElementById("ledgername");
	//const selectgroup = document.getElementById("selectgroup");
    var status = true;
	if (ledgername.value === '')
	{ 
    var span = document.getElementById("ledgerNameMsg"); 
    span.textContent = "Ledger name can't be empty."; 
    span.style.display = "block"; 
    status = false; 
    }
//    if (selectgroup.value === '')
//	{ 
//    var span = document.getElementById("selectgroupMsg"); 
//    span.textContent = "Group can't be empty."; 
//    span.style.display = "block"; 
//    status = false; 
//    } 
     if (status === true) 
    { 
     document.ValidateLegerMaster.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}