$(document).ready(function() {
	$('#feedback').click(function() {
		$('#div_slider_feedback').fadeIn(1000);
		$('.feedback_background').show();
	});
	$('.close_button,.feedback_background').click(function(){
		$('#div_slider_feedback').fadeOut(1000);
		$('.feedback_background').hide();
	});

});
