/* reload the page*/
function menu_reset() {    
    window.location.reload();	// reload window to reset fields	
}

function show_html(){
	var formData = JSON.stringify($("#selectedfieldsform").serializeArray());

	var postUrl = 'process';
	
	$.ajax({
		  method: 'post',
		  url: postUrl,
		  data: formData,
		  success: function(data) {
			$('#data').html(data);
		  },
		  contentType: 'application/json'
		});				
}

function save_pdf(){
	var formData = JSON.stringify($("#selectedfieldsform").serializeArray());

	var postUrl = 'genQuery';
	
	$.ajax({
		  method: 'post',
		  url: postUrl,
		  data: formData,
		  success: function(data) {
			  if(data !== 'No Fields Selected, Select from the left side menu'){
				  window.location = "pdf?val=" + data;
			  }else{
				  $('#data').html(data);
			  }
		  },
		  contentType: 'application/text'
		});				
}

function save_xls(){
	var formData = JSON.stringify($("#selectedfieldsform").serializeArray());

	var postUrl = 'genQuery';
	
	$.ajax({
		  method: 'post',
		  url: postUrl,
		  data: formData,
		  success: function(data) {
			  if(data !== 'No Fields Selected, Select from the left side menu'){
				  window.location = "xls?val=" + data;
			  }else{
				  $('#data').html(data);
			  }
		  },
		  contentType: 'application/text'
		});				
}

document.getElementById("pdfButton").addEventListener("click", function(){
	save_pdf();
});

document.getElementById("xlsButton").addEventListener("click", function(){
	save_xls();
});