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
<link href="<c:url value="/resources/css/articles.css" />"
	rel="stylesheet">
<title>Articles | uZability</title>
<script src="<c:url value="/resources/js/jquery-1.2.6.js" />"></script>
<script src="<c:url value="/resources/js/quote.js" />"></script>
<script src="<c:url value="/resources/js/changeNews.js" />"></script>
<script src="<c:url value="/resources/js/float_aside.js" />"></script>
<script src="<c:url value="/resources/js/feedbackForm.js" />"></script>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_24">
		<header>
			<h1 name="top">
				<a href="/spring/"><img
					src="<c:url value="/resources/images/logo2.png" />" width="239"
					height="100" alt="Логотип"></a>
			</h1>
			<div id="quote">
				<blockquote id="quote_sentence">Трудность создания
					опыта взаимодействия состоит в необходимости понять потребности
					пользователей лучше, чем они понимают их сами</blockquote>
				<p id="quote_author">Джесс Гарретт</p>

			</div>
			<security:authorize access="isAnonymous()">
				<form name="f" action="<c:url value='/j_spring_security_check'/>"
					method="POST" id="login" class="login">
					<p class="reg">
						<a class="enter" href="/spring/login">Войти</a> или <a
							class="enter" href="/spring/registration">Зарегистрироваться</a>
					</p>
					<p class="field">
						<input type="text" name="j_username" id="username"
							class="text_login" placeholder="логин" required="required"
							autocomplete="off" maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<p class="field">
						<input type="password" name="j_password" id="password"
							class="text_login" placeholder="пароль" required="required"
							maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<p class="submit">
						<input type="submit" value="Ok" />
					</p>
				</form>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="login">
					<div class="photo_user">
						<a
							href="/spring/profile/<security:authentication property="principal.username" />"><img
							src="/spring/profile/image/getAvatar" alt="" height=70 width=70 /></a>
					</div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">Выйти</a>
					<div id="username_login">
						<a
							href="/spring/profile/<security:authentication property="principal.username" />"><security:authentication
								property="principal.username" /></a>
					</div>
				</div>
			</security:authorize>
			<nav>
				<ul class="main_ul">
					<li><a id="a_glav" href="/spring/">Главная</a></li>
					<li><a id="a_stat" href="/spring/articles">Статьи</a></li>
					<li><a id="a_knigi" href="/spring/books">Книги</a></li>
					<li><a id="a_gloss" href="/spring/glossary">Глоссарий</a></li>
				</ul>
				<form action="search_action" id="search" class="search"
					enctype="text/plain">
					<div class="search_div">
						<input type="text" name="search_input" id="search_input"
							class="search_input" placeholder="поиск" autofocus /> <input
							id="search_submit" type="submit" value="" />
					</div>
				</form>
			</nav>
		</header>
		<div class="main_part clearfix">
			<article class="grid_18 alpha">
				<c:forEach items="${listArticles}" var="article">
					<section class="section_article" id="post1">
						<header>
							<h2>
								<a class="a_section_link" href="${article.articleHref}">${article.articleName}</a>
							</h2>
							<div class="section_time">
								<time>${article.articleDate}</time>
								| <c:if test="${!empty article.themes}">
									<c:forEach items="${article.themes}" var="theme">
										${theme.theme}
									</c:forEach>
								</c:if>
							</div>
						</header>
						<p class="section_figure" id="post1_image">
							<a href="${article.articleHref}"> <img
								src="/spring/getArticleImage/${article.idArticle}"> 
							</a>
						</p>
						<p class="section_new">${article.articleSummary}
							<a class="new_read" href="${article.articleHref}">Читать
								дальше...</a>
						</p>
					</section>
				</c:forEach>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
			</article>
			<aside id="aside">
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
			height="70"></a>
		<div id="wrapper_div_slider_feedback">
			<div id="wrapper_feedback">
				<input type="button" id="feedback" value="Обратная связь" />
			</div>
		</div>
		<div id="div_slider_feedback">
			<a title="Закрыть" class="close_button"><img id="close_image"
				src="<c:url value="/resources/images/x_button1.png" />" width="20"
				height="20"></a>
			<div id="wrapper_feedback_form">
				<form action="sendEmailFeedback" class="form_feedback">
					<p class="wrapper_feedback_form_field"><label for="feedback_form_input_name">Ваше имя:</label><input autocomplete="off" id="feedback_form_input_name" name='feedback_form_input_name'/></p>
					<p class="wrapper_feedback_form_field"><label for="feedback_form_input_email">Ваш email:</label><input	autocomplete="off" id="feedback_form_input_email" name='feedback_form_input_email'/></p>
					<p class="wrapper_feedback_form_field"><label for="feedback_form_textarea_message">Сообщение:</label><textarea id="feedback_form_textarea_message" name='feedback_form_textarea_message'></textarea></p>
					<p class="wrapper_feedback_form_field"><input id="feedback_form_submit" type="submit" value="Отправить" ></p>
				</form>
			</div>
		</div>
		<div class="feedback_background"></div>
	</div>

</body>
</html>