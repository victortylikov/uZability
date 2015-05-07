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
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>

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
					<security:authorize access="isAnonymous()">
						<p class="regisration_message">
							Пожалуйста <a href="/spring/registration">зарегистрируйтесь</a>
							чтобы оставить свой комментарий
						</p>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<form:form action="addComment/8" modelAttribute="comment"
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
			
			