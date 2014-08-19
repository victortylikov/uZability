window.onload = function() {
	var gender = document.getElementById('id_gender_check').innerHTML;
	var gender_m = document.getElementById("gender_m");
	var gender_w = document.getElementById("gender_w");
	
	if (gender == 1) {
		gender_m.checked = true;

	}else if (gender == 2) {
		gender_w.checked = true;

	};

};