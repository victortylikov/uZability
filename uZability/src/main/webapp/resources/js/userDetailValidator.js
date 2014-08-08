

function check_form() {
	var date = document.getElementById('datepicker').value;
	var reg = new RegExp("(19[0-9]{2}|200[0-9]|201[0-5])-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])", "i");

	if (reg.test(date)) {
		alert(date);
		return true;
	} else {
		document.getElementById("errorDate").innerHTML="Дата рождения записана неверно";
		return false;
	};
};