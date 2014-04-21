<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251"
	pageEncoding="windows-1251"%>
<html>
<head>
<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/960_24_col.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/text.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/styleregistration.css" />"
	rel="stylesheet">
<title>uZability</title>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_18">
		<div class="main_div">
			<h1 id="reg">Здравствуйте</h1>
			<p id="pre_p">Пожалуйста, заполните поля.</p>
			<div id="reg_form">
				<form name="f" action="<c:url value='j_spring_security_check' />"
					method="POST" class="form_login">
					<p class="form_p">
						<input type='text' class="input_login" name='j_username'
							placeholder="Логин" required autofocus autocomplete="off" id="input_st_log" maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}"/>
					</p>
					<p class="form_p">
						<input type='password' class="input_login" name='j_password'
							placeholder="Пароль" required id="input_st_log" maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<p id="form_remember_me">
						<label for="remember_me" id="Label_remember">Запомнить меня</label>
						<input id="remember_me" name="_spring_security_remember_me" type="checkbox">
					</p>
					<p class="submit" id="submit_login">
						<input type="submit" value="Войти">
					</p>
				</form>
			</div>
		</div>
		<a href="/spring/" title="Назад" id="left_button"><img
			id="image_left_button"
			src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
			height="70"></a>
	</div>
</body>
</html>
