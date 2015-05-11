$(document).ready(function() {
	$('#feedback').click(function() {
		/*$(this).hide();*/
		$('#div_slider_feedback').fadeIn(1000);
	});
	
	$('.close_button').click(function(){
		$('#div_slider_feedback').fadeOut(1000);
		/*$('#feedback').show();*/
	});
});
