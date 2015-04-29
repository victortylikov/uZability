function isEmptyForm() {
	var	commentText=$(".comment_textarea").val();
	 if (commentText == null || commentText == "") {
	        alert("Name must be filled out");
	        return false;
	    }else{
	    	return true;
	    }
}