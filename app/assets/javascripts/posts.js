ready = function() {
	$("textarea.code").each( function() {
		mode = $(this).data("codemode");
		CodeMirror.fromTextArea(this, { 
	  		lineNumbers: true,
	  		mode: mode,
	  		tabSize: 2,
	  		readOnly: true
	  	});
	});
	
	$("textarea.editcode").each( function() {
		mode = $(this).data("codemode");
		CodeMirror.fromTextArea(this, { 
	  		lineNumbers: true,
	  		mode: mode,
	  		tabSize: 2
	  	});
	});
};

$(document).ready(ready);
$(document).on('page:load', ready);