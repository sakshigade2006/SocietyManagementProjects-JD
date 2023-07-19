function allDesignation() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDesignation123456',
		asynch: false,
		success: function(data) {
			for (let i = 0; i < 1; i++) {
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
						<td>${j++}</td>
                         <td>${value.id}</td> 
                          <td>${value.designation}</td>
                         <td>Act</td>	
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#tableBody");
				tableBody1.innerHTML = tableData1;
			}

		},
		error: function() {
			alert("Device control failed");
		
			}
	});
}
