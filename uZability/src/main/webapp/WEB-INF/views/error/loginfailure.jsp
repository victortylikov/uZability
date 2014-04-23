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
			<p id="pre_p">Вы ввели неправильный логин или пароль <br>
			пожалуйста <a href="/spring/login">повторите попытку</a> или <a href="/spring/registration">зарегистрируйтесь</a>
			</p>
			
				<a href="/spring/"
				title="Назад" id="left_button"><img id="image_left_button"
				src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
				height="70"></a>
		</div>
	</div>
</body>
</html>
