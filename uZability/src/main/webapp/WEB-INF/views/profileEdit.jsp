<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
			<h3 id="h3_detail_info">Личная информация</h3>
			<div class="data_user">
				<div class="block_detail">
					<form:form action="editProfilePost" modelAttribute="userDetail"
						method="POST">
						<div class="block">
							<h4 class="field_name">Имя:</h4>
							<div class="field">
								<form:input path="firstName" autocomplete="off" value="${userdetail.firstName}"/>
							</div>
						</div>
						<div class="block">
							<h4 class="field_name">Фамилия:</h4>
							<div class="field">
								<form:input path="lastName" autocomplete="off" />
							</div>
						</div>

						<div class="block">
							<h4 class="field_name">Дата рождения:</h4>
							<div class="field"></div>
						</div>


						<div class="div_parent_table">
							<h4 class="field_name">О себе:</h4>
							<div class="div_child_table"></div>
						</div>
						<p>
							<input type="submit" value="Сохранить">
						</p>
					</form:form>
				</div>
			</div>
			<a
				href="/spring/profile/<security:authentication property="principal.username" />"
				title="Назад" id="left_button"><img id="image_left_button"
				src="<c:url value="/resources/images/arrowLeft.png" />" width="70"
				height="70"></a>
		</div>
	</div>
</body>
</html>
