<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>로그인 처리 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		
			String adminId = "admin";
			String adminPw = "1111";
			String userId = "user";
			String userPw = "2222";
			
			String id = request.getParameter("user_id");
			String pw = request.getParameter("user_pw");
			
			if(id.equals(adminId) && pw.equals(adminPw))
			{
				// 관리자로 로그인 성공
				session.setAttribute("grade", "관리자");	//	String type input
				response.sendRedirect("main.jsp");
			}
			else if(id.equals(userId) && pw.equals(userPw))
			{
				// 일반 회원으로 로그인 성공
				session.setAttribute("grade", "일반회원");	//	String type input
				response.sendRedirect("main.jsp");
			}
			else
			{
				// 로그인 실패
				// javascript로 작성하는 것도 가능함.
				%>
				<script>
					alert("로그인에 실패하였습니다.");
					location.href = "index.jsp";
				</script>
				<%
			}
			
		%>
		
		<h1><%=id %></h1>
		<h1><%=pw %></h1>
	</body>
</html>