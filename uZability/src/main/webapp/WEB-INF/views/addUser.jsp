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
			<h1 id="reg">Регистрация</h1>
			<p id="pre_p">Пожалуйста, заполните обязательные поля.</p>
			<div id="reg_form">
				<form:form action="addUserPost" modelAttribute="user" class="form">
					<form:errors path="login" cssClass="error"></form:errors>
					<p class="form_p">
						<label for="login">Логин:</label>
						<form:input path="login" autocomplete="off" id="input_st"  />
					</p>
					<form:errors path="password" cssClass="error"></form:errors>
					<p class="form_p">
						<label for="password">Пароль:</label>
						<form:password path="password" id="input_st" autocomplete="off" />

					</p>
					<form:errors path="email" cssClass="error" id="err_email"></form:errors>
					<p class="form_p">						
						<label for="email">E-mail:</label>
						<form:input path="email" autocomplete="off" id="input_st" />
					</p>
					<p class="submit">
						<input type="submit" value="Отправить">
					</p>
				</form:form>
			</div>
		</div>
		
		<a href="/spring/" title="Назад" id="left_button"><img
			id="image_left_button"
			src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
			height="70"></a>
	</div>
</body>
</html>
