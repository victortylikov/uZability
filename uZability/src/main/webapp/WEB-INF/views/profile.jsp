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
<script src="<c:url value="/resources/js/jquery-1.2.6.js" />"></script>
<script src="<c:url value="/resources/js/changePassword.js" />"></script>
<title>uZability</title>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div id="cp_modal_background" onclick="back()"></div>
	<div id="change_password_form">
		<form:form action="changePassword" class="form" method="POST"
			commandName="password">
			<h4 class="field_name">������� ������</h4>
			<p class="form_p">
				<label for=currentPassword>������� ������:</label>
				<form:input path="currentPassword" autocomplete="off" id="input_st" />
			</p>
			<p class="submit">
				<input type="submit" value="���������">
			</p>
		</form:form>

	</div>
	<div class="container_profile">

		<div class="main_div_profile">
			<div class="avatar"></div>
			<h3>������ ��� �����</h3>
			<div class="data_user">
				<div class="block">
					<h4 class="field_name">�����:</h4>
					<div class="field">${user.login}</div>
				</div>
				<div class="block">
					<h4 class="field_name">����������� �����:</h4>
					<div class="field">${user.email}</div>
				</div>
				<div class="block">
					<div class="field_change_password">
						<button onclick="addChangePassword()" id="href_change_password">�������
							������</button>
					</div>
				</div>
			</div>
		</div>
		<a href="/spring/" title="�����" id="left_button"><img
			id="image_left_button"
			src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
			height="70"></a>
	</div>
</body>
</html>
