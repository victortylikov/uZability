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
							<a class="a_section_link" href="/spring/articles/05_blogdesign">Дизайн
								блога: какой он должен быть</a>
						</h2>
						<div class="section_time">
							<time>07 Январь 2015</time>
							| веб-дизайн
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/05_blogdesign"> <img
							src="<c:url value="/resources/images/blogdesign1.jpg" />"
							width="675" height="385" alt="Фотография">
						</a>
					</p>
					<p class="section_new">
						Предлагаю перевод статьи <a class="a_section_link"
							href="http://www.webdesignerdepot.com/2013/10/how-to-design-blogs/">How
							To Desing Blogs</a> за авторством Ezequiel Bruni.
					</p>
					<p class="paragraph">Привет, друзья. Как дизайнеры, каждый из
						нас работает в различных стилях и обычно тяготеет к различным
						видам проектов. Для меня это контент-ориентированные веб-сайты и
						нет ничего более подходящего, чем старый добрый блог.</p>
					<p class="paragraph">Для людей, у которых есть собственные
						блоги, преимущества очевидны:</p>
					<ul class="list_decimal">
						<li>Гибкий формат. Полная свобода, чтобы обсудить различные
							темы. Даже если блог имеет центральную тему, они могут время от
							времени отрываться от нее, чтобы исследовать другие идеи, которые
							их интересуют;</li>
						<li>Записи могут быть как короткими, так и длинными, как вам
							нравится;</li>
						<li>Записи не обязательно должны содержать текст. Видео и
							фото блоги могут быть привлекательными и популярными;</li>
						<li>Блоги можно использовать для становления кого-то в
							качестве эксперта в своей области, тем самым увеличивая
							возможности для бизнеса;</li>
						<li>Блоги невероятно легко создавать благодаря таким
							сервисам, как WordPress.com, Blogger и так далее.</li>
					</ul>
					<h4 class="h_article">Блоги практически не изменились</h4>
					<p class="paragraph">Независимо от типа блога, все они строятся
						по следующей системе:</p>
					<ul class="list_decimal">
						<li>Главная страница с последними записями (в полном объеме
							или в виде списка);</li>
						<li>Список категорий, обычно в боковой панели;</li>
						<li>Архивы статей по датам;</li>
						<li>Отдельные статьи с комментариями;</li>
						<li>Страница «Обо мне» и/или «Контакты».</li>
					</ul>
					<p class="paragraph">Это не плохая структура работает и знакома
						многим из нас. Хотя это не означает, что вы должны её
						придерживаться.</p>
					<p class="paragraph">Наша работа как дизайнеров заключается не
						только в том, чтобы удостовериться, что текст достаточного размера
						для чтения, а меню легко определяется, или кнопки достаточно
						большие для нажатия. Мы решаем проблемы. Мы уверены, что
						пользователям легко и быстро найти то, что они ищут. У нас есть
						считанные секунды, чтобы заинтересовать читателей и держать их на
						нашем сайте, так что мы должны подойти к вопросу творчески.</p>
					<p class="paragraph">В этой статье я собираюсь посмотреть на
						детали, которые являются общими для большинства блогов. Мы узнаем,
						как мы могли бы сделать их более удобными в использовании, более
						привлекательными, если можно так сказать.</p>
					<h4 class="h_article">Боковая панель</h4>
					<p class="paragraph">Одна из проблем боковой панели в том, что
						она слишком часто отвлекает меня от содержимого. Это может быть
						красочное анимированное объявление, что еще хуже, если оно со
						звуком и без кнопки его отключения. Или сама боковая панель
						конфликтует с остальной частью сайта. Порой, владельцы блогов
						умудряются впихнуть невпихуемое в боковую панель своего блога. Это
						приводит к тому, что боковая панель намного длиннее, чем статья.</p>
					<p class="paragraph">Например, разместить пять лет архивов,
						отсортированных по месяцам, в одной боковой панели не очень
						хорошая идея. Это может раздражать некоторых людей: «почему это
						боковая панель должна быть в два раза выше моего дисплея 1600?
						900».</p>
					<p class="paragraph">Теперь давайте начистоту. Я не говорю, что
						от сайдбара надо избавиться вовсе. Когда я листаю свой личный
						блог, я намерен использовать боковую панель для некоторых довольно
						важных вещей. Я хочу сказать, что боковые панели не следует
						фаршировать дополнительной информации и виджетов, и они не должны
						доминировать на странице. Их предназначение — средства навигации.
						Давайте относиться к ним таким образом. Если вы хотите показать
						больше информации, чем может уместится в боковой панели, покажите
						её в другом месте.</p>
					<h4 class="h_article">Отдельные записи</h4>
					<p class="paragraph">Я хотел бы поговорить об отдельных постах,
						прежде чем переходить к домашней странице. Потому что это самое
						важное в блоге. Да и главная страница редко будет начальной точкой
						путешествия пользователя по блогу. Чаще путешествие начинается с
						отдельных постов, на которые пользователи попадают из результатах
						поиска, ссылок, данных друзьями или другими сервисами.</p>
					<p class="paragraph">По этой причине убедитесь, что
						пользователю легко перемещаться далее по сайту, навигационное
						меню, поиск доступны на каждой странице вашего блога. Возможно,
						посетители ищут не только то, что изложено в данной статье. Читая
						блог, посетитель делает для себя новые открытия, и с нашей стороны
						выгодней ускорить этот процесс открытий. Пользователи, скорее
						всего, нажмут на привлекательный заголовок, чем будут искать
						ссылку категории, чтобы увидеть, что подобные статьи на вашем
						сайте. Поэтому вы должны предоставить ссылки на другой контент — и
						не обязательно похожий. Главное — интересный.</p>
					<p class="paragraph">Было бы не плохо чуть-чуть рассказать о
						себе на каждой странице. Если вы это сделаете в рамках короткого
						параграфа, могло разместить эту информацию в боковой панели. Если
						текста больше, вы могли бы разместить его под статьей, где
						пользователи увидят его после прочтения статьи.</p>
					<p class="paragraph">Резюмируя эту часть, помните, вы должны
						тратить больше времени на ваш контент и его дизайн. Так как,
						вероятнее всего, ваш контент — это то, что люди увидят вначале.</p>
					<h4 class="h_article">Домашняя страница</h4>
					<p class="paragraph">Многие люди выстраивают домашнюю страницу
						своего блога так, будто это будет первое, что увидит каждый
						пользователь. Это ошибка. Чаще всего только постоянные читатели
						начинают с просмотра домашней страницы. А так же посетители,
						которые после прочтения записи нажали на пункт «Главная» в меню.</p>
					<p class="paragraph">Если вы не ведете тамблелог, я бы
						рекомендовал отображать не более чем заголовок, анонс и миниатюра.
						Блоги, которые отображают записи полностью на домашней странице
						вынуждают посетителей крутить и крутить вниз, чтобы убедиться, что
						они ничего не пропустили. Некоторые люди решили это, разместив в
						боковой панели список последних записей, но я вижу это излишним.
						Такой список может быть полезен на каждой странице блога, кроме
						главной.</p>
					<p class="paragraph">Конечно, это не единственный вариант
						конструкции домашней страницы блога. Есть и другие способы
						представления содержимого, но я считаю, что такой подход является
						наиболее разумным с точки зрения читателя. Вам нужно больше
						доказательств? Посмотрите на сайты газет или журналов. Все они
						отображают ссылки на последние статьи в каждой из основных
						категорий.</p>
					<h4 class="h_article">Хронологическая навигация</h4>
					<p class="paragraph">На большинстве блогов у опубликованных
						постов стоит дата публикации. Это позволяет пользователям
						перемещаться по содержанию сайта по месяцам или годам. Если вы
						пишете о дизайнерских тенденциях, обзор технологий, решение
						политических вопросов, или что-нибудь еще, зависящее от даты, в
						этом безусловно есть смысл.</p>
					<p class="paragraph">Тем не менее, хронологическая навигация не
						всегда необходима. Изучите ваш контент. Если вы пишете о вещах,
						которые не меняются в спешке, как прошедшие исторические события
						или породы животных, вы совсем отказаться от навигации по времени.</p>
					<p class="paragraph">Ищите другие способы организации
						содержимого на основе вашей тематике. Категории никогда не выйдут
						из моды. На примере тематики искусства, Вы могли бы спроектировать
						свой блог таким образом, что люди могут просматривать Ваши
						сообщения по художникам или художественным стилям, упомянутых в
						этой записи.</p>
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
						<form:form action="addComment/5" modelAttribute="comment"
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
			<aside  id="aside">
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