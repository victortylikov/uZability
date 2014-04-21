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
			<h1 id="reg">�����������</h1>
			<p id="pre_p">����������, ��������� ������������ ����.</p>
			<div id="reg_form">
				<form:form action="addUserPost" modelAttribute="user" class="form">
					<p class="form_p">
						<label for="login">�����:</label>
						<form:input path="login" autocomplete="off"  id="input_st" maxlength="30"/>
						<form:errors path="login" cssClass="error"></form:errors>
					</p>
					<p class="form_p">
						<label for="password">������:</label>
						<form:password path="password" id="input_st" autocomplete="off" maxlength="30" />
						<form:errors path="password" cssClass="error"></form:errors>
					</p>
					<p class="form_p">
						<label for="email">E-mail:</label>
						<form:input path="email" autocomplete="off" id="input_st" maxlength="50" />
						<form:errors path="email" cssClass="error"></form:errors>
					</p>
					<p class="submit">
						<input type="submit" value="���������">
					</p>
				</form:form>
			</div>
		</div>
		<a href="/spring/" title="�����" id="left_button"><img id="image_left_button" src="<c:url value="/resources/images/arrowLeft.png" />" width="70" height="70" ></a>
	</div>
</body>
</html>
