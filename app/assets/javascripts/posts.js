$(function() {
	$("textarea.code").each( function() {
		mode = $(this).data("codemode");
		CodeMirror.fromTextArea(this, { 
	  		lineNumbers: true,
	  		mode: mode,
	  		tabSize: 2,
	  		readOnly: true
	  	});
	});
});
