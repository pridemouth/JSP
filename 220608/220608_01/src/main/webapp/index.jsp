<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 페이지 </title>
	</head>
	<body>
		<form method="post" action="login.jsp">
			ID : <input type="text" name="user_id" autocomplete="off"><br>
			PW : <input type="password" name="user_pw"><br>
			<input type="submit" value="Log in">
		</form>
	</body>
</html>