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
<link href="<c:url value="/resources/css/articles.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/articles.css" />" rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>
<script src="<c:url value="/resources/js/changeNews.js" />"></script>
<script src="<c:url value="/resources/js/isEmptyTextArea.js" />"></script>
<script src="<c:url value="/resources/js/jquery-1.2.6.js" />"></script>
<script src="<c:url value="/resources/js/jquery.maskedinput.js" />"></script>
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
					<div class="photo_user"><a href="/spring/profile/<security:authentication property="principal.username" />"><img src="/spring/profile/image/getAvatar"  alt="" height=70 width=70/></a></div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">Выйти</a>
					<div id="username_login">
						<a href="/spring/profile/<security:authentication property="principal.username" />"><security:authentication property="principal.username" /></a>
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
				<section class="section_article" id="post2">
					<header id="header_withoutborder">
						<h2>
							<a class="a_section_link" href="/spring/articles/02_chinadesign">Главные
								особенности китайского веб-дизайна и их истоки</a>
						</h2>
						<div class="section_time">
							<time>28 Сентябрь 2014</time>
							| веб-дизайн интерфейсы
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/02_chinadesign"> <img
							src="<c:url value="/resources/images/china2.jpg" />" width="669"
							height="224" alt="Фотография">
						</a>
					</p>
					<p class="section_new">По роду моей деятельности ко мне часто
						обращаются иностранные компании за консультациями, аналитикой и
						другой помощью в сфере китайского интернета. Нередко дело доходит
						до локализации сайта или приложения, тогда же встает вопрос об
						отдельном дизайне под китайскую аудиторию. Вопрос правильный, так
						как современный подход к дизайну напрямую связан с конверсией, где
						незначительные изменения в интерфейсе могут принести к увеличению
						(или падению) прибыли (и других показателей) на десятки процентов.
						(Спросите веб-мастеров, которые работали в «адалте»: в начале
						2000-х они такие передовые вещи вытворяли с конверсией, до чего
						некоторые e-commerce сайты дошли только через 10 лет.) То же самое
						и в китайском интернете: некоторые интерфейсы и «западные» решения
						китайцам будут просто непонятны и не будут работать. Поэтому
						простой перевод сайта с одного языка на китайский дело
						недостаточное. Нужно принимать во внимание специфику китайского
						мышления, привычки китайцев и устоявшиеся практики китайского
						интернета, чтобы интернет-проект был успешен в Китае. Вот один
						наглядный пример.</p>
					<h4 class="h_article">О новых окнах и пример из практики</h4>
					<p class="paragraph">Один мой знакомый несколько лет назад
						занимался запуском интернет-магазина для китайских домохозяек из
						городов второго порядка. Вначале сделали современный магазин в
						западном стиле, чисто и ярко, JQuery, AJAX и другие навороты. Но
						несмотря на агрессивный маркетинг с продажами было все плохо.
						Посмотрели статистику: люди дальше главной страницы или страницы
						товара не проходят, кнопку «купить» жмут неохотно, количество
						регистраций близко к нулю, при этом в feedback-формы о проблемах
						никто не пишет. Решили провести акцию «расскажи о проблемах на
						сайте и получи подарок или 10 юаней на счет» и началось… Отзывы
						сыпались не переставая. Первое, что сделали мои коллеги — убрали
						весь Ajax с сайта, все ссылки сделали по-умолчанию открывающимися
						в новом окне, для регистрации оставили только сотовый телефон или
						QQ, прикрутили BBS (форум) и… еще через пару редизайнов проект
						завелся и продажи пошли вверх.</p>
					<p class="paragraph">Многие пользователи так описывали одну и
						ту же «проблему»: кликаю на регистрацию или «купить» — страница не
						реагирует (или не меняется). Начали изучать кейс и оказалось —
						народ просто игнорировал красиво всплывающие js-формы, или думал,
						что это реклама или разводка.</p>
					<p class="paragraph">А вот еще один частый случай: «хочу
						вернутся на предыдущую страницу, жму крестик — а у меня рабочий
						стол или вообще другой сайт показывается. На других сайтах все
						работает нормально!». Данный кейс (а подобных было много) наглядно
						говорит об уровне интернет-грамотности аудитории данного проекта.
						У китайцев за период плохого, но доступного интернета (когда на
						всех сайтах ссылки открываются в новых окнах) успело закрепиться
						ложное понимание, что кнопка «закрыть окно», это нечто
						возвращающее пользователя на предыдущую страницу. В это трудно
						поверить, но незнание этого «шокирующего» факта стоило компании
						немало потерянных пользователей.</p>
					<p class="paragraph">
						<strong>Мораль:</strong> хорошенько проанализируйте свою
						потенциальную аудиторию на готовность к вашим дизайнерским
						экспериментам. Одни и те же интерфейсы могут хорошо работать на
						сайте для шанхайских хипстеров и вообще не работать на сайте для
						провинциальных домохозяек.
					</p>
					<h4 class="h_article">Стереотипы китайского веб-дизайна</h4>
					<p class="paragraph" id="many_photo">
						<img src="<c:url value="/resources/images/china5.gif" />"
							width="213" height="170" alt="Фотография"><img
							src="<c:url value="/resources/images/china6.jpg" />" width="197"
							height="170" alt="Фотография"><img
							src="<c:url value="/resources/images/china7.jpg" />" width="189"
							height="170" alt="Фотография">
					</p>
					<p class="paragraph">Теперь попробуем собрать самые
						распространенные признаки (или стереотипы) типичного китайского
						сайта:</p>
					<ul>
						<li>Большие и перегруженные информацией веб-страницы, длиной
							с простыню. Создается ощущение, что китайские веб-мастера
							пытаются уместить всю информацию сайта на одной странице.</li>
						<li>Огромное количество ссылок, практическое отсутствие
							обычного (некликабельного) текста.</li>
						<li>Огромное количество рекламы, в том числе
							gif/flash-анимации и «летающих» по экрану блоков.</li>
						<li>Несколько чат-окон на странице (с технической
							поддержкой): одно окошко чата слева, три справа и одно прямо
							посередине экрана.</li>
						<li>Непонятная и запутанная навигация: горизонтальное меню
							сверху, два вертикальных по краям, одна навигация с выпадающими
							блоками, еще одна из 10 колонок в самом низу сайта.</li>
						<li>Страница обо всем и ни о чем конкретно: отсутствие
							какого-то определенного фокуса (задачи) у данной страницы.</li>
						<li>Яркий дизайн, разнообразная цветовая схема (не меньше 10
							различных цветов).</li>
						<li>Блок с прокручивающимся текстом. Желательно несколько
							таких блоков.</li>
					</ul>

					<h4 class="h_article">Почему китайский веб-дизайн так плох?</h4>
					<p class="paragraph">
						<strong>Особенность китайского веб-дизайна №1:
							Перегруженные информацией страницы</strong>
					</p>
					<figure class="sign">
						<p>
							<img src="<c:url value="/resources/images/china8.jpg" />"
								width="625" height="494" alt="Фотография">
						</p>

						<figcaption>Главная страница крупнейшего китайского
							портала Sohu.com</figcaption>
					</figure>
					<p class="paragraph">Пожалуй, с этим пунктом согласятся все.
						Сюда же можно отнести и другие отличия, например: «нереальное
						количество ссылок», «куча графики, анимации и рекламы»,
						«отсутствие фокуса у страницы» и т.д. Все эти пункты связывают с
						двумя причинами:</p>
					<p class="paragraph">
						<strong>1.</strong> Во времена «модемного» и лимитированного
						интернета, создатели первых китайских сайтов (обычно
						разнотематических порталов) пытались на главной странице поместить
						как можно больше информации и ссылок, чтобы пользователь мог
						загрузить эту страницу один раз, [отключиться от интернета]
						изучить ее и открыть нужные ему ссылки. Естественно все ссылки
						открывались в новых окнах по умолчанию, чтобы было удобно
						возвращаться на главную и путешествовать по сайту дальше. Со
						временем все привыкли к такому положению дел и подобный «дизайн»
						стал эталонным. И по-прежнему главные страницы основных
						медиа-гигантов Sina, Sohu, Tencent QQ, а также популярных торговых
						площадок не отличаются минималистичностью. Все эти сайты, которые
						входят в ТОП-10 или ТОП-50 самых посещаемых сайтов Синета
						естественным образом влияют на молодых китайских сайтостроителей.
					</p>
					<figure class="sign">
						<p>
							<img src="<c:url value="/resources/images/china9.jpg" />"
								width="625" height="373" alt="Фотография">
						</p>
						<figcaption>Главная страница китайского
							интернет-гиганта Sina</figcaption>
					</figure>
					<p class="paragraph">
						<strong>2.</strong> Вторая причина, с которой я не совсем
						согласен, но она довольно популярна у западных обывателей, что у
						китайцев отличается способ восприятия информации. Подробнее ее
						описал в своей статье <a
							href="http://blog.teamtreehouse.com/why-is-chinese-web-design-so-bad">"Why
							Is Chinese Web Design So Bad?"</a> Ник Джонсон (Nick Johnson),
						русский перевод статьи читайте на Хабре <a
							href="http://habrahabr.ru/post/113368/">"Почему китайский
							веб-дизайн так плох?"</a>.
					</p>
					<p class="paragraph">Да, китайское мировосприятие может
						отличаться от западного, особенно если мы пытаемся его измерить
						своей западной линейкой. Но на практике и по результатам
						многочисленных тестов и опросов китайцы все-таки выбирают удобство
						и чистоту интерфейса, а не засоренные сайты с непонятной
						навигацией. Вот один из таких опросов, где китайцы оценивали два
						сайта о недвижимости: один с «классическим китайским» дизайном,
						другой — сделанный на западный манер. 45 человек из 50 выбрали
						чистый интерфейс, сделанный «по-западному»</p>
					<p class="paragraph">
						<strong>Отсюда можно сделать два вывода:</strong>
					</p>
					<ul id="conclusion">
						<li>Многим китайцам свойственно оценивать «серьезность» сайта
							наличием на главной странице большого количества информации. Это
							напрямую связано с доверием к данному сайту.</li>
						<li>Китайцы активно пользуются встроенными чат-окнами для
							связи со службой поддержки. Причем, как показывает практика,
							доверие к электронной почте минимальное. Намного эффективнее
							работают онлайн-чаты (livechat-технологии) или поддержка через
							мессенджер QQ.</li>
					</ul>
					<p class="paragraph">
						<strong>Совет тут один:</strong> правильно оценивайте аудиторию
						вашего будущего сайта. Я уже приводил пример с «шанхайскими
						хипстерами» и «провинциальными домохозяйками». Если вы делаете
						сайт для более взрослой аудитории, то вам нужно соответствовать не
						перегибая палку. На сайтах для молодых и продвинутых можно не
						бояться экспериментировать и использовать западные практики. Одно
						точно: если у вас свой интернет-бизнес, то позаботьтесь о том,
						чтобы пользователи могли с вами связаться в один клик и получить
						ответ на свой вопрос в течение нескольких минут. Китайцы этим
						пользуются чаще других.
					</p>
				</section>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
								<div class="comment_form">
					<security:authorize access="isAnonymous()">
						<p class="regisration_message">
							Пожалуйста <a href="/spring/registration">зарегистрируйтесь</a>
							чтобы оставить свой комментарий
						</p>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<form:form action="addComment/2" modelAttribute="comment"
							name="user_comment_form" method="POST"
							onsubmit="return isEmptyForm()">
							<form:textarea name="cm" id="comment" path="commentText"
								class="comment_textarea" autocomplete="off" maxlength="2000" />
							<input id="comment_submit_button" class="comment_input"
								type="submit" value="Комментировать">
						</form:form>
					</security:authorize>
				</div>

				<div class="section_comment">
					<div id="div_comment_header">
						<h4>Комментарии</h4>
					</div>
					<ul class="ul_comment">
						<c:forEach items="${comments}" var="comment1">
							<li class="li_comment">
								<div class="imag_avatar">
									<img src="/spring/getAvatarForComment/${comment1.user.idUser}"
										height="70" width="70" />
								</div>
								<div class="comment_name_and_text">
									<div class="comment_header">
										<div class="comment_name">${comment1.user.login}</div>
										<time class="time_comment">${comment1.dateComment}</time>
										<div class="comment_clear"></div>
									</div>
									<div class="comment_text">${comment1.commentText}</div>
								</div>
								<div class="comment_clear"></div>
							</li>
						</c:forEach>
						
					</ul>
					
				</div>
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
				<a name="bottom"></a>
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