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
<link href="<c:url value="/resources/css/books.css" />" rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>
<script src="<c:url value="/resources/js/changeNews.js" />"></script>
<script src="<c:url value="/resources/js/float_aside.js" />"></script>
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
				<script src="<c:url value="/resources/js/temp.js" />"></script>
				<section class="section_book" id="post1">
					<header class="book_name">
						<h2 class="h2_book_name">
							<a class="a_section_link"
								href="/spring/books/02_designWebInterface">Дизайн для
								недизайнеров</a>
						</h2>
						<div class="english_title">
							<p class="">The Non-Designer`s Design Book</p>
						</div>
						<ol class="book_detail_info_title">
							<li>Авторы:</li>
							<li>Издательство:</li>
							<li>Год издания:</li>
							<li>Страниц:</li>
							<li>Формат:</li>
						</ol>
						<ol class="book_detail_info">
							<li>Робин Вильямс</li>
							<li>Символ (Россия)</li>
							<li>2014</li>
							<li>192</li>
							<li>70х100/16 (170х240 мм, увеличенный)</li>
						</ol>
					</header>
					<a href="/spring/books/01_infoArchitecture" class="book_image">
						<img src="<c:url value="/resources/images/book_img4.jpg" />"
						width="179" height="250" alt="Фотография">
					</a>
					<p class="p_short_review">Вы держите в руках замечательное
						пособие для тех, кто не является профессиональным дизайнером, но
						вынужден время от времени заниматься созданием различных образцов
						"дизайнерского искусства". Речь идет о визитных карточках,
						фирменных бланках и конвертах, флаерах, буклетах, информационных
						бюллетенях, открытках, рекламных модулях и многом другом. Здесь вы
						найдете множество примеров хорошего и плохого дизайна, а также
						четыре основных правила, соблюдая которые, вы преуспеете в
						создании привлекательных документов. Автор приводит базовую
						классификацию шрифтов, популярно объясняя их главные отличия и
						принципы совместного использования. Материал книги снабжен
						тестовыми заданиями, выполняя которые вы сможете закрепить
						полученные знания.</p>
					<p class="next_paragraph_annotation">Как правильно расположить
						текст? Как выбрать шрифт, чтобы ваше объявление заметили? На эти и
						многие другие вопросы вы найдете ответ в этой книге.</p>

				</section>
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
		<a href="#top" id="up_button"><img id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">Обратная связь</a>
	</div>

</body>
</html>