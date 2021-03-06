<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>

	<h1>List of users</h1>

	<c:if test="${not empty listUsers}">
		<TABLE>
			<THEAD>
				<TR>
					<TH>Login</TH>
					<TH>Password</TH>
					<TH>Email</TH>
					<TH>Role</TH>
				</TR>
			</THEAD>
			<TBODY>
				<c:forEach items="${listUsers}" var="user">
					<TR>
						<TD><a href="/spring/info/${user.login}">${user.login}</a></TD>
						<TD>${user.password}</TD>
						<TD>${user.email}</TD>
						<c:if test="${!empty user.roles}">
							<c:forEach items="${user.roles}" var="role">
								<TD>${role.role}</TD>
							</c:forEach>
						</c:if>
					</TR>
				</c:forEach>
			</TBODY>
		</TABLE>
	</c:if>
	<p>
		<a href="/spring/">back</a>
	</p>
</body>
</html>
