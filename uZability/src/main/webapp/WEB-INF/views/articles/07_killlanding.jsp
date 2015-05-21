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
							<a class="a_section_link" href="/spring/articles/07_killlanding">5
								убийц унылых лэндингов</a>
						</h2>
						<div class="section_time">
							<time>15 Январь 2015</time>
							| веб-дизайн интерфейсы
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/07_killlanding"> <img
							src="<c:url value="/resources/images/killlanding1.jpg" />"
							width="680" height="240" alt="Фотография">
						</a>
					</p>
					<p class="section_new">Существует множество пословиц,
						подразумевающих (или прямо заявляющих), что красота поверхностна и
						ограничивается тем, что с ее помощью можно достичь. «Красота без
						разума пуста», «встречают по одежке, провожают по уму» — лишь
						некоторые из них. Поскольку в индустрии веб-дизайна таланты
						сегодня встречаются сплошь и рядом, и практически кто угодно может
						создать «красивый» сайт, то становится все сложнее определить
						подлинные критерии красоты в веб-дизайне. То, что красиво на
						первый взгляд, на поверку может лишь мешать восприятию. Создание
						красивого сайта не должно идти в разрез с его юзабилити.</p>
					<p class="paragraph">Целью этой статьи было попытаться провести
						четкую границу между тем, что большинство пользователей считает
						красивым в веб-дизайне, и что действительно является таковым, а
						также определить некоторые основополагающие принципы, которые бы
						помогли дизайнерам создавать сайты не просто поверхностно
						красивые, но удобные и приятные в пользовании.</p>
					<h4 class="h_article">Градиенты, тени, отражения – о, мой бог!</h4>
					<p class="paragraph">Множество элементов можно отнести к
						категории «красивых» или «привлекательных» в контексте
						веб-дизайна. Но, с учетом ряда факторов, эта красота может
						оказаться лишь поверхностной. Можно ли назвать сайт
						привлекательным, если на нем имеются со вкусом расположенные
						падающие тени, градиенты или отражения? Если его цветовая схема
						комфортна для глаз? Если акцент сделан на крупных тщательно
						проработанных кнопках? Может ли все это стать критериями того, что
						должно считать красивым?</p>
					<p class="paragraph">Если вы отслеживали развитие индустрии
						веб-дизайна в течение последних пяти лет, вы, наверное,
						заглядывали хотя бы в одну из множества CSS-галерей. Здорово
						посмотреть на подобные вдохновляющие образцы, и я уверен, что все
						когда-то это делали, но тут необходимо быть осторожным, чтобы не
						впасть в подражательство, украшая свои сайты лишь затем, чтобы они
						могли стать достойны попадания в CSS-галерею.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign1.jpg" />"
								width="500" height="348" alt="Фотография">
						</p>
						<figcaption>
							На сайте <a href="https://www.mint.com/">Mint.com</a> есть все,
							что клиент может пожелать от дизайна стандарта «Веб 2.0».
						</figcaption>
					</figure>
					<p class="paragraph">Дизайнеры, разработчики и специалисты по
						вопросам стратегии наполнения, спланировавшие и создавшие многие
						из тех сайтов, что вошли в галереи, сделали то, что они сделали,
						поскольку, по их мнению, это улучшает пользовательское восприятие
						и общее качество сайта. По-настоящему красивые сайты и приложения
						из этих образцов не просто визуально красивы — они удобны в
						использовании, быстры и оптимизированы так, что в выигрыше
						остаются и пользователь, и владелец сайта.</p>
					<h4 class="h_article">Dribbble-синдром</h4>
					<p class="paragraph">После недавнего взлета популярности
						проекта Dribbble синдром подражания, похоже, стал набирать
						обороты. На Dribbble дизайнеры показывают фрагменты проектов, над
						которыми они работают в данный момент, и стиль этих небольших
						фрагментов начинает распространяться. Контекст и стратегия проекта
						остаются за кадром, однако стиль рассматривается как красивый сам
						по себе. Возможно, дизайнеру потребовалось несколько часов, дней
						или недель, чтобы дойти до решений, на которых основан данный
						дизайн, но, будучи представлен как вещь в себе, он становится не
						более чем приятным на вид фрагментом.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign2.jpg" />"
								width="500" height="464" alt="Фотография">
						</p>
						<figcaption>На Dribbble показаны вырванные из
							контекста образцы дизайна. Хорошо это или плохо?</figcaption>
					</figure>
					<p class="paragraph">Конечно, в цели этой статьи не входило
						винить ни тех, кто выкладывает свои дизайнерские идеи на Dribbble,
						ни тех, кто рассматривает их и дает обратную связь. Но не следует
						упускать из виду тот факт, что любое дизайнерское решение должно
						быть обусловлено конкретной необходимостью.</p>
					<h4 class="h_article">Сравнение с отсутствием стиля</h4>
					<p class="paragraph">Как измерить красоту? Если сайт неудобен в
						использовании, то не имеем ли мы дело с бесцельной красивостью?
						Посмотрите на сравнение, приведенное ниже.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign3.jpg" />"
								width="500" height="304" alt="Фотография">
						</p>
						<figcaption>
							Логотип и панель навигации сайта <a
								href="http://code.tutsplus.com/">Nettuts+</a>.
						</figcaption>
					</figure>
					<p class="paragraph">Мне кажется, что сайт Nettuts+ обладает
						очень приятным дизайном. Но является ли эта фантазийная панель
						навигации с логотипом более удобной в использовании, чем простая
						сине-белая версия, показанная в нижней части иллюстрации? По сути,
						некоторые могут утверждать, что упрощенная версия более удобна
						(хоть немного), чем «красивая» версия.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign4.jpg" />"
								width="500" height="600" alt="Фотография">
						</p>
						<figcaption>
							Сайт социальной сети <a href="https://www.facebook.com/">Facebook</a>.
						</figcaption>
					</figure>
					<p class="paragraph">Хотя сайт социальной сети Facebook в
						верхнем варианте и не покажется многим из нас таким уж красивым,
						он все же содержит привлекательные и эстетичные элементы (цвета,
						градиентную заливку, стилизованные кнопки и т.п.) Но, если
						упростить большинство из этих второстепенных элементов, скажется
						ли это отрицательно на удобстве сайта (конечно, при условии, что
						будут сделаны более контрастными обозначения форм в правом верхнем
						углу)?</p>
					<p class="paragraph">Если приятный вид сайта действительно
						настолько важен, то текущий дизайн Facebook должен выигрывать по
						сравнению с его упрощенной версией. Однако, как знать, возможно,
						упрощенная версия сайта еще даст фору украшенной?</p>
					<h4 class="h_article">Что делает дизайн удобным для
						пользования?</h4>
					<p class="paragraph">Я не собираюсь ратовать за всеобщее
						возвращение к синим ссылкам на белом фоне. В сущности, как я
						объясню далее, и Nettuts+, и Facebook можно с успехом
						охарактеризовать как действительно красивые веб-сайты. Эти примеры
						были приведены лишь для пояснения, и я вовсе не имею целью
						критиковать дизайнеров, создавших их.</p>
					<p class="paragraph">Скорее, я призываю дизайнеров помнить о
						двух вещах при добавлении «красивостей» и усовершенствований в
						свои работы, а именно:</p>
					<ul id="conclusion">
						<li>Интерактивные и интуитивные элементы страницы.</li>
						<li>Следование бренду и постоянство стиля.</li>
					</ul>
					<p class="paragraph">Если сосредоточиться на этих двух
						параметрах, то каждый пиксель будет служить определенной цели, что
						в итоге будет направлено на улучшение удобства пользования сайтом.
						Давайте рассмотрим оба этих параметра на нескольких простых
						примерах, чтобы проиллюстрировать их эффективность.</p>
					<p class="paragraph">Интерактивные и интуитивные элементы
						страницы делают дизайн функциональным.</p>
					<p class="paragraph">Если конкретный элемент дизайна делает
						сайт более дружелюбным, или если он содержит ненавязчивые
						подсказки для пользователя, это улучшает юзабилити. Ниже приведен
						пример с ресурса Design Informer:</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign5.jpg" />"
								width="500" height="175" alt="Фотография">
						</p>

					</figure>
					<p class="paragraph">На сайте Design Informer поле поиска
						подсвечивается при наведении курсора мыши. Эта ненавязчивая
						особенность очень элегантно выглядит в браузерах WebKit, поскольку
						в CSS3 предусмотрена анимированная подсветка. Фон поля поиска,
						заданный по умолчанию, мог бы быть чуть поярче, чтобы улучшить
						общее удобство сайта, но в данном конкретном случае ценно не
						столько исполнение, сколько сама идея.</p>
					<p class="paragraph">Этот очень простой эффект подсказывает
						пользователю, что он имеет дело с активным элементом, и делает
						поле поиска более привлекательным. Так, до смешного простой прием
						дает очень мощный эффект.</p>
					<p class="paragraph">Однако сама возможность использования
						эффектов анимации не означает, что их следует использовать. Если,
						как в случае с Design Informer, примененный эффект делает
						пользовательский интерфейс более интуитивным и легким в
						восприятии, то он вполне оправдан. Эту мысль очень хорошо
						сформулировал Стюарт Терсби (Stuart Thursby):</p>
					<blockquote class="statement">Если дизайнеры полагают,
						что использование HTML5 и CSS3 уже само по себе добавляет им
						дизайнерских навыков, то они сильно заблуждаются.</blockquote>
					<p class="paragraph">Добавляйте элемент, только если он придаст
						дополнительное удобство дизайну. Если дизайн не сделан более
						удобным с помощью специальных техник (CSS3, JavaScript или что-то
						еще), то дизайнер должен пересмотреть вопрос, стоит ли добавлять
						дополнительный код. “Украшение” дизайна может зайти так далеко,
						что даст обратный эффект, поэтому прежде чем добавлять какие-либо
						элементы, убедитесь, что они принесет пользу, а не вред.</p>
					<p class="paragraph">Еще один пример эффекта, который повышает
						удобство дизайна можно найти на новом сайте Soh Танаки. Посмотрите
						на скриншот:</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign6.jpg" />"
								width="500" height="281" alt="Фотография">
						</p>

					</figure>
					<p class="paragraph">Если навести курсор на любой из примеров
						кода на его сайте, вы заметите, что блок текста расширяется вправо
						(возможно, это реализовано с помощью jQuery, так, чтобы это
						работало во всех браузерах).</p>
					<p class="paragraph">Опять же, простой эффект, который
						представляет собой не просто украшение, а служит определенной
						цели. В учебных материалах примеры HTML-кода часто слишком длины и
						не помещаются в заданный текстовый блок, так что приходится либо
						разрывать код, либо использовать некрасивые полосы прокрутки.
						Решение Tanaka позволяет сделать примеры кода более
						привлекательными и читаемыми и снижает вероятность разрыва кода
						или возникновения полосы прокрутки.</p>
					<p class="paragraph">Таким образом, говоря о текстовых ссылках,
						изменяющих цвет при наведении, кнопках, которые двигаются при
						нажатии, создании легких интуитивных эффектов при помощи AJAX, мы
						рассматриваем дизайн не только как средство украшения, но как
						многогранное средство улучшения юзабилити.</p>
					<h4 class="h_article">Удобство не должно быть в ущерб красоте</h4>
					<p class="paragraph">Целью этой статьи было не призвать
						дизайнеров забыть о гладкости, сексуальности и красоте работ. Это
						должно быть очевидно из примеров прекрасных сайтов, которые
						характеризуются одновременно удобством и привлекательностью. Никто
						не ждет, что владельцы красивых сайтов внезапно откажутся от
						усовершенствований сайтов в пользу вида а-ля Craigslist.org, чтобы
						сделать их более удобными для пользователя.</p>
					<p class="paragraph">Скорее, мне хотелось напомнить о том, что
						красота сайта важна, но одной красоты мало, и чтобы назвать дизайн
						действительно красивым, нужно, чтобы он был функциональным,
						соответствовал определенной цели и служил привлекательности,
						полезности и узнаваемости сайта. Все эти параметры составляют
						суммарный эффект дизайна.</p>
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
						<form:form action="addComment/7" modelAttribute="comment"
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