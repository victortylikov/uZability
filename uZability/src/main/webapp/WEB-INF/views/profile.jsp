<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
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
<link href="<c:url value="/resources/css/profile.css" />"
	rel="stylesheet">
<title>uZability</title>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_profile">
		<div class="main_div_profile">
			<div class="avatar"></div>
			<h3>Данные для входа</h3>
			<div class="data_user">
				<div class="block">
					<h4 class="field_name">Логин:</h4>
					<div class="field">${user.login}</div>
				</div>
				<div class="block">
					<h4 class="field_name">Электронная почта:</h4>
					<div class="field">${user.email}</div>
				</div>
				<div class="block">
					<div class="field_change_password"><a href="#" id="href_change_password">Сменить пароль</a></div>
				</div>
			</div>
		</div>
		<a href="/spring/" title="Назад" id="left_button"><img
			id="image_left_button"
			src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
			height="70"></a>
	</div>
</body>
</html>
