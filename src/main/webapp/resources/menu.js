/* reload the page*/
function menu_reset() {    
    window.location.reload();	// reload window to reset fields	
}

function show_html(){
	var formData = JSON.stringify($("#selectedfieldsform").serializeArray());
	console.log(formData);
	$.ajax({
		  method: 'post',
		  url: 'process',
		  data: formData,
		  success: function(data) {
			$('#data').html(data);
		  },
		  contentType: 'application/json'
		});				
}