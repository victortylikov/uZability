<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
			<article class="grid_18 alpha" id="article_main_part">
				<section class="section_article" id="post4">
					<header id="header_withoutborder">
						<h2>
							<a class="a_section_link" href="/spring/articles/08_gamer">Понимание
								опыта геймеров с ограниченными возможностями</a>
						</h2>
						<div class="section_time">
							<time>27 Январь 2015</time>
							| accessibility
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/08_gamer"> <img
							src="<c:url value="/resources/images/gamer.png" />" width="484"
							height="252" alt="Фотография">
						</a>
					</p>
					<p class="section_new">Геймеры с ограниченными возможностями
						часто сталкиваются с трудностями из-за проблем доступности,
						встречающихся в играх, несмотря на некоторые хорошие ресурсы для
						разработчиков, которые предназначены для того, чтобы люди с
						ограниченными возможностями могли бы эффективно участвовать в
						игровом процессе.</p>
					<p class="paragraph">Мы попросили геймеров поделиться своими
						мыслями, переживаниями и мнениями об использовании в играх
						субтитров, идеями по улучшению игровой доступности, а также
						рассказами об игроках с ограниченными возможностями.</p>
					<p class="paragraph">«Я обнаружил, что single player почти во
						всех видеоиграх в настоящее время содержит субтитры, которые
						значительно помогают мне наслаждаться игрой и понимать игровой
						процесс», сказал Габриэль Каллахан (англ. Gabriel Callaghan),
						глухой геймер, который поделился своим опытом в отношении
						субтитров в играх. «Я могу иметь кохлеарный имплант (медицинский
						прибор, протез, позволяющий компенсировать потерю слуха некоторым
						пациентам с выраженной или тяжёлой степенью нейросенсорной
						(сенсоневральной) тугоухости — прим. перев.), который позволяет
						мне слышать, но мой уровень слуха всё же не достаточно хорош,
						чтобы чётко понимать речь в игре в полной мере. Таким образом,
						субтитры позволяют мне понять историю и диалоги вполне ясно, и они
						никогда не были навязчивыми».</p>
					<p class="paragraph">Брент Роджерс (англ. Brent Rogers), также
						глухой геймер, когда ему было предложено высказать мнение об
						использовании в игре субтитров и вспомогательных технологий,
						заявил, что «Всё, что лично мне когда-либо требовалось от игры,
						так это возможность включать и выключать субтитры к диалогу и
						подписи к игровым целям, тогда как возможность голосового чата
						считается бесполезной для нас [глухих геймеров]. Мы должны иметь
						возможность, там где может быть использована камера PlayStation,
						подписать друг друга в игре. Не нужно обязательно использовать
						гарнитуры с микрофонами, нужно, чтобы производитель игры
						предоставил возможность воспользоваться камерой и сделал это
						доступным в каждой игре, особенно универсальным образом. Эти две
						особенности очень важны для лучшего понимания в каждой игре и для
						лучшей коммуникации в режиме multiplayer или кооперативных играх»…
					</p>
					<p class="paragraph">
						В то время как существует несколько формализованных стандартов в
						отношении включения доступности в игры, AbleGamers Фонд
						предоставляет руководство по руководящим принципам доступности игр
						— Includification. Руководящие принципы делятся по таким
						ограничениям возможностей как подвижность, слух, зрение и
						когнитивные расстройства и были созданы, чтобы гарантировать, что
						доступ может быть реализован без всякого влияния на игровой
						процесс. Например, в области нарушений подвижности принципы
						включают наличие альтернативных конфигураций и переназначений
						клавиш, в области нарушений слуха они фокусируются на скрытой
						поддержке субтитров, в области нарушений зрения включают режим
						высокой контрастности и маркировку врага, а вот принципы в
						отношении обеспечения доступности для людей с когнитивными
						расстройствами фокусируются на предоставлении уровней сложности и
						игровых пособий. Доктор Скотт Холльер (англ. Scott Hollier) из
						организации Media Access Australia недавно написал статью под
						названием <a
							href="http://www.accessiq.org/news/w3c-column/2014/08/accessible-gaming-is-there-any-help-out-there">"Доступный
							гейминг: есть ли там какая-либо помощь?" </a>(англ. Accessible
						gaming: is there any help out there?), в которой он заявил, что
						«на самом деле не нужно просто принимать то, что игра не может
						иметь функции для людей с ограниченными возможностями, встроенные
						в неё в качестве дополнительных настроек».
					</p>
					<p class="paragraph">
						Дополнительная обратная связь в отношении вашего игрового опыта
						приветствуется. Более подробную информацию об игровых ресурсах,
						On-line сообществах и основных игровых возможностях можно найти на
						нашей <a
							href="http://www.mediaaccess.org.au/digital-technology/gaming">странице
							доступных игр.</a>
					</p>
					<p class="paragraph">
						(Оригинал <a
							href="http://www.mediaaccess.org.au/latest_news/digital-technology/understanding-the-experience-of-gamers-with-disabilities">«Understanding
							the experience of gamers with disabilities»</a>).
					</p>

				</section>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
				<div class="comment_form">
					<form:form action="addComment/8" modelAttribute="comment"
						name="user_comment_form" method="POST">
						<form:textarea id="comment" path="commentText"
							class="comment_textarea" autocomplete="off" maxlength="2000" />
						<input class="comment_input" type="submit" value="Комментировать">
					</form:form>
				</div>
			</article>
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
		<a href="#top" id="up_button"><img id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">Обратная связь</a>
	</div>
</body>
</html>