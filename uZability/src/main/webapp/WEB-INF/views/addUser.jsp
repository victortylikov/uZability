<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251" pageEncoding="windows-1251"%>
<html>
<head>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/960_24_col.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/text.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/styleregistration.css" />" rel="stylesheet">
	<title>uZability</title>
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon" > 
</head>
<body>
	<div class="container_18">
	<div class="main_div">
	<h1 id="reg">Регистрация</h1>
	<div id="reg_form">
	<form:form action="addUserPost" modelAttribute="user" class="form">
		<p><span>Логин:</span><form:input path="login"/><span></span></p>
		<p><span>Пароль:</span><form:input path="password"/><span></span></p>
		<p><span>E-mail:</span><form:input path="email"/><span></span></p>		
		<p><input type="submit" value="Отправить"></p>		
	</form:form>
	</div>
	<a href="/spring/">back</a>
	</div>
	</div>
</body>
</html>
