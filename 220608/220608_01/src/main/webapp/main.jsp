<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인 페이지</title>
		<style>
			li {
				display: inline-block;
				width: 100px;
				list-style: none;
				margin: 0 auto;
				text-align: center;
				padding: 10px;
				border: 5px solid lightgray;
			}
			li:hover {
				background-color: black;
				color: white;
			}
		</style>
	</head>
	<body>
		<%
			String grade = (String)session.getAttribute("grade");	// String type output
		%>
		
		<h1><%=grade %>님, 접속을 환영합니다.</h1>
		<ul>
			<li>메뉴1</li>
			<li>메뉴2</li>
			<li>메뉴3</li>
			
			<%
				if(grade.equals("관리자"))
				{
					%><li>관리메뉴</li><%
				}
			%>
		</ul>
	</body>
</html>