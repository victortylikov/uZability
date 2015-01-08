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
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>

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
					height="100" alt="�������"></a>
			</h1>
			<div id="quote">
				<blockquote id="quote_sentence">��������� ��������
					����� �������������� ������� � ������������� ������ �����������
					������������� �����, ��� ��� �������� �� ����</blockquote>
				<p id="quote_author">����� �������</p>

			</div>
			<security:authorize access="isAnonymous()">
				<form name="f" action="<c:url value='/j_spring_security_check'/>"
					method="POST" id="login" class="login">
					<p class="reg">
						<a class="enter" href="/spring/login">�����</a> ��� <a
							class="enter" href="/spring/registration">������������������</a>
					</p>
					<p class="field">
						<input type="text" name="j_username" id="username"
							class="text_login" placeholder="�����" required="required"
							autocomplete="off" maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<p class="field">
						<input type="password" name="j_password" id="password"
							class="text_login" placeholder="������" required="required"
							maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<input id="id_remember_me" name="_spring_security_remember_me" type="checkbox" checked="checked">
					<p class="submit">
						<input type="submit" value="Ok" />
					</p>
				</form>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="login">
					<div class="photo_user">
						<a href="/spring/profile/<security:authentication property="principal.username" />"><img src="/spring/profile/image/getAvatar"  alt="" height=70 width=70/></a>
					</div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">�����</a>
					<div id="username_login">
						<a
							href="/spring/profile/<security:authentication property="principal.username" />"><security:authentication
								property="principal.username" /></a>
					</div>
				</div>
			</security:authorize>
			<nav>
				<ul class="main_ul">
					<li><a id="a_glav" href="/spring/">�������</a></li>
					<li><a id="a_stat" href="/spring/articles">������</a></li>
					<li><a id="a_knigi" href="/spring/books">�����</a></li>
					<li><a id="a_gloss" href="/spring/glossary">���������</a></li>
				</ul>
				<form action="search_action" id="search" class="search"
					enctype="text/plain">
					<div class="search_div">
						<input type="text" name="search_input" id="search_input"
							class="search_input" placeholder="�����" autofocus /> <input
							id="search_submit" type="submit" value="" />
					</div>
				</form>
			</nav>
		</header>
		<div class="main_part clearfix">
			<article class="grid_18 alpha">
				<div id="main_slide">
					<div class="div_slide_background">
						<div class="section_slide_background">
							<header class="header_background_news">
								<h2 class="h2_background_news">
									<a class="a_background_news" id="a_slide_1"
										href="/spring/articles/01_uxpeople">����������� UXPeople
										2013</a> <a class="a_background_news" id="a_slide_2"
										href="/spring/articles/02_chinadesign">������� �����������
										���������� ���-������� � �� ������</a> <a
										class="a_background_news" id="a_slide_3"
										href="/spring/articles/03_flatdesign">Flat Design, ���
										������ ��� ���������� ������ ������� ����������</a> <a
										class="a_background_news" id="a_slide_4"
										href="/spring/articles/04_beautyindesign">������ ������
										���������, ��������� �� ���������</a>
								</h2>
							</header>
							<p class="p_slide_background" id="p_slide_1">30 ������ �
								������ ������� ����������� UXPeople, ����������� ��������
								�������������� �����������, user experience, ������� �
								���������...</p>
							<p class="p_slide_background" id="p_slide_2">�� ���� ����
								������������ �� ��� ����� ���������� ����������� �������� ��
								��������������, ���������� � ������ ������� � ����� ����������
								���������. ������� ���� ������� �� ����������� ����� ���
								����������, ����� ��...</p>
							<p class="p_slide_background" id="p_slide_3">������� ������
								����������� ������ ���, ������, ������� � ���� �� ���� �����
								��������� ��������� Windows Phone (� Windows 8) � ��
								�������������� ������������� �������� � ��������� �����������
								������������...</p>
							<p class="p_slide_background" id="p_slide_4">���� ���� ������
								���������� �������� ������ ������� ����� ���, ��� �����������
								������������� ������� �������� � ���-�������, � ���
								������������� �������� �������, � �����...</p>
						</div>
					</div>
					<div class="div_slide_image">
						<a href="/spring/articles/01_uxpeople"> <img
							src="<c:url value="/resources/images/ux-people3.JPG" />"
							id="img_slide_1" alt="" title="" />
						</a> <a href="/spring/articles/02_chinadesign"> <img
							src="<c:url value="/resources/images/china1.jpg" />"
							id="img_slide_2" alt="" title="" />
						</a> <a href="/spring/articles/03_flatdesign"> <img
							src="<c:url value="/resources/images/Flat.png" />"
							id="img_slide_3" alt="" title="" />
						</a> <a href="/spring/articles/04_beautyindesign"> <img
							src="<c:url value="/resources/images/22.jpg" />" id="img_slide_4"
							alt="" title="" />
						</a>

					</div>

					<ul class="ul_slide">
						<li id="li_new_first"><a id="a_slide_number_1"
							class="a_slide_button" href="#" onclick="changeNew(this.id)"
							onmouseover="onButton(this)" onmouseout="offButton(this)"> <span
								class="span_link" id="span_slide_number_1">&nbsp;1&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_2" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_2">&nbsp;2&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_3" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_3">&nbsp;3&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_4" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_4">&nbsp;4&nbsp;</span>
						</a></li>
					</ul>
				</div>
				<script src="<c:url value="/resources/js/temp.js" />"></script>
				<section class="section_article" id="post1">
					<header>
						<h2>
							<a class="a_section_link" href="/spring/articles/01_uxpeople">${article.articleName}</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-15> ������ 03, 2013</time>
							| <a class="new_read" href="#">usability</a>, <a class="new_read"
								href="#">���-������</a>, <a class="new_read" href="#">����������</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/01_uxpeople"> 
						<img src="/spring/getArticleImage">
						<%-- <img
							src="<c:url value="/resources/images/ux-people.JPG" />"
							width="669" height="230" alt="����������"> --%>
						</a>
					</p>
					<p class="section_new">${article.articleSummary}
						<a class="new_read"
							href="/spring/articles/01_uxpeople">������ ������...</a>
					</p>
				</section>
				<section class="section_article" id="post2">
					<header>
						<h2>
							<a class="a_section_link" href="/spring/articles/02_chinadesign">�������
								����������� ���������� ���-������� � �� ������</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-16> ������� 28, 2013</time>
							| <a class="new_read" href="#">���-������</a>, <a
								class="new_read" href="#">����������</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/02_chinadesign"> <img
							src="<c:url value="/resources/images/china2.jpg" />" width="669"
							height="224" alt="����������">
						</a>
					</p>
					<p class="section_new">
						�� ���� ���� ������������ �� ��� ����� ���������� �����������
						�������� �� ��������������, ���������� � ������ ������� � �����
						���������� ���������. ������� ���� ������� �� ����������� �����
						��� ����������, ����� �� ������ ������ �� ��������� ������� ���
						��������� ���������. ������ ����������, ��� ��� ����������� ������
						� ������� �������� ������ � ����������, ��� ��������������
						��������� � ���������� ����� �������� � ���������� (��� �������)
						������� (� ������ �����������) �� ������� ���������. <a
							class="new_read" href="/spring/articles/02_chinadesign">������
							������</a>
					</p>
				</section>
				<section class="section_article" id="post3">
					<header>
						<h2>
							<a class="a_section_link" href="/spring/articles/03_flatdesign">Flat
								Design, ��� ������ ��� ���������� ������ ������� ����������</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-16> ������� 24, 2013</time>
							| <a class="new_read" href="#">���-������</a>, <a
								class="new_read" href="#">����������</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/03_flatdesign"> <img
							src="<c:url value="/resources/images/Flat1.png" />" width="672"
							height="260" alt="����������">
						</a>
					</p>
					<p class="section_new">
						���-�� �������, ��� ������� ������ ����������� ������ ���, ������,
						������� � ���� �� ���� ����� ��������� ��������� Windows Phone (�
						Windows 8) � �� �������������� ������������� �������� � ���������
						����������� ������������. ��� ���� ���� � ����� �� ���� ����������
						��������� ������������, ���������������� �������� � ���� Apple.
						��� ���� ��������� � ��������, ������ ��� ��� ������� ����� �
						���������� ����� ���������� � ���������� ����� ������� �,
						��������, �������������� ������ ��� Microsoft. <a class="new_read"
							href="/spring/articles/03_flatdesign">������ ������</a>
					</p>
				</section>
				<section class="section_article" id="post4">
					<header>
						<h2>
							<a class="a_section_link"
								href="/spring/articles/04_beautyindesign">������ ������
								���������, ��������� �� ���������</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-15> ������� 02, 2013</time>
							| <a class="new_read" href="#">���-������</a>, <a
								class="new_read" href="#">usability</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/04_beautyindesign"> <img
							src="<c:url value="/resources/images/mint-screen.jpg" />"
							width="500" height="200" alt="����������">
						</a>
					</p>
					<p class="section_new">
						���������� ��������� ��������, ��������������� (��� �����
						����������), ��� ������� ������������ � �������������� ���, ��� �
						�� ������� ����� �������. �������� ��� ������ �����, ����������
						�� ������, ��������� �� ��� � ���� ��������� �� ���. ��������� �
						��������� ���-������� ������� ������� ����������� ������ � �����,
						� ����������� ��� ������ ����� ������� ��������� ����, ��
						���������� ��� ������� ���������� ��������� �������� ������� �
						���-�������. <a class="new_read" href="/spring/articles/04_beautyindesign">������ ������</a>
					</p>
				</section>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
			</article>
			<aside>
				<h3>���������</h3>
				<ul class="categories_ul">
					<li><a href="#">Accessibility</a></li>
					<li><a href="#">Usability</a></li>
					<li><a href="#">User Experience</a></li>
					<li><a href="#">���-������</a></li>
					<li><a href="#">��������� �������</a></li>
					<li><a href="#">�����������</a></li>
					<li><a href="#">����������</a></li>
					<li><a href="#">�����������</a></li>
					<li><a href="#">������ � �����</a></li>
					<li><a href="#">������ �� ������</a></li>
					<li><a href="#">�������</a></li>
					<li><a href="#">����� � �����������</a></li>
					<li id="categories_li_last"><a href="#">������������</a></li>
				</ul>
				<div id="advertising">
					<a href="#"><img
						src="<c:url value="/resources/images/advert.png" />" width="230"
						height="366" alt="�������"></a>
				</div>
			</aside>
		</div>
		<footer class="footer_main"> Copyright �2013 uZability. </footer>
		<div class="bottom_nav_div">
			<a href="#" class="bottom_nav_a">� �����</a>
		</div>
		<a href="#top" title="�����" id="up_button"><img id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">�������� �����</a>
	</div>

</body>
</html>