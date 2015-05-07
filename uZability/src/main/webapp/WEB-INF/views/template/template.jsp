<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>

<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_24">

		<!-- Header -->
		<tiles:insertAttribute name="header" />

		<div class="main_part clearfix">
		
			<!-- Body Page -->
			<tiles:insertAttribute name="body" />
			
			<aside>
				<h3>Категории</h3>
				<ul class="categories_ul">
					<li><a href="/spring/articles/order/1">Usability</a></li>
					<li><a href="/spring/articles/order/2">Веб-дизайн</a></li>
					<li><a href="/spring/articles/order/3">Интерфейсы</a></li>
					<li><a href="/spring/articles/order/4">События</a></li>
					<li><a href="/spring/articles/order/5">Accessibility</a></li>
					<li id="categories_li_last"><a href="/spring/articles/order/6">Тестирование</a></li>
				</ul>
				<div id="advertising">
					<a href="#"><img
						src="<c:url value="/resources/images/advert.png" />" width="230"
						height="366" alt="Реклама"></a>
				</div>
			</aside>
		</div>
		<footer class="footer_main"> Copyright ©2013 uZability. </footer>
		<div class="bottom_nav_div">
			<a href="#" class="bottom_nav_a">О сайте</a>
		</div>
		<a href="#top" title="Вверх" id="up_button"><img
			id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">Обратная связь</a>
	</div>

</body>
</html>