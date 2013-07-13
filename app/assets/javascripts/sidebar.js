$(function() {
	$.get("/sidebar", function(data) {
		$(".main-sidebar").html(data);
	});
});