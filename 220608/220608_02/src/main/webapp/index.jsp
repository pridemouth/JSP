<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터베이스 연결 테스트</title>
	</head>
	<body>
		<%
			Connection conn = null;	// 위에서 import한 java.sql.*에 들어있는 클래스.
			Statement stmt = null;	// 동일함.
			
			try
			{
				String url = "jdbc:mysql://127.0.0.1:3306/study";
				// url : 리소스의 name과 location을 같이 갖고 있는 것.
				// jdbc, mysql을 경유해 동작함을 의미.
				// ip와 포트번호, db 이름
				
				String id = "root";
				String pw = "iotiot";
				
				// Class.forName("com.mysql.jdbc.Driver");	// 5. 버전 방식
				Class.forName("com.mysql.cj.jdbc.Driver");	// 8. 버전 방식
				// jdbc 파일의 readme 파일에 적혀있음.
				
				conn = DriverManager.getConnection(url, id, pw);
				stmt = conn.createStatement();
				// sql문을 전달해 줄 statement는 connection 객체를 통해 생성됨.
				
				//	query 문 전달을 위한 String형 변수
				String query = "select * from register;";
				
				//	query문을 전달받아 mysql에서 실행.
				//	결과물은 언제나 ResultSet 타입임.
				ResultSet rs = stmt.executeQuery(query);
				
				// 객체 주소값이 나올 것.
				// 원하는 결과는 따로따로 분리해내는 과정이 필요.
				out.print(rs);
				
				//	while문으로 분리해냄.
				while(rs.next())
				{
					String uid = rs.getString("id");
					out.print("<h1>" + uid + "</h1>");
				}
				
				// out.print("<h1>정상 접속 확인</h1>");
			}
			catch(Exception e)
			{
				out.print("<h1>ERR : " + e + "</h1>");
			}
		
		%>
	</body>
</html>