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

$(document).ready(function(){
	$('#feedback_form_submit').click(function(){
		$('.span_feedback_message_error').remove();
		var returnvar=true;
		var regexemail = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if($("#feedback_form_input_email").val()==""){
			returnvar=false;
			$("<span class='span_feedback_message_error'>Вы не ввели email</span>").css({'position': 'absolute','top':$("#feedback_form_input_email").position().top -19,'color':'red'}).fadeIn(2500).insertBefore("#feedback_form_input_email");
		}
		else if(!regexemail.test($("#feedback_form_input_email").val())){
			returnvar=false;
			$("<span class='span_feedback_message_error'>Вы ввели неправельный email</span>").css({'position': 'absolute','top':$("#feedback_form_input_email").position().top -19,'color':'red'}).fadeIn(2500).insertBefore("#feedback_form_input_email");
		}
		
		if($("#feedback_form_textarea_message").val()==""){
			returnvar=false;
			$("<span class='span_feedback_message_error'>Напишите сообщение</span>").css({'position': 'absolute','top':$("#feedback_form_textarea_message").position().top -19,'color':'red'}).fadeIn(2500).insertBefore("#feedback_form_input_email");
		}
		
		if(returnvar==true){$("<div class='div_feedback_message_success'>Спасибо, ваше сообщение отправлено администратарам сайта</div>").css({'position': 'absolute','top': '50%', 'margin-left': '10%','margin-right': '10%','padding': '10', 'border': '3px solid red',	'border-radius': '6','-webkit-border-radius': '6px',	'-moz-border-radius': '6px',		'-moz-border-radius': '6px'}).appendTo($("#wrapper_feedback_form"));
		}
		
		
		return returnvar;
	});
});