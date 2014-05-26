changeAuto(0);

function changeAuto(el) {
	var elIn = el;
	var elMod = elIn % 4;

	document.getElementById("a_slide_1").style.cssText = "display: none;";
	document.getElementById("a_slide_2").style.cssText = "display: none;";
	document.getElementById("a_slide_3").style.cssText = "display: none;";
	document.getElementById("a_slide_4").style.cssText = "display: none;";
	document.getElementById("p_slide_1").style.cssText = "display: none;";
	document.getElementById("p_slide_2").style.cssText = "display: none;";
	document.getElementById("p_slide_3").style.cssText = "display: none;";
	document.getElementById("p_slide_4").style.cssText = "display: none;";
	document.getElementById("img_slide_1").style.cssText = "display: none;";
	document.getElementById("img_slide_2").style.cssText = "display: none;";
	document.getElementById("img_slide_3").style.cssText = "display: none;";
	document.getElementById("img_slide_4").style.cssText = "display: none;";
	document.getElementById("a_slide_number_1").parentNode.style.cssText = "background: #003366;";
	document.getElementById("a_slide_number_2").parentNode.style.cssText = "background: #003366;";
	document.getElementById("a_slide_number_3").parentNode.style.cssText = "background: #003366;";
	document.getElementById("a_slide_number_4").parentNode.style.cssText = "background: #003366;";
	switch (elMod) {
	case 0:
		document.getElementById("a_slide_1").style.cssText = "display: block;";
		document.getElementById("p_slide_1").style.cssText = "display: block;";
		document.getElementById("img_slide_1").style.cssText = "display: block;";
		document.getElementById("a_slide_number_1").parentNode.style.cssText = "background: #CB0000;";
		break;
	case 1:
		document.getElementById("a_slide_2").style.cssText = "display: block;";
		document.getElementById("p_slide_2").style.cssText = "display: block;";
		document.getElementById("img_slide_2").style.cssText = "display: block;";
		document.getElementById("a_slide_number_2").parentNode.style.cssText = "background: #CB0000;";
		break;
	case 2:
		document.getElementById("a_slide_3").style.cssText = "display: block;";
		document.getElementById("p_slide_3").style.cssText = "display: block;";
		document.getElementById("img_slide_3").style.cssText = "display: block;";
		document.getElementById("a_slide_number_3").parentNode.style.cssText = "background: #CB0000;";
		break;
	default:
		document.getElementById("a_slide_4").style.cssText = "display: block;";
		document.getElementById("p_slide_4").style.cssText = "display: block;";
		document.getElementById("img_slide_4").style.cssText = "display: block;";
		document.getElementById("a_slide_number_4").parentNode.style.cssText = "background: #CB0000;";
	}
	elMod++;
	id = setTimeout(function(k) {
		return function() {
			changeAuto(k)
		}
	}(elMod), 6000);
}

function stop() {
	clearTimeout(id);
}

function changeNew(obj) {
	stop();
	switch (obj) {
	case "a_slide_number_1":
		changeAuto(0);
		break;
	case "a_slide_number_2":
		changeAuto(1);
		break;
	case "a_slide_number_3":
		changeAuto(2);
		break;
	default:
		changeAuto(3);
	}
}

function onButton(obj) {
	obj.childNodes[1].style.cssText = "border-bottom: 2px solid #CB0000;";
}

function offButton(obj) {
	obj.childNodes[1].style.cssText = "border-bottom: none;";
}
