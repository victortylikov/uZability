function check_form() {
	var date = document.getElementById('datepicker').value;
	var reg = new RegExp(
			"(19[0-9]{2}|200[0-9]|201[0-5])-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])",
			"i");

	var firstName = document.getElementById('first_name').value;
	var regforName = new RegExp("[а-яА-Яa-zA-Z0-9]{2,30}", "i");
	
	var errorName=document.getElementById("errorName");
	var errorDate=document.getElementById("errorDate");

	if ((reg.test(date) || date == "") && regforName.test(firstName)) {
		alert("Данные успешно добавлены");
		return true;
	} else if ((!regforName.test(firstName))&&(reg.test(date)|| date == "")) {
		errorName.style.cssText="display:block;";
		errorName.innerHTML = "Имя должно быть от 2 до 30 символов";
		errorDate.style.cssText="display:none;";
		return false;
	}else if ((!regforName.test(firstName)) && (!reg.test(date))) {
		errorName.style.cssText="display:block;";
		errorDate.style.cssText="display:block;";
		errorName.innerHTML = "Имя должно быть от 2 до 30 символов";
		errorDate.innerHTML = "Дата рождения записана неверно";
		return false;
	}  else {
		errorDate.style.cssText="display:block;";
		errorDate.innerHTML = "Дата рождения записана неверно";
		errorName.style.cssText="display:none;";
		return false;
	}
	;

};