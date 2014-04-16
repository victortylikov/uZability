<!-- var firstObj=document.getElementById("a_slide_number_1");

function changeNewTime(obj){
	
	
	var nextLi=obj.parentNode.cunextSibling;
	var nextObj=nextLi.childNodes[1];
	changeNew(nextObj);
}

changeNewTime(firstObj); -->

function changeNew(obj){
	document.getElementById("a_slide_1").style.cssText="display: none;";
	document.getElementById("a_slide_2").style.cssText="display: none;"; 
	document.getElementById("a_slide_3").style.cssText="display: none;";
	document.getElementById("a_slide_4").style.cssText="display: none;"; 
	document.getElementById("p_slide_1").style.cssText="display: none;"; 	
	document.getElementById("p_slide_2").style.cssText="display: none;"; 
	document.getElementById("p_slide_3").style.cssText="display: none;"; 	
	document.getElementById("p_slide_4").style.cssText="display: none;"; 
	document.getElementById("img_slide_1").style.cssText="display: none;"; 	
	document.getElementById("img_slide_2").style.cssText="display: none;"; 	
	document.getElementById("img_slide_3").style.cssText="display: none;"; 	
	document.getElementById("img_slide_4").style.cssText="display: none;";
	document.getElementById("a_slide_number_1").parentNode.style.cssText="background: #003366;";
	document.getElementById("a_slide_number_2").parentNode.style.cssText="background: #003366;";
	document.getElementById("a_slide_number_3").parentNode.style.cssText="background: #003366;";
	document.getElementById("a_slide_number_4").parentNode.style.cssText="background: #003366;";
	switch(obj.id){
		case "a_slide_number_1" :
			document.getElementById("a_slide_1").style.cssText="display: block;";
			document.getElementById("p_slide_1").style.cssText="display: block;";
			document.getElementById("img_slide_1").style.cssText="display: block;"; 
			obj.parentNode.style.cssText="background: #CB0000;";
			break;
		case "a_slide_number_2" :
			document.getElementById("a_slide_2").style.cssText="display: block;";
			document.getElementById("p_slide_2").style.cssText="display: block;";
			document.getElementById("img_slide_2").style.cssText="display: block;"; 
			obj.parentNode.style.cssText="background: #CB0000;";
			break;
		case "a_slide_number_3" :
			document.getElementById("a_slide_3").style.cssText="display: block;";
			document.getElementById("p_slide_3").style.cssText="display: block;";
			document.getElementById("img_slide_3").style.cssText="display: block;";
			obj.parentNode.style.cssText="background: #CB0000;";			
			break;
		default:
			document.getElementById("a_slide_4").style.cssText="display: block;";
			document.getElementById("p_slide_4").style.cssText="display: block;";
			document.getElementById("img_slide_4").style.cssText="display: block;"; 
			obj.parentNode.style.cssText="background: #CB0000;";
	}
}

function onButton(obj){
	obj.childNodes[1].style.cssText="border-bottom: 2px solid #CB0000;";
}

function offButton(obj){
	obj.childNodes[1].style.cssText="border-bottom: none;";
}

