<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=windows-1251" pageEncoding="windows-1251"%>
<html>
<head>
	<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/960_24_col.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/text.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<title>uZability</title>
	<script src="<c:url value="/resources/js/quote.js" />"></script>
	<script src="<c:url value="/resources/js/changeNews.js" />"></script>
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon" > 
</head>
<body>
	<div class="container_24">
	<header>
		<h1 name="top"><a href="index.html"><img src="<c:url value="/resources/images/logo2.png" />" width="239" height="100" alt="�������"></a></h1>
		<div id="quote">
			<blockquote id="quote_sentence">��������� �������� ����� �������������� ������� � ������������� ������ ����������� 
������������� �����, ��� ��� �������� �� ����</blockquote>
			<p id="quote_author">����� �������</p>
			
		</div>
			<security:authorize access="isAnonymous()">
				<form name="f" action="<c:url value='j_spring_security_check'/>"
					method="POST" id="login" class="login">
					<p class="reg">
						<a class="enter" href="/spring/login">�����</a> ��� <a
							class="enter" href="/spring/registration">������������������</a>
					</p>
					<p class="field">
						<input type="text" name="j_username" id="username"
							class="text_login" placeholder="�����" required="required" />
					</p>
					<p class="field">
						<input type="password" name="j_password" id="password"
							class="text_login" placeholder="������" required="required" />
					</p>
					<p class="submit">
						<input type="submit" value="Ok" />
					</p>
				</form>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="login">
					<div class="photo_user"></div>
					<a href="<c:url value="j_spring_security_logout"/>" id="logout">�����</a>
					<div id="username_login">
						<security:authentication property="principal.username" />
					</div>
				</div>
			</security:authorize>
			<nav>
			<ul class="main_ul">
				<li><a id="a_glav" href="#">�������</a></li>
				<li><a id="a_stat" href="#">������</a></li>
				<li><a id="a_shabl" href="#">�������</a></li>
				<li><a id="a_knigi" href="#">�����</a></li>
				<li><a id="a_gloss" href="#">���������</a></li>
			</ul>
			<form action="search_action" id="search" class="search" enctype="text/plain">
						<div class="search_div">
						<input type="text" name="search_input" id="search_input" class="search_input" placeholder="�����" />
						<input id="search_submit" type="submit" value=""/>
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
								<a class="a_background_news" id="a_slide_1" href="#">����������� UXPeople 2013</a>
								<a class="a_background_news" id="a_slide_2" href="#">������� ����������� ���������� ���-������� � �� ������</a>
								<a class="a_background_news" id="a_slide_3" href="#">Flat Design, ��� ������ ��� ���������� ������ ������� ����������</a>
								<a class="a_background_news" id="a_slide_4" href="#">������ ������ ���������, ��������� �� ���������</a>
							</h2>
						</header>
						<p class="p_slide_background" id="p_slide_1">
							30 ������ � ������ ������� ����������� UXPeople, ����������� �������� �������������� �����������, user experience, ������� � ���������...
						</p>
						<p class="p_slide_background" id="p_slide_2">
							�� ���� ���� ������������ �� ��� ����� ���������� ����������� �������� �� ��������������, ���������� � ������ ������� � ����� ���������� ���������.
							������� ���� ������� �� ����������� ����� ��� ����������, ����� ��...
						</p>
						<p class="p_slide_background" id="p_slide_3">
							������� ������ ����������� ������ ���, ������, ������� � ���� �� ���� ����� ��������� ��������� Windows Phone
							(� Windows 8) � �� �������������� ������������� �������� � ��������� ����������� ������������...
						</p>
						<p class="p_slide_background" id="p_slide_4">
							���� ���� ������ ���������� �������� ������ ������� ����� ���, ��� ����������� ������������� ������� �������� � ���-�������,
							� ��� ������������� �������� �������, � �����...
						</p>
					</div>
			    </div>
				<div class="div_slide_image">
					<a href="#"> 
						<img src="<c:url value="/resources/images/ux-people3.JPG" />" id="img_slide_1" alt="" title=""/>
						<img src="<c:url value="/resources/images/china1.jpg" />" id="img_slide_2" alt="" title=""/>
						<img src="<c:url value="/resources/images/Flat.png" />" id="img_slide_3" alt="" title=""/>
						<img src="<c:url value="/resources/images/22.jpg" />" id="img_slide_4" alt="" title=""/>
					</a>
				</div>
				
				<ul class="ul_slide">
					<li id="li_new_first">
						<a id="a_slide_number_1" class="a_slide_button" href="#" onclick="changeNew(this.id)" onmouseover="onButton(this)" onmouseout="offButton(this)">
							<span class="span_link" id="span_slide_number_1">&nbsp;1&nbsp;</span>
						</a>
					</li>
					<li>
						<a id="a_slide_number_2" class="a_slide_button" href="#" onclick="changeNew(this.id)" onmouseover="onButton(this)" onmouseout="offButton(this)">
							<span class="span_link" id="span_slide_number_2">&nbsp;2&nbsp;</span>
						</a>
					</li>
					<li>
						<a id="a_slide_number_3" class="a_slide_button" href="#" onclick="changeNew(this.id)" onmouseover="onButton(this)" onmouseout="offButton(this)">
							<span class="span_link" id="span_slide_number_3">&nbsp;3&nbsp;</span>
						</a>
					</li>
					<li>
						<a id="a_slide_number_4" class="a_slide_button" href="#" onclick="changeNew(this.id)" onmouseover="onButton(this)" onmouseout="offButton(this)">
							<span class="span_link" id="span_slide_number_4">&nbsp;4&nbsp;</span>
						</a>
					</li>
				</ul>
			</div>
			<script src="<c:url value="/resources/js/temp.js" />"></script>
			<section class="section_article" id="post1">
				<header>
					<h2><a class="a_section_link" href="#">����������� UXPeople 2013</a></h2>
					<div class="section_time">
						<time datetime=2013-04-15> ������ 03, 2013</time> | <a class="new_read" href="#">usability</a>, <a class="new_read" href="#">���-������</a>, <a class="new_read" href="#">����������</a>
					</div>
				</header>
				<p class="section_figure" id="post1_image">
					<a href="#">
						<img src="<c:url value="/resources/images/ux-people.JPG" />" width="669" height="230" alt="����������">
					</a>
				</p>
				<p class="section_new">
				������ (���������-��� ��������� ����������, ��-� ����������� 59) ������� ����������� UXPeople,
				����������� �������� �������������� ���������������� �����������, user experience, ������� � ���������.
				� �������� ����������� ���������� ������� ����������� � ������������ �� ������, ��������, �������� � �������� ���������.
				����� �����������: ������� �������, ������� �����, Hegle Sarapuu, ��������� �������, ������ ������� � ��.
				<a class="new_read" href="#">������ ������...</a>
				</p>
			</section >
			<section class="section_article" id="post2">
				<header>
					<h2><a class="a_section_link" href="#">������� ����������� ���������� ���-������� � �� ������</a></h2>
					<div class="section_time">
						<time datetime=2013-04-16> ������� 28, 2013</time> | <a class="new_read" href="#">���-������</a>, <a class="new_read" href="#">����������</a>
					</div>
				</header>
				<p class="section_figure" id="post1_image">
					<a href="#">
						<img src="<c:url value="/resources/images/china2.jpg" />" width="669" height="224" alt="����������">
					</a>
				</p>
				<p class="section_new">
				�� ���� ���� ������������ �� ��� ����� ���������� ����������� �������� �� ��������������, ���������� � ������ �������
				� ����� ���������� ���������. ������� ���� ������� �� ����������� ����� ��� ����������, ����� �� ������ ������ �� ���������
				������� ��� ��������� ���������. ������ ����������, ��� ��� ����������� ������ � ������� �������� ������ � ����������,
				��� �������������� ��������� � ���������� ����� �������� � ���������� (��� �������) ������� (� ������ �����������) �� 
				������� ���������. 
				<a class="new_read" href="#">������ ������</a>
				</p>
			</section>
			<section class="section_article" id="post3">
				<header>
					<h2><a class="a_section_link" href="#">Flat Design, ��� ������ ��� ���������� ������ ������� ����������</a></h2>
					<div class="section_time">
						<time datetime=2013-04-16> ������� 24, 2013</time> | <a class="new_read" href="#">���-������</a>, <a class="new_read" href="#">����������</a>
					</div>
				</header>
				<p class="section_figure" id="post1_image">
					<a href="#">
						<img src="<c:url value="/resources/images/Flat1.png" />" width="672" height="260" alt="����������">
					</a>
				</p>
				<p class="section_new">
				���-�� �������, ��� ������� ������ ����������� ������ ���, ������, ������� � ���� �� ���� ����� ��������� ��������� Windows Phone 
				(� Windows 8) � �� �������������� ������������� �������� � ��������� ����������� ������������. ��� ���� ���� � ����� �� ����
				���������� ��������� ������������, ���������������� �������� � ���� Apple. ��� ���� ��������� � ��������, ������ ��� ��� ������� ����� � ���������� ����� ���������� � ���������� ����� ������� �, ��������,
				�������������� ������ ��� Microsoft.
				<a class="new_read" href="#">������ ������</a>
				</p>
			</section>
			<section class="section_article" id="post4">
				<header>
					<h2><a class="a_section_link" href="#">������ ������ ���������, ��������� �� ���������</a></h2>
					<div class="section_time">
						<time datetime=2013-04-15> ������� 02, 2013</time> | <a class="new_read" href="#">���-������</a>, <a class="new_read" href="#">usability</a>
					</div>
				</header>
				<p class="section_figure" id="post1_image">
					<a href="#">
						<img src="<c:url value="/resources/images/mint-screen.jpg" />" width="500" height="200" alt="����������">
					</a>
				</p>
				<p class="section_new">
				���������� ��������� ��������, ��������������� (��� ����� ����������), ��� ������� ������������ 
				� �������������� ���, ��� � �� ������� ����� �������. �������� ��� ������ �����, ���������� �� ������, 
				��������� �� ��� � ���� ��������� �� ���. ��������� � ��������� ���-������� ������� ������� �����������
				������ � �����, � ����������� ��� ������ ����� ������� ��������� ����, �� ���������� ��� ������� ����������
				��������� �������� ������� � ���-�������.
				<a class="new_read" href="#">������ ������</a>
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
			<div id="advertising"><a href="#"><img src="<c:url value="/resources/images/advert.png" />" width="230" height="366" alt="�������"></a></div>
		</aside>
	</div>
	<footer class="footer_main">
		Copyright �2013 uZability.
	</footer>
	<div class="bottom_nav_div">
		<a href="#" class="bottom_nav_a">� �����</a>
	</div>
	<a href="#top" id="up_button"><img id="image_up_button" src="<c:url value="/resources/images/arrow.png" />" width="70" height="70" ></a>
	<a href="#" id="feedback">�������� �����</a>
	</div>
	
</body>
</html>