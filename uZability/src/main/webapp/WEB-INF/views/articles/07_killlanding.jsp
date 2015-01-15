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
	<link href="<c:url value="/resources/css/articles.css" />" rel="stylesheet">
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
					<p class="submit">
						<input type="submit" value="Ok" />
					</p>
				</form>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="login">
					<div class="photo_user"><a href="/spring/profile/<security:authentication property="principal.username" />"><img src="/spring/profile/image/getAvatar"  alt="" height=70 width=70/></a></div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">�����</a>
					<div id="username_login">
						<a href="/spring/profile/<security:authentication property="principal.username" />"><security:authentication property="principal.username" /></a>
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
			<article class="grid_18 alpha" id="article_main_part">
				<section class="section_article" id="post4">
					<header id="header_withoutborder">
						<h2>
							<a class="a_section_link"
								href="/spring/articles/07_killlanding">5 ����� ������ ���������</a>
						</h2>
						<div class="section_time">
							<time datetime=2013-04-15> ������� 02, 2013</time>
							| <a class="new_read" href="#">���-������</a>, <a
								class="new_read" href="#">usability</a>
						</div>
					</header>
					<p class="section_figure" id="post1_image">
						<a href="/spring/articles/07_killlanding"> <img
							src="<c:url value="/resources/images/killlanding1.jpg" />"
							width="500" height="200" alt="����������">
						</a>
					</p>
					<p class="section_new">���������� ��������� ��������,
						��������������� (��� ����� ����������), ��� ������� ������������ �
						�������������� ���, ��� � �� ������� ����� �������. �������� ���
						������ �����, ���������� �� ������, ��������� �� ��� � ����
						��������� �� ���. ��������� � ��������� ���-������� �������
						������� ����������� ������ � �����, � ����������� ��� ������ �����
						������� ��������� ����, �� ���������� ��� ������� ����������
						��������� �������� ������� � ���-�������. ��, ��� ������� ��
						������ ������, �� ������� ����� ���� ������ ����������. ��������
						��������� ����� �� ������ ���� � ������ � ��� ���������.</p>
					<p class="paragraph">����� ���� ������ ���� ���������� ��������
						������ ������� ����� ���, ��� ����������� ������������� �������
						�������� � ���-�������, � ��� ������������� �������� �������, �
						����� ���������� ��������� ���������������� ��������, ������� ��
						������� ���������� ��������� ����� �� ������ ������������
						��������, �� ������� � �������� � �����������.</p>
					<h4 class="h_article">���������, ����, ��������� � �, ��� ���!</h4>
					<p class="paragraph">��������� ��������� ����� ������� �
						��������� ���������� ��� ����������������� � ���������
						���-�������. ��, � ������ ���� ��������, ��� ������� �����
						��������� ���� �������������. ����� �� ������� ����
						���������������, ���� �� ��� ������� �� ������ �������������
						�������� ����, ��������� ��� ���������? ���� ��� �������� �����
						��������� ��� ����? ���� ������ ������ �� ������� ���������
						������������� �������? ����� �� ��� ��� ����� ���������� ����, ���
						������ ������� ��������?</p>
					<p class="paragraph">���� �� ����������� �������� ���������
						���-������� � ������� ��������� ���� ���, ��, ��������,
						����������� ���� �� � ���� �� ��������� CSS-�������. �������
						���������� �� �������� ������������� �������, � � ������, ��� ���
						�����-�� ��� ������, �� ��� ���������� ���� ����������, ����� ��
						������ � ���������������, ������� ���� ����� ���� �����, ����� ���
						����� ����� �������� ��������� � CSS-�������.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign1.jpg" />"
								width="500" height="348" alt="����������">
						</p>
						<figcaption>
							�� ����� <a href="https://www.mint.com/">Mint.com</a> ���� ���,
							��� ������ ����� �������� �� ������� ��������� ���� 2.0�.
						</figcaption>
					</figure>
					<p class="paragraph">���������, ������������ � ����������� ��
						�������� ��������� ����������, �������������� � ��������� ������
						�� ��� ������, ��� ����� � �������, ������� ��, ��� ��� �������,
						���������, �� �� ������, ��� �������� ���������������� ����������
						� ����� �������� �����. ��-���������� �������� ����� � ����������
						�� ���� �������� �� ������ ��������� ������� � ��� ������ �
						�������������, ������ � �������������� ���, ��� � ��������
						�������� � ������������, � �������� �����.</p>
					<h4 class="h_article">Dribbble-�������</h4>
					<p class="paragraph">����� ��������� ������ ������������
						������� Dribbble ������� ����������, ������, ���� ��������
						�������. �� Dribbble ��������� ���������� ��������� ��������, ���
						�������� ��� �������� � ������ ������, � ����� ���� ���������
						���������� �������� ����������������. �������� � ��������� �������
						�������� �� ������, ������ ����� ��������������� ��� �������� ���
						�� ����. ��������, ��������� ������������� ��������� �����, ����
						��� ������, ����� ����� �� �������, �� ������� ������� ������
						������, ��, ������ ����������� ��� ���� � ����, �� ���������� ��
						����� ��� �������� �� ��� ����������.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign2.jpg" />"
								width="500" height="464" alt="����������">
						</p>
						<figcaption>�� Dribbble �������� ��������� ��
							��������� ������� �������. ������ ��� ��� �����?</figcaption>
					</figure>
					<p class="paragraph">�������, � ���� ���� ������ �� �������
						������ �� ���, ��� ����������� ���� ������������ ���� �� Dribbble,
						�� ���, ��� ������������� �� � ���� �������� �����. �� �� �������
						�������� �� ���� ��� ����, ��� ����� ������������ ������� ������
						���� ����������� ���������� ��������������.</p>
					<h4 class="h_article">��������� � ����������� �����</h4>
					<p class="paragraph">��� �������� �������? ���� ���� �������� �
						�������������, �� �� ����� �� �� ���� � ���������� �����������?
						���������� �� ���������, ����������� ����.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign3.jpg" />"
								width="500" height="304" alt="����������">
						</p>
						<figcaption>
							������� � ������ ��������� ����� <a
								href="http://code.tutsplus.com/">Nettuts+</a>.
						</figcaption>
					</figure>
					<p class="paragraph">��� �������, ��� ���� Nettuts+ ��������
						����� �������� ��������. �� �������� �� ��� ����������� ������
						��������� � ��������� ����� ������� � �������������, ��� �������
						����-����� ������, ���������� � ������ ����� �����������? �� ����,
						��������� ����� ����������, ��� ���������� ������ ����� ������
						(���� �������), ��� ���������� ������.</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign4.jpg" />"
								width="500" height="600" alt="����������">
						</p>
						<figcaption>
							���� ���������� ���� <a href="https://www.facebook.com/">Facebook</a>.
						</figcaption>
					</figure>
					<p class="paragraph">���� ���� ���������� ���� Facebook �
						������� �������� � �� ��������� ������ �� ��� ����� �� ��������,
						�� ��� �� �������� ��������������� � ���������� �������� (�����,
						����������� �������, ������������� ������ � �.�.) ��, ����
						��������� ����������� �� ���� �������������� ���������, ��������
						�� ��� ������������ �� �������� ����� (�������, ��� �������, ���
						����� ������� ����� ������������ ����������� ���� � ������ �������
						����)?</p>
					<p class="paragraph">���� �������� ��� ����� �������������
						��������� �����, �� ������� ������ Facebook ������ ���������� ��
						��������� � ��� ���������� �������. ������, ��� �����, ��������,
						���������� ������ ����� ��� ���� ���� ����������?</p>
					<h4 class="h_article">��� ������ ������ ������� ���
						�����������?</h4>
					<p class="paragraph">� �� ��������� �������� �� ��������
						����������� � ����� ������� �� ����� ����. � ��������, ��� �
						������� �����, � Nettuts+, � Facebook ����� � �������
						���������������� ��� ������������� �������� ���-�����. ��� �������
						���� ��������� ���� ��� ���������, � � ����� �� ���� �����
						����������� ����������, ��������� ��.</p>
					<p class="paragraph">������, � �������� ���������� ������� �
						���� ����� ��� ���������� ������������ � ������������������ �
						���� ������, � ������:</p>
					<ul id="conclusion">
						<li>������������� � ����������� �������� ��������.</li>
						<li>���������� ������ � ����������� �����.</li>
					</ul>
					<p class="paragraph">���� ��������������� �� ���� ����
						����������, �� ������ ������� ����� ������� ������������ ����, ���
						� ����� ����� ���������� �� ��������� �������� ����������� ������.
						������� ���������� ��� ���� ��������� �� ���������� �������
						��������, ����� ����������������� �� �������������.</p>
					<p class="paragraph">������������� � ����������� ��������
						�������� ������ ������ ��������������.</p>
					<p class="paragraph">���� ���������� ������� ������� ������
						���� ����� �����������, ��� ���� �� �������� ������������
						��������� ��� ������������, ��� �������� ���������. ���� ��������
						������ � ������� Design Informer:</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign5.jpg" />"
								width="500" height="175" alt="����������">
						</p>

					</figure>
					<p class="paragraph">�� ����� Design Informer ���� ������
						�������������� ��� ��������� ������� ����. ��� ������������
						����������� ����� ��������� �������� � ��������� WebKit, ���������
						� CSS3 ������������� ������������� ���������. ��� ���� ������,
						�������� �� ���������, ��� �� ���� ���� ������, ����� ��������
						����� �������� �����, �� � ������ ���������� ������ ����� ��
						������� ����������, ������� ���� ����.</p>
					<p class="paragraph">���� ����� ������� ������ ������������
						������������, ��� �� ����� ���� � �������� ���������, � ������
						���� ������ ����� ���������������. ���, �� �������� ������� �����
						���� ����� ������ ������.</p>
					<p class="paragraph">������ ���� ����������� �������������
						�������� �������� �� ��������, ��� �� ������� ������������. ����,
						��� � ������ � Design Informer, ����������� ������ ������
						���������������� ��������� ����� ����������� � ������ �
						����������, �� �� ������ ��������. ��� ����� ����� ������
						������������� ������ ������ (Stuart Thursby):</p>
					<blockquote class="statement">���� ��������� ��������,
						��� ������������� HTML5 � CSS3 ��� ���� �� ���� ��������� ��
						������������ �������, �� ��� ������ ������������.</blockquote>
					<p class="paragraph">���������� �������, ������ ���� �� �������
						�������������� �������� �������. ���� ������ �� ������ �����
						������� � ������� ����������� ������ (CSS3, JavaScript ��� ���-��
						���), �� �������� ������ ������������ ������, ����� �� ���������
						�������������� ���. ���������� ������� ����� ����� ��� ������,
						��� ���� �������� ������, ������� ������ ��� ��������� �����-����
						��������, ���������, ��� ��� �������� ������, � �� ����.</p>
					<p class="paragraph">��� ���� ������ �������, ������� ��������
						�������� ������� ����� ����� �� ����� ����� Soh ������. ����������
						�� ��������:</p>
					<figure class="sign">
						<p>
							<img
								src="<c:url value="/resources/images/beautyindesign6.jpg" />"
								width="500" height="281" alt="����������">
						</p>

					</figure>
					<p class="paragraph">���� ������� ������ �� ����� �� ��������
						���� �� ��� �����, �� ��������, ��� ���� ������ ����������� ������
						(��������, ��� ����������� � ������� jQuery, ���, ����� ���
						�������� �� ���� ���������).</p>
					<p class="paragraph">����� ��, ������� ������, �������
						������������ ����� �� ������ ���������, � ������ ������������
						����. � ������� ���������� ������� HTML-���� ����� ������� ����� �
						�� ���������� � �������� ��������� ����, ��� ��� ���������� ����
						��������� ���, ���� ������������ ���������� ������ ���������.
						������� Tanaka ��������� ������� ������� ���� �����
						���������������� � ��������� � ������� ����������� ������� ����
						��� ������������� ������ ���������.</p>
					<p class="paragraph">����� �������, ������ � ��������� �������,
						���������� ���� ��� ���������, �������, ������� ��������� ���
						�������, �������� ������ ����������� �������� ��� ������ AJAX, ��
						������������� ������ �� ������ ��� �������� ���������, �� ���
						������������ �������� ��������� ���������.</p>
					<h4 class="h_article">�������� �� ������ ���� � ����� �������</h4>
					<p class="paragraph">����� ���� ������ ���� �� ��������
						���������� ������ � ���������, ������������� � ������� �����. ���
						������ ���� �������� �� �������� ���������� ������, �������
						��������������� ������������ ��������� � ������������������. �����
						�� ����, ��� ��������� �������� ������ �������� ��������� ��
						������������������ ������ � ������ ���� �-�� Craigslist.org, �����
						������� �� ����� �������� ��� ������������.</p>
					<p class="paragraph">������, ��� �������� ��������� � ���, ���
						������� ����� �����, �� ����� ������� ����, � ����� ������� ������
						������������� ��������, �����, ����� �� ��� ��������������,
						�������������� ������������ ���� � ������ �����������������,
						���������� � ������������ �����. ��� ��� ��������� ����������
						��������� ������ �������.</p>
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
		<a href="#top" id="up_button"><img id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">�������� �����</a>
	</div>
</body>
</html>