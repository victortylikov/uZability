<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<header>
	<h1 name="top">
		<a href="/spring/"><img
			src="<c:url value="/resources/images/logo2.png" />" width="239"
			height="100" alt="Логотип"></a>
	</h1>
	<div id="quote">
		<blockquote id="quote_sentence">Трудность создания опыта
			взаимодействия состоит в необходимости понять потребности
			пользователей лучше, чем они понимают их сами</blockquote>
		<p id="quote_author">Джесс Гарретт</p>

	</div>
	<security:authorize access="isAnonymous()">
		<form name="f" action="<c:url value='/j_spring_security_check'/>"
			method="POST" id="login" class="login">
			<p class="reg">
				<a class="enter" href="/spring/login">Войти</a> или <a class="enter"
					href="/spring/registration">Зарегистрироваться</a>
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
			<input id="id_remember_me" name="_spring_security_remember_me"
				type="checkbox" checked="checked">
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