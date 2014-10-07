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
<link href="<c:url value="/resources/css/books.css" />" rel="stylesheet">
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
					<div class="photo_user"><a href="/spring/profile/<security:authentication property="principal.username" />"><img src="/spring/profile/image/getAvatar"  alt="" height=70 width=70/></a></div>
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
								href="/spring/books/01_infoArchitecture">Информационная
								архитектура в Интернете</a>
						</h2>
						<div class=div_author_name>
							<p class="p_author_name">Луис Розенфельд, Питер Морвиль</p>
						</div>
						<div class=div_add_information>
							<p class="p_add_information">Издательство: Символ, 2010 г.,
								608 стр.</p>
						</div>
					</header>
					<a href="/spring/books/01_infoArchitecture" class="book_image">
						<img src="<c:url value="/resources/images/book1.jpg" />"
						width="179" height="250" alt="Фотография">
					</a>
					<p class="p_short_review">
						Третье издание знаменитой книги Питера Морвиля и Луиса Розенфельда
						"Информационная архитектура в Интернете" станет незаменимым
						источником информации для всех, чья деятельность связана с
						разработкой веб-сайтов. Под одной обложкой собран исчерпывающий
						материал о фундаментальных основах информационной архитектуры:
						авторы рассматривают не только интерфейс пользователя, контент и
						структуру сайта, но и вопросы, затрагивающие корпоративную
						иерархию и политику.<a class="new_read"
							href="/spring/books/01_infoArchitecture">Читать дальше...</a>
					</p>
				</section>
				<section class="section_book" id="post2">
					<header class="book_name">
						<h2 class="h2_book_name">
							<a class="a_section_link"
								href="/spring/books/01_infoArchitecture">Проектирование
								веб-интерфейсов</a>
						</h2>
						<div class=div_author_name>
							<p class="p_author_name">Билл Скотт, Тереза Нейл</p>
						</div>
						<div class=div_add_information>
							<p class="p_add_information">Издательство: Символ, 2010 г.,
								352 стр.</p>
						</div>
					</header>
					<a href="/spring/books/01_infoArchitecture" class="book_image">
						<img src="<c:url value="/resources/images/book_img_2.jpg" />"
						width="179" height="250" alt="Фотография">
					</a>
					<p class="p_short_review">
						Авторы - специалисты по проектированию пользовательских
						интерфейсов - предлагают более 75 шаблонов проектирования
						взаимодействия для создания собственных удобных и привлекательных
						веб­приложений. Приводимые шаблоны иллюстрируют шесть ключевых
						принципов проектирования, позволяющих в полной мере использовать
						возможности современных веб­технологий и обеспечить эффективность
						процесса взаимодействия с пользователем. Обсуждается и ряд
						антишаблонов, которых следует избегать при проектировании
						интерфейсов.<a class="new_read"
							href="/spring/books/01_infoArchitecture">Читать дальше...</a>
					</p>
				</section>
				<section class="section_book" id="post3">
					<header class="book_name">
						<h2 class="h2_book_name">
							<a class="a_section_link"
								href="/spring/books/01_infoArchitecture">Дизайн привычных
								вещей</a>
						</h2>
						<div class=div_author_name>
							<p class="p_author_name">Дональд Норман</p>
						</div>
						<div class=div_add_information>
							<p class="p_add_information">Издательство: Манн, 2012 г., 272
								стр.</p>
						</div>
					</header>
					<a href="/spring/books/01_infoArchitecture" class="book_image">
						<img src="<c:url value="/resources/images/book_img3.jpg" />"
						width="179" height="250" alt="Фотография">
					</a>
					<p class="p_short_review">
						Даже умный человек чувствует себя подчас дураком, пытаясь
						сообразить, на какую кнопку нажать, чтобы включить свет, как
						разжечь духовку и что делать с дверью - тянуть, толкать или
						раздвигать. Причиной тому дизайн, забывающий о нуждах
						пользователей и основах когнитивной психологии, считает автор
						книги, Дональд Норман, - человек, которого Business Week назвала
						«одним из влиятельнейших дизайнеров в мире».<a class="new_read"
							href="/spring/books/01_infoArchitecture">Читать дальше...</a>
					</p>
				</section>
				<section class="section_book" id="post4">
					<header class="book_name">
						<h2 class="h2_book_name">
							<a class="a_section_link"
								href="/spring/books/01_infoArchitecture">Дизайн для
								недизайнеров</a>
						</h2>
						<div class=div_author_name>
							<p class="p_author_name">Робин Вильямс</p>
						</div>
						<div class=div_add_information>
							<p class="p_add_information">Издательство: Символ, 2014 г., 192
								стр.</p>
						</div>
					</header>
					<a href="/spring/books/01_infoArchitecture" class="book_image">
						<img src="<c:url value="/resources/images/book_img4.jpg" />"
						width="179" height="250" alt="Фотография">
					</a>
					<p class="p_short_review">
						Вы держите в руках замечательное пособие для тех, кто не является
						профессиональным дизайнером, но вынужден время от времени
						заниматься созданием различных образцов "дизайнерского искусства".
						Речь идет о визитных карточках, фирменных бланках и конвертах,
						флаерах, буклетах, информационных бюллетенях, открытках, рекламных
						модулях и многом другом. Здесь вы найдете множество примеров
						хорошего и плохого дизайна, а также четыре основных правила,
						соблюдая которые, вы преуспеете в создании привлекательных
						документов.<a class="new_read"
							href="/spring/books/01_infoArchitecture">Читать дальше...</a>
					</p>
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