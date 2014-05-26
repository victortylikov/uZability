function addChangePassword() {
	$("#cp_modal_background:hidden").show();
	$("#change_password_form:hidden").show();
}
function back() {
	$("#cp_modal_background:visible").css("display", "none");
	$("#change_password_form:visible").css("display", "none");
}

$(document).ready(function() {
	var loc = $(location).attr('href');
	if (loc == "http://localhost:8080/spring/profile/changePassword") {
		addChangePassword();
	}

});