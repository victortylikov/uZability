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
<link href="<c:url value="/resources/css/glossary.css" />"
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
				<section class="section_glossary">
					<header class="header_glossary">
						<h3 class="h3_glossary">Инженерная психология</h3>
					</header>
					<p>
						<span class="span_italic">Инженерная психология</span> — отрасль
						науки, изучающая психологические особенности труда человека при
						взаимодействии его с техническими средствами в процессе
						производственной и управленческой деятельности; результаты
						изысканий используются для оптимизации деятельности людей в
						системах «человек-машина», а также в эргономике при проектировании
						новых технических средств и технологий.
					</p>
				</section>
				<section class="section_glossary">
					<header class="header_glossary">
						<h3>Психология труда</h3>
					</header>
					<p>
						<span class="span_italic">Психология труда</span> — отрасль
						психологии, изучающая психологические аспекты трудовой
						деятельности. Возникла на рубеже 19-20 вв. в связи с научной
						организацией труда (НОТ) и решением вопросов профессионального
						отбора, профессиональной ориентации, борьбой с профессиональным
						утомлением, несчастными случаями и т. д. Широко применяются тесты;
						получила развитие психология профессий (напр., авиационная,
						космическая психология, психология конвейерного труда,
						сельскохозяйственных профессий и т. д.). Развивается в контакте с
						физиологией труда, инженерной психологией, эргономикой,
						технической эстетикой и др.
					</p>
				</section>
				<section class="section_glossary">
					<header class="header_glossary">
						<h3>Человек-оператор</h3>
					</header>
					<p>
						<span class="span_italic">Человек-оператор</span> — это любой
						человек, управляющий машиной: диспетчер аэропорта, рабочий-
						станочник, домохозяйка у плиты или с пылесосом и т.д. — для
						эргономиста все они являются операторами. Эргономика и ее методы в
						последнее время все шире используются при проектировании не только
						технических устройств, но и архитектурных объектов, интерьеров,
						элементов их оборудования. Поэтому представляется целесообразным в
						этом случае вместо понятия «машина» употреблять более обобщенные
						понятия «изделие», «предмет», а вместо термина «оператор»
						применять обозначения, подходящие данному действию, —
						«потребитель», «зритель» и т.п.
					</p>
				</section>
				<section class="section_glossary">
					<header class="header_glossary">
						<h3>
							<a class="a_section_link" href="/spring/glossary/e_ergonomics">Эргономика</a>
						</h3>
					</header>
					<p>
						<span class="span_italic">Эргономика</span> — отрасль науки,
						изучающая человека (или группу людей) и его (их) деятельность в
						условиях производства с целью совершенствования орудий, условий и
						процесса труда. Основной объект исследования эргономики — системы
						«человек-машина», в т. ч. и т. н. эргатические системы; метод
						исследования — системный подход.<a class="new_read"
							href="/spring/glossary/e_ergonomics">Читать дальше...</a>
					</p>
				</section>
				<section class="section_glossary">
					<header class="header_glossary">
						<h3>Эстетика техническая</h3>
					</header>
					<p>
						<span class="span_italic">Эстетика техническая</span> — изучает
						социально-культурные, технические и эстетические проблемы
						формирования гармоничной предметной среды, создаваемой средствами
						промышленного производства для обеспечения наилучших условий
						труда, быта и отдыха людей. Составляя теоретическую основу
						дизайна, эстетика техническая изучает его общественную природу и
						закономерности развития, принципы и методы художественного
						конструирования, проблемы профессионального творчества
						художника-конструктора (дизайнера).
					</p>
				</section>
				<section class="section_glossary">
					<header class="header_glossary">
						<h3>Юзабилити (Usability)</h3>
					</header>
					<p>
						<span class="span_italic">Юзабилити (Usability)</span> — понятие в
						микроэргономике, эргономическая характеристика степени
						удобности предмета для применения пользователями при достижении
						определённых целей в некотором контексте. Термин имеет связь с
						понятием «эргономичность», но в отличие от последнего меньше
						ассоциируется с технической эстетикой, с внешним видом и более
						привязан к утилитарности используемого объекта
					</p>
				</section>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
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