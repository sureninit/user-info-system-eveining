<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="login" method="post">
			<div>
				<label>User name</label> <input type="text" name="username">
			</div>

			<div>
				<label>Password</label> <input type="password" name="password">
			</div>
			<div>
				<input type="submit" value="login">
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${j_csrf_token}">
		</form>
	</div>
</body>
</html>