function click_upload_file(){
    document.getElementById('file').click();

};

function checkPhoto(target) {
	if(target.files[0].type.indexOf("image") == -1) {
		alert("Загруженное изображение должно иметь расширение png, jpeg, jpg, gif, bmp");
        return false;
    }
    if(target.files[0].size > 60000) {
        /*document.getElementById("photoLabel").innerHTML = "Image too big (max 60kb)";*/
    	alert("Изображение слишком большое( максимум 60 Кб)");
        return false;
    }
    document.getElementById("id_uploadform").submit();
    return true;
}

