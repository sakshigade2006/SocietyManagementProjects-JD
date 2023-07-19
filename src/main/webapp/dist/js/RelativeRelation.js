//Relative Relation Dropdown
function  RelativeRelationDropdown() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RelativeRelation',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#relativeRelation").append(appenddata1);
                    
             var appenddata2 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#relation").append(appenddata2);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function  NomineeRelationDropdown() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'nomineeRelation',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].name +"'>" +data[i].name +" </option>";
                    }
                    $("#nRelation").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}