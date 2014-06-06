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
		<!-- <button class="close_button" onclick="back()">X</button> -->
		<a title="Закрыть" class="close_button" onclick="back()"><img
			id="close_image"
			src="<c:url value="/resources/images/x_button1.png" />" width="20"
			height="20"></a>
		<form:form onsubmit="validate()" action="changePassword"
			class="change_password_form_form" method="POST"
			modelAttribute="password">
			<h3>Сменить пароль</h3>

			<p class="change_password_p">
				<form:errors path="currentPassword" cssClass="errorPassword"></form:errors>
				<span class="errorPassword">${wrongOldPassword}</span> <label
					class="change_password_label" for=currentPassword>Текущий
					пароль:</label>
				<form:password path="currentPassword" autocomplete="off"
					cssClass="change_password_input" id="currentPassword" />
			</p>
			<p class="change_password_p">
				<form:errors path="newPassword1" cssClass="errorPassword"></form:errors>
				<span class="errorPassword">${wrongNewPassword}</span> <label
					class="change_password_label" for=newPassword1>Новый
					пароль:</label>
				<form:password path="newPassword1" autocomplete="off"
					cssClass="change_password_input" id="newPassword1" />
			</p>
			<p class="change_password_p">
				<form:errors path="newPassword2" cssClass="errorPassword"></form:errors>
				<label class="change_password_label" for=newPassword2>Повторите
					новый пароль:</label>
				<form:password path="newPassword2" autocomplete="off"
					cssClass="change_password_input" id="newPassword2" />
			</p>
			<p class="submit">
				<input type="submit" value="Отправить">
			</p>
		</form:form>
	</div>
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
					<div class="field_change_password">
						<button onclick="addChangePassword()" class="href_change_password">Сменить
							пароль</button>
					</div>
				</div>
			</div>
			<h3 id="h3_detail_info">
				Личная информация <a href="/spring/editProfile"
					title="Редактировать" class="a_edit_personal_info"><img
					src="<c:url value="/resources/images/edit.png" />" width="22"
					height="22"></a>
			</h3>
			<div class="data_user">
				<div class="block_detail">
					<c:if test="${empty userdetail}">
						<div>
							Вы не указали дополнительной информации о себе<br> <a
								class="href_change_password" href="/spring/editProfile">Добавить
								личные данные</a>
						</div>
					</c:if>
					<c:if
						test="${(not empty userdetail.firstName)||(not empty userdetail.lastName)}">
						<div class="block">
							<h4 class="field_name">Имя и фамилия:</h4>
							<div class="field">${userdetail.firstName}
								${userdetail.lastName}</div>
						</div>
					</c:if>
					<c:if test="${not empty userdetail.birthDate}">
						<div class="block">
							<h4 class="field_name">Дата рождения:</h4>
							<div class="field">${userdetail.birthDate}</div>
						</div>
					</c:if>
					<c:if test="${not empty userdetail.description}">
						<div class="div_parent_table">
							<h4 class="field_name">О себе:</h4>
							<div class="div_child_table">${userdetail.description}</div>
						</div>
					</c:if>
				</div>
			</div>
			<a href="/spring/" title="Назад" id="left_button"><img
				id="image_left_button"
				src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
				height="70"></a>
		</div>
	</div>
</body>
</html>
