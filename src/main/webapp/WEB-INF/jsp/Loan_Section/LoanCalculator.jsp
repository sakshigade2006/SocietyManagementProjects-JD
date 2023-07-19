<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Dk/Admin/LoanCalculator.aspx EDB D 09:27:09 GMT -->
<!-----DKB------>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-----DKB------>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>EQFI NIDHI LIMITED</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css" />
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
<!-- daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="plugins/iCheck/all.css" />
<!-- Select2 -->
<link rel="stylesheet"
	href="bower_components/select2/dist/css/select2.min.css" />
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="dist/css/dashboard.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.html" />
<link rel="stylesheet" href="dist/css/lightbox.min.css" />
<link rel="stylesheet" href="dist/css/qr.css" />
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
<style type="text/css">
th {
	padding-right: 50px;
}
</style>

<script type="text/javascript">
        function isNumberOnlyKey(txt, evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Allow Only Numbers");
                return false;
            }
        }
 
        function isNumberKey(txt, evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode == 46) {
                //Check if the text already contains the . character
                if (txt.value.indexOf('.') === -1) {
                    return true;
                } else {
                    return false;
                }
            } else {
                if (charCode > 31
        && (charCode < 48 || charCode > 57)) {
                    alert("Allow Only Numbers & Decimal");
                    return false;
                }
            }
            return true;
        }
        
        function calculation(){
        	var rnd = function(n) {
          	return Math.round(n * 100) / 100; // round to 2 digits
          };
        	//console.log("The button was clicked.");
          //var principal = document.getElementById('principal').value;
          //alert("Called");
          var roiType =document.getElementById('ContentPlaceHolder1_ddlRoiType').value;
          var principal = Number(document.getElementById('ContentPlaceHolder1_txtLoanAmount').value);
		  var principal1 = principal;
		  var principal123 = principal;
          var interest = Number(document.getElementById('ContentPlaceHolder1_txtROI').value);
          var months = Number(document.getElementById('ContentPlaceHolder1_txtTerm').value);
          //console.log('principal = ', principal);
          //console.log('interest = ', interest);
          //console.log('months = ', months);
          
		  var interestInMonth = rnd(interest/12);
		  var tensureInTheMonth = rnd(months*12);

		  //For the Rule of 78
		  var tensureInTheMonth1 = tensureInTheMonth ;
          var tabledata = '';
          var m;
		  var i;
          var balance = principal;
          var totalinterest = 0;
          var totalPrincipal=0;
          var totalPrincipalPlusInterest=0;
		  var openingPrincipal =0;
		  var sum = 0;
		  var sum2 = 0;

		  if(roiType=="Rule78"){

			for (  m = 1; m <= tensureInTheMonth1; m++){
				sum += m;

				var installment123 = rnd(principal1 * (interestInMonth/100.00 + interestInMonth/100.00 / (Math.pow(1+interestInMonth/100.00, tensureInTheMonth) -1 )));

		        var FindinterestComponent = rnd(principal123*interestInMonth/100.00);

				sum2 += FindinterestComponent;

		        var principalComponent123 = rnd(installment123-FindinterestComponent);

				principal123 =  rnd(principal123-principalComponent123);

				//console.log("Interest Component "+FindinterestComponent);
			}

			//console.log("installment123 "+rnd(installment123));
		    for (  m = tensureInTheMonth1; m > 0; m--){
			
			// Rule of 78
			// console.log("Sum "+sum);
			// console.log("Moth "+m);
			
			var installment = rnd(installment123);
			var interest = rnd(sum2);

			//Int
			var interestOfRule78 = m/sum;

			var interestComponent = rnd(interest*interestOfRule78);

     		var principalComponent = rnd(installment-interestComponent);

            var closingPrincipal = rnd(principal-principalComponent);

			var row = '<tr>';
            row += '<td>' + m + '</td>';
            row += '<td>' + principal + '</td>';    
            row += '<td>' + installment + '</td>';    
            row += '<td>' + interestComponent+ ' </td>';   
            row += '<td>' + principalComponent + '</td>';  
			row += '<td>' +  Math.round(closingPrincipal) + '</td>';  
            row += '</tr>';
            
			principal =  rnd(principal-principalComponent);
			
            tabledata += row;
		  }
		}

        for (m = 1; m <= tensureInTheMonth; m++) {
	
		if(roiType=="EQ"){
		// Equal Principal 

		var principalComponent = rnd(principal1/tensureInTheMonth);

		var interestComponent = rnd(principal*interestInMonth/100.00);
		
		var installment = rnd(interestComponent+principalComponent);

		var closingPrincipal = rnd(principal-principalComponent);

		var row = '<tr>';
            row += '<td>' + m + '</td>';
            row += '<td>' + principal + ' </td>';    
            row += '<td>' + installment + ' </td>';    
            row += '<td>' + interestComponent+ ' </td>';   
            row += '<td>' + principalComponent + '</td>';  
			row += '<td>' +  Math.round(closingPrincipal) + '</td>';  
            row += '</tr>';
            
			principal =  rnd(principal-principalComponent);
			
            tabledata += row;

			}else if(roiType=="EMI"){	
			//EMI

		var installment = rnd(principal1 * (interestInMonth/100.00 + interestInMonth/100.00 / (Math.pow(1+interestInMonth/100.00, tensureInTheMonth) -1 )));

		var interestComponent = rnd(principal*interestInMonth/100.00);

		var principalComponent = rnd(installment-interestComponent);

		var closingPrincipal = rnd(principal-principalComponent);

		var row = '<tr>';
            row += '<td>' + m + '</td>';
            row += '<td>' + principal + ' </td>';    
            row += '<td>' + installment + ' </td>';    
            row += '<td>' + interestComponent+ ' </td>';   
            row += '<td>' + principalComponent + '</td>';  
			row += '<td>' +  Math.round(closingPrincipal) + '</td>';  
            row += '</tr>';
            
			principal =  rnd(principal-principalComponent);
			
            tabledata += row;
		}

            // totalPrincipal=Math.round(totalPrincipal)+Math.round(toprincipal);
            // totalPrincipalPlusInterest=Math.round(totalPrincipalPlusInterest)+Math.round(principalPlusInterest);
            document.getElementById('tbl_result').className = 'show';
          }
        	// grab the data or send the html data to the #tbl_body
        	document.getElementById('tbl_body').innerHTML = tabledata;
        // 	document.getElementById('totalPrincipal').innerHTML = totalPrincipal;
        // 	document.getElementById('totalPrincipalPlusInterest').innerHTML = totalPrincipalPlusInterest;
        //  console.log("Total interest is", totalinterest);
          
          return false; // suppress default function
        }
        document.getElementById('ContentPlaceHolder1_btnCalculate').onclick = handler;

        //Calculation Part Ends
