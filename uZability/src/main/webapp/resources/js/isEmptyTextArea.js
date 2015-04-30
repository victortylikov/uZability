function isEmptyForm() {
	var commentText = $(".comment_textarea").val();
	if (commentText == null || commentText == "") {
		$('.comment_textarea').attr('placeholder',
				'Напишите здесь ваш комментарий');
		$('.comment_textarea').focus();
		return false;
	} else {
		return true;
	}
}