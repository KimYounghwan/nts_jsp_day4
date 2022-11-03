<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력 파라미터 한글 변환
	request.setCharacterEncoding("UTF-8");
	//content 파라미터 추출
	String content = request.getParameter("content");
	// JDBC 코딩
	// 1. jdbc driver로딩 395페이지 중간
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>