</script>

</head>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="LoanCalculator"
		onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="/wEPDwUJNDc1MTA5NTU4D2QWAmYPZBYEAgEPZBYCAgMPZBYCZg8WAh4EVGV4dAUSRVFGSSBOSURISSBMSU1JVEVEZAIDD2QWHgIBDxYCHgdWaXNpYmxlZ2QCAw8WAh8BZ2QCBQ8WAh8BZ2QCBw8WAh8BZ2QCCQ8WAh8ABRFNYWluIE9mZmljZSAtIDAwMWQCCw8WAh8ABRQwMS8wOC8yMDIyIC0gMTA6MjBBTWQCDQ8WAh8ABRMwMS8wOC8yMDIyIC0gMjo1MFBNZAIRDw8WAh4ISW1hZ2VVcmwFGX4vQWRtaW4vZGlzdC9pbWcvVXNlci5wbmdkZAITDxYCHwAFBWFkbWluZAIVDw8WAh8CBRl+L0FkbWluL2Rpc3QvaW1nL1VzZXIucG5nZGQCFw8WAh8ABQVhZG1pbmQCHQ8WAh8ABQRFUUZJZAIfDxYCHgtfIUl0ZW1Db3VudAISFiRmD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OTWVtYmVyIFNlY3Rpb25kAgEPFgIfAwIFFgpmD2QWAmYPFQIOQWRkTWVtYmVyLmFzcHgKQWRkIE1lbWJlcmQCAQ9kFgJmDxUCEUFkZE1lbWJlcktZQy5hc3B4DkFkZCBNZW1iZXIgS1lDZAICD2QWAmYPFQIVTWVtYmVyQWxsRGV0YWlscy5hc3B4Dk1lbWJlciBTdW1tYXJ5ZAIDD2QWAmYPFQIUTWVtYmVyRGV0YWlsUnB0LmFzcHgNTWVtYmVyIFJlcG9ydGQCBA9kFgJmDxUCEVNlYXJjaE1lbWJlci5hc3B4DVNlYXJjaCBNZW1iZXJkAgEPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby00LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPgxNZW1iZXIgU2hhcmVkAgEPFgIfAwIFFgpmD2QWAmYPFQIeU2hhcmVJc3N1ZS5hc3B4P2lzbW9kaWZ5PWZhbHNlDlNoYXJlIFRyYW5zZmVyZAIBD2QWAmYPFQIZVW5hbGxvdGVkU2hhcmVSZXBvcnQuYXNweBJVbi1hbGxvdHRlZCBTaGFyZXNkAgIPZBYCZg8VAhVTaGFyZUNlcnRpZmljYXRlLmFzcHgRU2hhcmUgQ2VydGlmaWNhdGVkAgMPZBYCZg8VAhZNZW1iZXJTaGFyZVJlcG9ydC5hc3B4DFNoYXJlIFJlcG9ydGQCBA9kFgJmDxUCEEROT0dlbmVyYXRlLmFzcHgPRE5PIFJlLUdlbmVyYXRlZAICD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4RQ29sbGVjdG9yL0Fkdmlzb3JkAgEPFgIfAwIGFgxmD2QWAmYPFQIPQWRkQWR2aXNvci5hc3B4FUFkZCBDb2xsZWN0b3IvQWR2aXNvcmQCAQ9kFgJmDxUCEEFkdmlzb3JUcmVlLmFzcHgWQ29sbGVjdG9yL0Fkdmlzb3IgVHJlZWQCAg9kFgJmDxUCFEFkdmlzb3JEb3dubGluZS5hc3B4GkNvbGxlY3Rvci9BZHZpc29yIERvd25saW5lZAIDD2QWAmYPFQIXQ29sbGVjdG9yUHJvbW90aW9uLmFzcHgbQ29sbGVjdG9yL0Fkdmlzb3IgUHJvbW90aW9uZAIED2QWAmYPFQITSURDYXJkUHJpbnRpbmcuYXNweBhDb2xsZWN0b3IvQWR2aXNvciBJLUNhcmRkAgUPZBYCZg8VAhJBZHZpc29yU2VhcmNoLmFzcHgYQ29sbGVjdG9yL0Fkdmlzb3IgU2VhcmNoZAIDD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4QRW1wbG95ZWUgU2VjdGlvbmQCAQ8WAh8DAgUWCmYPZBYCZg8VAhZEZXNpZ25hdGlvbk1hc3Rlci5hc3B4D0FkZCBEZXNpZ25hdGlvbmQCAQ9kFgJmDxUCFURlcGFydG1lbnRNYXN0ZXIuYXNweA5BZGQgRGVwYXJ0bWVudGQCAg9kFgJmDxUCEEFkZEVtcGxveWVlLmFzcHgMQWRkIEVtcGxveWVlZAIDD2QWAmYPFQIbRW1wbG95ZWVJRENhcmRQcmludGluZy5hc3B4D0VtcGxveWVlIEktQ2FyZGQCBA9kFgJmDxUCE1NlYXJjaEVtcGxveWVlLmFzcHgPU2VhcmNoIEVtcGxveWVlZAIED2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNi5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+EkludmVzdG1lbnQgU2VjdGlvbmQCAQ8WAh8DAg0WGmYPZBYCZg8VAg9QbGFuTWFzdGVyLmFzcHgLUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAhJBZGRJbnZlc3RtZW50LmFzcHgOTmV3IEludmVzdG1lbnRkAgIPZBYCZg8VAg5SRFJlbmV3YWwuYXNweA9SZW5ld2FsIFBheW1lbnRkAgMPZBYCZg8VAhhEYWlseVJlbmV3YWxQYXltZW50LmFzcHgVRGFpbHkgUmVuZXdhbCBQYXltZW50ZAIED2QWAmYPFQImRmxleGlyZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249ZmFsc2UVRmxleGkgUmVuZXdhbCBQYXltZW50ZAIFD2QWAmYPFQIUUmVuZXdhbFBhc3Nib29rLmFzcHgRRGFpbHkvUkQgUGFzc2Jvb2tkAgYPZBYCZg8VAiNQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPU5ldxJJbnZlc3RtZW50IFJlY2VpcHRkAgcPZBYCZg8VAiVQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPVJlbmV3ElJlY3VycmluZyAgUmVjZWlwdGQCCA9kFgJmDxUCFUNlcnRpZmljYXRlSXNzdWUuYXNweBFDZXJ0aWZpY2F0ZSBJc3N1ZWQCCQ9kFgJmDxUCJUNlcnRpZmljYXRlSXNzdWUuYXNweD9SZVByaW50PVJlcHJpbnQUQ2VydGlmaWNhdGUgUmUtSXNzdWVkAgoPZBYCZg8VAh5JbnZlc3RtZW50SW50ZXJlc3REZXRhaWxzLmFzcHgQSW50ZXJlc3QgRGV0YWlsc2QCCw9kFgJmDxUCHkludmVzdG1lbnRJbnRlcmVzdFBheWFibGUuYXNweBBJbnRlcmVzdCBQYXlhYmxlZAIMD2QWAmYPFQIVSW52ZXN0bWVudFNlYXJjaC5hc3B4EUludmVzdG1lbnQgU2VhcmNoZAIFD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tOS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+D1NhdmluZ3MgQWNjb3VudGQCAQ8WAh8DAgsWFmYPZBYCZg8VAhZTYXZpbmdzUGxhbk1hc3Rlci5hc3B4E1NhdmluZ3MgUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAg5BZGRTYXZpbmcuYXNweA9TYXZpbmdzIE9wZW5pbmdkAgIPZBYCZg8VAhxTYXZpbmdzVHJhbnNhY3Rpb25FbnRyeS5hc3B4E1NhdmluZ3MgVHJhbnNhY3Rpb25kAgMPZBYCZg8VAhhTYXZpbmdJbnRyYVRyYW5zZmVyLmFzcHgRU0IgSW50cmEgVHJhbnNmZXJkAgQPZBYCZg8VAhdTQkludGVyZXN0R2VuZXJhdGUuYXNweBRTQiBJbnRlcmVzdCBUcmFuc2ZlcmQCBQ9kFgJmDxUCFFNCUGFzc2Jvb2tQcmludC5hc3B4EFNhdmluZ3MgUGFzc2Jvb2tkAgYPZBYCZg8VAhVTYXZpbmdzU3RhdGVtZW50LmFzcHgRU2F2aW5ncyBTdGF0ZW1lbnRkAgcPZBYCZg8VAhJBY2NvdW50Q2xvc2VyLmFzcHgOQWNjb3VudCBDbG9zZXJkAggPZBYCZg8VAhlTZWFyY2hTYXZpbmdzQWNjb3VudC5hc3B4EVNlYXJjaCBTYXZpbmdzIEFDZAIJD2QWAmYPFQIYU01TQ2hhcmdlc0RlZHVjdGlvbi5hc3B4FVNNUyBDaGFyZ2VzIERlZHVjdGlvbmQCCg9kFgJmDxUCHFNlcnZpY2VDaGFyZ2VzRGVkdWN0aW9uLmFzcHgZU2VydmljZSBDaGFyZ2VzIERlZHVjdGlvbmQCBg9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTcucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+DExvYW4gU2VjdGlvbmQCAQ8WAh8DAg4WHGYPZBYCZg8VAhlMb2FuUGxhbi5hc3B4P1R5cGU9Tm9ybWFsEkxvYW4gUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCE0xvYW5DYWxjdWxhdG9yLmFzcHgPTG9hbiBDYWxjdWxhdG9yZAICD2QWAmYPFQIlTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhBMb2FuIEFwcGxpY2F0aW9uZAIDD2QWAmYPFQIiTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbA9Mb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiFMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAh5Mb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBFbWkgUmUtcGF5bWVudGQCBg9kFgJmDxUCKUlycmVndWxhckVNSVBheW1lbnRFbnRyeS5hc3B4P1R5cGU9Tm9ybWFsGElycmVndWxhciBFbWkgUmUtcGF5bWVudGQCBw9kFgJmDxUCJVJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJ0lycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPU5vcm1hbBhJcnJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAh1SZWd1bGFyTG9hbkRvY3VtZW50UHJpbnQuYXNweBNMb2FuIERvY3VtZW50IFByaW50ZAIKD2QWAmYPFQIiTG9hblByZVNldHRsZW1lbnQuYXNweD9UeXBlPU5vcm1hbA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCIUNsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPU5vcm1hbBNDbG9zZWQgbG9hbiBEZXRhaWxzZAIMD2QWAmYPFQIYTG9hbk5vYy5hc3B4P1R5cGU9Tm9ybWFsD05PQyBDZXJ0aWZpY2F0ZWQCDQ9kFgJmDxUCD0xvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCBw9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+CUdvbGQgTG9hbmQCAQ8WAh8DAg4WHGYPZBYCZg8VAhdMb2FuUGxhbi5hc3B4P1R5cGU9R29sZBJHb2xkIFBsYW4gQ3JlYXRpb25kAgEPZBYCZg8VAhNHb2xkTG9hbk1hc3Rlci5hc3B4EEdvbGQgTG9hbiBNYXN0ZXJkAgIPZBYCZg8VAilHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhVHb2xkIExvYW4gQXBwbGljYXRpb25kAgMPZBYCZg8VAiZHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbBRHb2xkIExvYW4gQXV0aG9yaXplZGQCBA9kFgJmDxUCJUdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAhxMb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Hb2xkFlJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgYPZBYCZg8VAidJcnJlZ3VsYXJFTUlQYXltZW50RW50cnkuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIHD2QWAmYPFQIjUmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJUlycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIJD2QWAmYPFQIaR29sZExvYW5Eb2N1bWVudFByaW50LmFzcHgUTG9hbiBEb2N1bWVudHMgUHJpbnRkAgoPZBYCZg8VAiBMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R29sZA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCH0Nsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPUdvbGQTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCDA9kFgJmDxUCFkxvYW5Ob2MuYXNweD9UeXBlPUdvbGQPTk9DIENlcnRpZmljYXRlZAIND2QWAmYPFQITR29sZExvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCCA9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE2LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4KR3JvdXAgTG9hbmQCAQ8WAh8DAgwWGGYPZBYCZg8VAhhMb2FuUGxhbi5hc3B4P1R5cGU9R3JvdXATR3JvdXAgUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCFExvYW5Hcm91cE1hc3Rlci5hc3B4DEdyb3VwIE1hc3RlcmQCAg9kFgJmDxUCGUdyb3VwTG9hbkFwcGxpY2F0aW9uLmFzcHgWR3JvdXAgTG9hbiBBcHBsaWNhdGlvbmQCAw9kFgJmDxUCJEdyb3VwTG9hbkFwcHJvdmFsLmFzcHg/VHlwZT1BcHByb3ZhbBVHcm91cCBMb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiNHcm91cExvYW5BcHByb3ZhbC5hc3B4P1R5cGU9UGF5bWVudBRMb2FuIFBheW1lbnQgU2VjdGlvbmQCBQ9kFgJmDxUCHUxvYW5SZXBheW1lbnQuYXNweD9UeXBlPUdyb3VwDkVtaSBSZS1wYXltZW50ZAIGD2QWAmYPFQIaR2xEYWlseVJlcGF5bWVudFNoZWV0LmFzcHgVRGFpbHkgUmVwYXltZW50IFNoZWV0ZAIHD2QWAmYPFQIQRGVtYW5kU2hlZXQuYXNweAxEZW1hbmQgU2hlZXRkAggPZBYCZg8VAiRSZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9R3JvdXAOTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAiFMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R3JvdXAOUHJlIFNldHRsZW1lbnRkAgoPZBYCZg8VAiFDbG9zZWRMb2FuUmVwb3J0LmFzcHg/VHlwZT1Ob3JtYWwTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCCw9kFgJmDxUCFEdyb3VwTG9hblNlYXJjaC5hc3B4C1NlYXJjaCBMb2FuZAIJD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTIucG5nIiAgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBBcHByb3ZhbCBTZWN0aW9uZAIBDxYCHwMCDRYaZg9kFgJmDxUCFkFkZE1lbWJlckFwcHJvdmFsLmFzcHgQTWVtYmVyICBBcHByb3ZhbGQCAQ9kFgJmDxUCF1NoYXJlSXNzdWVBcHByb3ZhbC5hc3B4DlNoYXJlIEFwcHJvdmFsZAICD2QWAmYPFQIUQWR2aXNvckFwcHJvdmFsLmFzcHgaQWR2aXNvci9Db2xsZWN0b3IgQXBwcm92YWxkAgMPZBYCZg8VAhdJbnZlc3RtZW50QXBwcm92YWwuYXNweBNJbnZlc3RtZW50IEFwcHJvdmFsZAIED2QWAmYPFQIWUmVjdXJyaW5nQXBwcm92YWwuYXNweBNSZWN1cnJpbmcgIEFwcHJvdmFsZAIFD2QWAmYPFQISU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCBg9kFgJmDxUCGkludHJhVHJhbnNmZXJBcHByb3ZhbC5hc3B4FFNCIFRyYW5zZmVyIEFwcHJvdmFsZAIHD2QWAmYPFQIXUmVndWxhckVNSUFwcHJvdmFsLmFzcHgUUmVndWxhciBFTUkgQXBwcm92YWxkAggPZBYCZg8VAhdJcnJ1bGFyRU1JQXBwcm92YWwuYXNweBZJcnJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIJD2QWAmYPFQIZUGF5bWVudEVudHJ5QXBwcm92YWwuYXNweBZQYXltZW50IEVudHJ5IEFwcHJvdmFsZAIKD2QWAmYPFQIgTWF0dXJpdHlBcHBsaWNhdGlvbkFwcHJvdmFsLmFzcHgdTWF0dXJpdHkgQXBwbGljYXRpb24gQXBwcm92YWxkAgsPZBYCZg8VAh5NYXR1cml0eUFwcGxpY2F0aW9uRGVsZXRlLmFzcHgbTWF0dXJpdHkgQXBwbGljYXRpb24gRGVsZXRlZAIMD2QWAmYPFQIcQ1NQQ2FzaFRyYW5zZmVyQXBwcm92YWwuYXNweB1CcmFuY2ggQ2FzaCBUcmFuc2ZlciBBcHByb3ZhbGQCCg9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTEwLnBuZyIgIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4VUmVjdGlmaWNhdGlvbiBTZWN0aW9uZAIBDxYCHwMCDRYaZg9kFgJmDxUCIkFkZE1lbWJlci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUUTWVtYmVyIFJlY3RpZmljYXRpb25kAgEPZBYCZg8VAh1TaGFyZUlzc3VlLmFzcHg/aXNtb2RpZnk9dHJ1ZRNTaGFyZSBSZWN0aWZpY2F0aW9uZAICD2QWAmYPFQIjQWRkQWR2aXNvci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUfQWR2aXNvci9Db2xsZWN0b3IgUmVjdGlmaWNhdGlvbmQCAw9kFgJmDxUCJkFkZEludmVzdG1lbnQuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGEludmVzdG1lbnQgUmVjdGlmaWNhdGlvbmQCBA9kFgJmDxUCIlJEUmVuZXdhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUVUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIFD2QWAmYPFQIsRGFpbHlSZW5ld2FsUGF5bWVudC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUbRGFpbHkgUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIGD2QWAmYPFQIlRmxleGlSZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRhGbGV4aSBUcmFuc2FjdGlvbiBEZWxldGVkAgcPZBYCZg8VAiJBZGRTYXZpbmcuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFVNhdmluZ3MgUmVjdGlmaWNhdGlvbmQCCA9kFgJmDxUCMFNhdmluZ3NUcmFuc2FjdGlvbkVudHJ5LmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRpTYXZpbmdzIFRyYW5zYWN0aW9uIERlbGV0ZWQCCQ9kFgJmDxUCKExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUSTG9hbiBSZWN0aWZpY2F0aW9uZAIKD2QWAmYPFQIsR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUXR29sZCBMb2FuIFJlY3RpZmljYXRpb25kAgsPZBYCZg8VAipHcm91cExvYW5BcHByb3ZhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUYR3JvdXAgTG9hbiBSZWN0aWZpY2F0aW9uZAIMD2QWAmYPFQIkQWRkRW1wbG95ZWUuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFUVtcGxveWVlIE1vZGlmaWNhdGlvbmQCCw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTExLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4QQWNjb3VudHMgU2VjdGlvbmQCAQ8WAh8DAhUWKmYPZBYCZg8VAhVBY2NvdW50TGVnTWFzdGVyLmFzcHgNTGVkZ2VyIE1hc3RlcmQCAQ9kFgJmDxUCE1BheW1lbnRWb3VjaGVyLmFzcHgNUGF5bWVudCBFbnRyeWQCAg9kFgJmDxUCE1JlY2VpdmVWb3VjaGVyLmFzcHgNUmVjZWl2ZSBFbnRyeWQCAw9kFgJmDxUCF0NvbnRyYVZvdWNoZXJFbnRyeS5hc3B4DENvbnRyYSBFbnRyeWQCBA9kFgJmDxUCE0pvdXJuYWxWb3VjaGVyLmFzcHgNSm91cm5hbCBFbnRyeWQCBQ9kFgJmDxUCFUluY2VudGl2ZVBheW1lbnQuYXNweBFJbmNlbnRpdmUgUGF5bWVudGQCBg9kFgJmDxUCD01JU1BheW1lbnQuYXNweBBNSVMgaW50LiBQYXltZW50ZAIHD2QWAmYPFQIQQ2hlcXVlQ2xlYXIuYXNweA9DaGVxdWUgQ2xlYXJpbmdkAggPZBYCZg8VAhxVbmVuY3VtYmVyZWRUZXJtRGVwb3NpdC5hc3B4F01hbmRhdGUgRGVwb3NpdCB0byBCYW5rZAIJD2QWAmYPFQISQmFua1N0YXRlbWVudC5hc3B4DkJhbmsgU3RhdGVtZW50ZAIKD2QWAmYPFQISQ2FzaFN0YXRlbWVudC5hc3B4CUNhc2ggQm9va2QCCw9kFgJmDxUCEVRyYW5zZmVyQm9vay5hc3B4DVRyYW5zZmVyIEJvb2tkAgwPZBYCZg8VAhVSZWd1bGFyU3RhdGVtZW50LmFzcHgIRGF5IEJvb2tkAg0PZBYCZg8VAhpGaW5hbmNpYWxMZWRnZXJSZXBvcnQuYXNweA1MZWRnZXIgUmVwb3J0ZAIOD2QWAmYPFQISSm91cm5hbFJlcG9ydC5hc3B4DkpvdXJuYWwgUmVwb3J0ZAIPD2QWAmYPFQIaRmluYW5jaWFsVHJpYWxCYWxhbmNlLmFzcHgNVHJhaWwgQmFsYW5jZWQCEA9kFgJmDxUCEFBMU3RhdGVtZW50LmFzcHgSUCZMIFN0YXRlbWVudCAoRlkpZAIRD2QWAmYPFQIaRmluYW5jaWFsQmFsYW5jZVNoZWV0LmFzcHgSQmFsYW5jZSBTaGVldCAoRlkpZAISD2QWAmYPFQIXUHJvZml0TG9zc0RhdGVXaXNlLmFzcHgNUCZMIFN0YXRlbWVudGQCEw9kFgJmDxUCGUJhbGFuY2VTaGVldERhdGV3aXNlLmFzcHgNQmFsYW5jZSBTaGVldGQCFA9kFgJmDxUCFENTUENhc2hUcmFuc2Zlci5hc3B4FEJyYW5jaCBDYXNoIFRyYW5zZmVyZAIMD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTMucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EUluY2VudGl2ZSBTZWN0aW9uZAIBDxYCHwMCBBYIZg9kFgJmDxUCFEluY2VudGl2ZU1hc3Rlci5hc3B4EEluY2VudGl2ZSBNYXN0ZXJkAgEPZBYCZg8VAhhJbmNlbnRpdmVHZW5lcmF0aW9uLmFzcHgSSW5jZW50aXZlIEdlbmVyYXRlZAICD2QWAmYPFQIaSW5jZW50aXZlRGV0YWlsc1ByaW50LmFzcHgRSW5jZW50aXZlIERldGFpbHNkAgMPZBYCZg8VAhdJbmNlbnRpdmVMaXN0UHJpbnQuYXNweA5JbmNlbnRpdmUgTGlzdGQCDQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE0LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBNYXR1cml0eSBTZWN0aW9uZAIBDxYCHwMCCRYSZg9kFgJmDxUCEFByZU1hdHVyaXR5LmFzcHgPTWF0dXJpdHkgTWFzdGVyZAIBD2QWAmYPFQIYTWF0dXJpdHlBcHBsaWNhdGlvbi5hc3B4FE1hdHVyaXR5IEFwcGxpY2F0aW9uZAICD2QWAmYPFQIUTWF0dXJpdHlQYXltZW50LmFzcHgQTWF0dXJpdHkgUGF5bWVudGQCAw9kFgJmDxUCGVJlZGVtdGlvblBhcnRQYXltZW50LmFzcHgZTWF0dXJpdHkgUGF5bWVudCAoUGFydGx5KWQCBA9kFgJmDxUCHU1hdHVyaXR5VHJhY2tpbmcuYXNweD9Db2RlPVJSF01hdC4gQXBwbGljYXRpb24gU3RhdHVzZAIFD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9QVIPQXBwcm92ZWQgU3RhdHVzZAIGD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9UFITTWF0LiBQYXltZW50IFN0YXR1c2QCBw9kFgJmDxUCHk1hdHVyaXR5UGFydFBheW1lbnRSZXBvcnQuYXNweBxNYXQuIFBheW1lbnQgU3RhdHVzIChQYXJ0bHkpZAIID2QWAmYPFQIbTWF0dXJpdHlSZWNlaXB0UmVQcmludC5hc3B4Fk1hdHVyaXR5IFJlY2VpcHQgUHJpbnRkAg4PZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OUmVwb3J0IFNlY3Rpb25kAgEPFgIfAwIVFipmD2QWAmYPFQIaSW52ZXN0bWVudFRvdGFsUmVwb3J0LmFzcHgRSW52ZXN0bWVudCBSZXBvcnRkAgEPZBYCZg8VAhxJbnZlc3RtZW50UmVwb3J0U3VtbWFyeS5hc3B4FEludmVzdG1lbnQgLSBTdW1tYXJ5ZAICD2QWAmYPFQIXRW1wbG95ZWVDb2xsZWN0aW9uLmFzcHgSQWR2aXNvciBDb2xsZWN0aW9uZAIDD2QWAmYPFQIaQWR2aXNvclRlYW1Db2xsZWN0aW9uLmFzcHgXQWR2aXNvciBUZWFtIENvbGxlY3Rpb25kAgQPZBYCZg8VAhdDaGVxdWVTdGF0dXNSZXBvcnQuYXNweBdDaGVxdWUgQ2xlYXJhbmNlIFN0YXR1c2QCBQ9kFgJmDxUCG0luY2VudGl2ZVBheW1lbnRSZXBvcnQuYXNweBhJbmNlbnRpdmUgUGF5bWVudCByZXBvcnRkAgYPZBYCZg8VAhdSZWN1cnJpbmdEdWVSZXBvcnQuYXNweBRSZWN1cnJpbmcgRHVlIFJlcG9ydGQCBw9kFgJmDxUCGUxvYW5Ob3RBcHByb3ZlUmVwb3J0LmFzcHgYTG9hbiBOb3QgYXBwcm92ZWQgUmVwb3J0ZAIID2QWAmYPFQIXTG9hbkFwcHJvdmFsUmVwb3J0LmFzcHgOQXBwcm92ZWQgTG9hbiBkAgkPZBYCZg8VAhZMb2FuUGF5bWVudFJlcG9ydC5hc3B4E0xvYW4gUGF5bWVudCBSZXBvcnRkAgoPZBYCZg8VAhVMb2FuRU1JRHVlUmVwb3J0LmFzcHgORHVlIEVtaSBSZXBvcnRkAgsPZBYCZg8VAhlMb2FuRU1JT3ZlckR1ZVJlcG9ydC5hc3B4E0VtaSBPdmVyIER1ZSBSZXBvcnRkAgwPZBYCZg8VAh1Mb2FuRU1JT3V0c3RhbmRpbmdSZXBvcnQuYXNweBZFbWkgT3V0c3RhbmRpbmcgUmVwb3J0ZAIND2QWAmYPFQIeRU1JQ29sbGVjdG9uUmVwb3J0LmFzcHg/VHlwZT1SElJlZ3VsYXIgRU1JIFJlcG9ydGQCDg9kFgJmDxUCHkVNSUNvbGxlY3RvblJlcG9ydC5hc3B4P1R5cGU9SRRJcnJlZ3VsYXIgRU1JIFJlcG9ydGQCDw9kFgJmDxUCHUxvYW5Db2xsZWN0aW9uc2hlZXRQcmludC5hc3B4EExvYW4gU2hlZXQgUHJpbnRkAhAPZBYCZg8VAhlNYXR1cml0eVN0YXR1c1JlcG9ydC5hc3B4D01hdHVyaXR5IFN0YXR1c2QCEQ9kFgJmDxUCFVByb2plY3Rpb25SZXBvcnQuYXNweBFQcm9qZWN0aW9uIFJlcG9ydGQCEg9kFgJmDxUCHE1hdHVyaXR5TGlhYmlsaXR5UmVwb3J0LmFzcHgZTWF0dXJpdHkgTGlhYmlsaXR5IFJlcG9ydGQCEw9kFgJmDxUCF1REU0RlZHVjdGlvblJlcG9ydC5hc3B4FFREUyBEZWR1Y3Rpb24gUmVwb3J0ZAIUD2QWAmYPFQIUUG9saWN5U3RhdGVtZW50LmFzcHgQUG9saWN5IFN0YXRlbWVudGQCDw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE3LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4SUGF5cm9sbCBNYW5hZ2VtZW50ZAIBDxYCHwMCERYiZg9kFgJmDxUCFkRlc2lnbmF0aW9uTWFzdGVyLmFzcHgPQWRkIERlc2lnbmF0aW9uZAIBD2QWAmYPFQIVRGVwYXJ0bWVudE1hc3Rlci5hc3B4DkFkZCBEZXBhcnRtZW50ZAICD2QWAmYPFQITRW1wbG95ZWVNYXN0ZXIuYXNweAxBZGQgRW1wbG95ZWVkAgMPZBYCZg8VAhlFbXBsb3llZUxlYXZlRGV0YWlscy5hc3B4DkVtcGxveWVlIExlYXZlZAIED2QWAmYPFQIWU2FsYXJ5U2V0dXBNYXN0ZXIuYXNweA5TYWxhcnkgRGV0YWlsc2QCBQ9kFgJmDxUCGUhybUFwcG9pbnRtZW50TGV0dGVyLmFzcHgSQXBwb2ludG1lbnQgTGV0dGVyZAIGD2QWAmYPFQITSHJtT2ZmZXJMZXR0ZXIuYXNweBJPZmZlciBMZXR0ZXIgSXNzdWVkAgcPZBYCZg8VAhJPZmZEYXlTZXR0aW5nLmFzcHgOSG9saWRheSBNYXN0ZXJkAggPZBYCZg8VAhRMZWF2ZUFkanVzdG1lbnQuYXNweBBMZWF2ZSBBZGp1c3RtZW50ZAIJD2QWAmYPFQISSHJtQXR0ZW5kYW5jZS5hc3B4CkF0dGVuZGFuY2VkAgoPZBYCZg8VAhZIcm1TYWxhcnlHZW5lcmF0ZS5hc3B4D1NhbGFyeSBHZW5lcmF0ZWQCCw9kFgJmDxUCFUhybVNhbGFyeVBheW1lbnQuYXNweA5TYWxhcnkgUGF5bWVudGQCDA9kFgJmDxUCF0hybVNhbGFyeVNsaXBQcmludC5hc3B4EVNhbGFyeSBTbGlwIFByaW50ZAIND2QWAmYPFQIVQXR0ZW5kYW5jZVJlcG9ydC5hc3B4EUF0dGVuZGFuY2UgUmVwb3J0ZAIOD2QWAmYPFQIbSHJtU2FsYXJ5UGF5bWVudFJlcG9ydC5hc3B4FVNhbGFyeSBQYXltZW50IFJlcG9ydGQCDw9kFgJmDxUCFkhSTUVtcGxveWVlU2VhcmNoLmFzcHgPRW1wbG95ZWUgU2VhcmNoZAIQD2QWAmYPFQIWSHJtRW1wbG95ZWVJRENhcmQuYXNweBBFbXBsb3llZSBJRCBDYXJkZAIQD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhJNb2JpbGUgQXBwIENvbnRyb2xkAgEPFgIfAwIIFhBmD2QWAmYPFQIKTVVzZXIuYXNweBFBcHAgVXNlciBDcmVhdGlvbmQCAQ9kFgJmDxUCGk1vYmlsZV9NZW1iZXJBcHByb3ZhbC5hc3B4EE1lbWJlciAgQXBwcm92YWxkAgIPZBYCZg8VAh1Nb2JpbGVfQ29sbGVjdG9yQXBwcm92YWwuYXNweBBBZHZpc29yIEFwcHJvdmFsZAIDD2QWAmYPFQIeTW9iaWxlX0ludmVzdG1lbnRBcHByb3ZhbC5hc3B4E0ludmVzdG1lbnQgQXBwcm92YWxkAgQPZBYCZg8VAhtNb2JpbGVfUmVuYXdhbEFwcHJvdmFsLmFzcHgTUmVjdXJyaW5nICBBcHByb3ZhbGQCBQ9kFgJmDxUCHk1vYmlsZV9SZWd1bGFyRU1JQXBwcm92YWwuYXNweBRSZWd1bGFyIEVNSSBBcHByb3ZhbGQCBg9kFgJmDxUCIE1vYmlsZV9JcnJlZ3VsYXJFTUlBcHByb3ZhbC5hc3B4FklycmVndWxhciBFTUkgQXBwcm92YWxkAgcPZBYCZg8VAhlNb2JpbGVfU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCEQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE1LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhFNb2JpbGUgQXBwIFJlcG9ydGQCAQ8WAh8DAgcWDmYPZBYCZg8VAiBNb2JpbGVfTWVtYmVyQXBwcm92YWxSZXBvcnQuYXNweBZNZW1iZXIgQXBwcm92YWwgUmVwb3J0ZAIBD2QWAmYPFQIhTW9iaWxlX0Fkdmlzb3JBcHByb3ZhbFJlcG9ydC5hc3B4F0Fkdmlzb3IgQXBwcm92YWwgUmVwb3J0ZAICD2QWAmYPFQImTW9iaWxlX1JlZ3VsYXJFTUlDb2xsZWN0aW9uUmVwb3J0LmFzcHgbUmVndWxhciBFTUkgQXBwcm92YWwgUmVwb3J0ZAIDD2QWAmYPFQIoTW9iaWxlX0lycmVndWxhckVNSUNvbGxlY3Rpb25SZXBvcnQuYXNweB1JcnJlZ3VsYXIgRU1JIEFwcHJvdmFsIFJlcG9ydGQCBA9kFgJmDxUCH01vYmlsZV9TQlR4bkFwcHJvdmFsUmVwb3J0LmFzcHgWU0IgVHhuIEFwcHJvdmFsIFJlcG9ydGQCBQ9kFgJmDxUCJE1vYmlsZV9JbnZlc3RtZW50QXBwcm92YWxSZXBvcnQuYXNweBpJbnZlc3RtZW50IEFwcHJvdmFsIFJlcG9ydGQCBg9kFgJmDxUCIU1vYmlsZV9SZW5ld2FsQXBwcm92YWxSZXBvcnQuYXNweBdSZW5ld2FsIEFwcHJvdmFsIFJlcG9ydGQCIw9kFgICGw8UKwAFZCgpWFN5c3RlbS5HdWlkLCBtc2NvcmxpYiwgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI3N2E1YzU2MTkzNGUwODkkMjM3ODk4NDYtZGMzMC00MmE1LWJjMmQtZGZiY2UzY2UxOWRkAgEUKwABPCsABAEAZmRkAiUPDxYCHwAFEkVRRkkgTklESEkgTElNSVRFRGRkZCkm/WQW6UpJmGryD1YaThuhTEQ3cAwZWz/tK7Z1SjG+" />
		</div>

		<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>

		<script
			src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531"
			type="text/javascript"></script>
		<script
			src="../ScriptResource8794.js?d=pl0DaltFZ-nCqZWgxNAqTvBniAbIZw3Iz1bSYE7rwyGDxh1etqVx0WLbkkAE88KWETjjkMMzd-H0InR9BngAQbQfYcq-ENJYTXgawkPhXCZJsAGJSSC1KoJTErXiWh7tEcXp6rwjlayV_PcTh7M4M8rvifeWAlJsyUFxR9AUwO81&amp;t=5334fc78"
			type="text/javascript"></script>
		<script
			src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c"
			type="text/javascript"></script>
		<script
			src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c"
			type="text/javascript"></script>
		<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="CB94A03D" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="/wEdABEtY9reByKEyb+1369+qeOnXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N1gkW9KTJUpiowhlxlgabWzuLDaZZcEfBTMvSP7u+JDjq7QvQGl2QZPfJ6S6kAHXKQ8Dm5uey/bDUOZ4YwCdLroCWfaEDaMC32eICQnthAEEPODl3cfcNjmQ85bvpLGhRo/YdqXy8CtK5b4lDc+eXOzy2kPm16PmfgqX0gyGrItKaK3dbADmcgcN0nOalZm7TOeuYsN4Yg5UOp4mfo0MayEDwvg27NujlMPJvSBZOteY0tfTIhQ0BLB25p92zfbAZIRM5NMI/iobQBufcQbk9v7IosnF2OF7qnyjFsw9zi5nwcfXSZFhsaReGMbPWDYScAS/r0LlZEOG7mriXhxL8yh" />
		</div>

		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
			<!-- Header Start-->

			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Loan Calculator</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Calculator</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-4">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Loan Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-12">
										<div class="form-group row">
											<label for="ddlRoiType" class="col-sm-5 control-label">ROI
												Type <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<select name="ctl00$ContentPlaceHolder1$ddlRoiType"
													id="ContentPlaceHolder1_ddlRoiType" class="form-control"
													style="width: 100%;" onchange="calculation()">
													<option value="EQ">Equal Principal</option>
													<option value="EMI">EMI</option>
													<option value="Rule78">Rule 78</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Loan Amount <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtLoanAmount"
													type="text" id="ContentPlaceHolder1_txtLoanAmount"
													class="form-control" onpaste="return false"
													onkeypress="return isNumberOnlyKey(this, event);"
													placeholder="Loan Amount" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Loan Amount</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Interest in
												Year <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtROI" type="text"
													id="ContentPlaceHolder1_txtROI" class="form-control"
													onpaste="return false"
													onkeypress="return isNumberKey(this, event);"
													autocomplete="off" placeholder="Rate Of Interest" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													ROI (% p.a.)</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-5 control-label">Tensure in Year
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-7">
												<input name="ctl00$ContentPlaceHolder1$txtTerm" type="text"
													id="ContentPlaceHolder1_txtTerm" class="form-control"
													onpaste="return false"
													onkeypress="return isNumberOnlyKey(this, event);"
													placeholder="Term On Month" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator7"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Term</span>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button" name="ctl00$ContentPlaceHolder1$btnGo"
											value="View amortization" id="ContentPlaceHolder1_btnGo"
											class="btn btn-danger pull-right" /> <input type="button"
											name="ctl00$ContentPlaceHolder1$btnCalculate"
											value="Calculate" id="ContentPlaceHolder1_btnCalculate"
											class="btn btn-success pull-right margin-r-5"
											onclick="calculation()" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8">

							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">Amortization Schedule</h3>
									<div class="box-tools pull-right"></div>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table id="tbl_result" class="hide" style="">
										<thead>
											<tr>
												<th>Month</th>
												<th>Opening Principal</th>
												<th>Installment</th>
												<th>Interest Component</th>
												<th>Prinncipal Component</th>
												<th>Closing Principal</th>
											</tr>
										</thead>
										<tbody id="tbl_body">
										</tbody>
									</table>
								</div>
								<!-- <div>Total Principal:<span id="totalPrincipal"></span></div>
								<div>Total Principal Plus Interest:<span id="totalPrincipalPlusInterest"></span></div> -->
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- /.content-wrapper -->
			<%-- <jsp:include page="../footer.jsp" /> --%>
</body>
</html>