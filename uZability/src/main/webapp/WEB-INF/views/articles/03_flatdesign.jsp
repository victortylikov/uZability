<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/articles.css" />"
	rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>
<script src="<c:url value="/resources/js/changeNews.js" />"></script>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_24">
		<header>
			<h1 name="top">
				<a href="index.html"><img
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
					<div class="photo_user"></div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">Выйти</a>
					<div id="username_login">
						<security:authentication property="principal.username" />
					</div>
				</div>
			</security:authorize>
			<nav>
				<ul class="main_ul">
					<li><a id="a_glav" href="/spring/">Главная</a></li>
					<li><a id="a_stat" href="#">Статьи</a></li>
					<li><a id="a_shabl" href="#">Шаблоны</a></li>
					<li><a id="a_knigi" href="#">Книги</a></li>
					<li><a id="a_gloss" href="#">Глоссарий</a></li>
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
			<article class="grid_18 alpha" id="article_main_part">
				<section class="section_article" id="post3">
					<header id="header_withoutborder">
						<h2>
							<a class="a_section_link" href="/spring/articles/03_flatdesign">Flat
								Design, или почему все «кинулись» делать плоские интерфейсы</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-16> Октябрь 24, 2013</time>
							| <a class="new_read" href="#">веб-дизайн</a>, <a
								class="new_read" href="#">интерфейсы</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/03_flatdesign"> <img
							src="<c:url value="/resources/images/Flat1.png" />" width="672"
							height="260" alt="Фотография">
						</a>
					</p>
					<p class="section_new">В какой-то момент мне казалось, что не
						проходило и дня, чтобы среди тех людей, на которых я подписан, или
						среди источников, которые я читаю, не проскакивало хоть что-то,
						что касалось бы «плоского» дизайна. Вбейте в Bing, Google, Yandex
						слова «flat design» или «плоский дизайн» - и вы легко найдете
						огромное количество материалов: от обзоров и примеров, до
						аналитических и исторических измышлений или просто мыслей вслух.</p>
					<p class="paragraph">Я считаю, что это прекрасно. Прекрасно,
						что мы как сообщество думаем о том, чем мы занимаемся или что мы
						видим вокруг, и пытаемся это как-то осознать, вербализировать. Нам
						нужны дискуссии и обсуждения, нам нужны многие и многие статьи и
						отдельные высказывания, чтобы прочувствовать тот момент, в котором
						мы находимся.</p>
					<p class="paragraph">Кто-то говорит, что плоский дизайн
						интерфейсов пришел или, точнее, объявил о себе во всей красе
						благодаря платформе Windows Phone (и Windows 8) с ее
						революционными стилистически простыми и даже намеренно упрощенными
						интерфейсами. Это было ново и свежо на фоне повального увлечения
						скеуморфными, натуралистичными иконками в мире Apple. Это было
						интересно и необычно, в каком-то смысле, знаково, потому что как
						минимум резко и необратимо решил поменяться и обновиться такой
						большой и, казалось, неповоротливый монстр как Microsoft.</p>

				</section>

				<script src="<c:url value="/resources/js/cross.js" />"></script>
			</article>
			<aside>
				<h3>Категории</h3>
				<ul class="categories_ul">
					<li><a href="#">Accessibility</a></li>
					<li><a href="#">Usability</a></li>
					<li><a href="#">User Experience</a></li>
					<li><a href="#">Веб-дизайн</a></li>
					<li><a href="#">Векторная графика</a></li>
					<li><a href="#">Инструменты</a></li>
					<li><a href="#">Интерфейсы</a></li>
					<li><a href="#">Инфографика</a></li>
					<li><a href="#">Работа с видео</a></li>
					<li><a href="#">Работа со звуком</a></li>
					<li><a href="#">События</a></li>
					<li><a href="#">Текст и Типографика</a></li>
					<li id="categories_li_last"><a href="#">Тестирование</a></li>
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
		<a href="#top" id="up_button"><img id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">Обратная связь</a>
	</div>
</body>
</html>