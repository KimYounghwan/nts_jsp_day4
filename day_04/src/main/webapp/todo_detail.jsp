<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//상세하게볼 할일번호 파라미터 추출
	String no = request.getParameter("no");
	// 오라클 검색
	Class.forName("oracle.jdbc.driver.OracleDriver");
	// 오라클 접속  396페이지 상단
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String password = "hr";
	Connection conn = DriverManager.getConnection(url, user, password);
	// statement 생성
	Statement stmt = conn.createStatement();
	String sql = "Select * from todo WHERE no = " + no;
	ResultSet rs = stmt.executeQuery(sql);
	
	String content = null; //할일내용
	if( rs.next() ){
		content = rs.getString("content");
	}
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일 상세 보기</title>
</head>
<body>
	<h1>할일 상세 보기</h1>
	<%
	if(content == null){ //해당할일이 삭제
	%>
	<h3>없거나 삭제된 정보입니다</h3>
	<%
	}else{
	%>
	<form action="todo_update_action.jsp" method="post">
		할일 번호: <%= no %> <br>
		<input type="hidden" name="no" value="<%=no%>">
		할일 내용: 
		<input type="text" name="content" value="<%=content%>">
		<input type="submit" value="할일저장">
	</form>
	<%
	}
	%>
	<h3>
		<a href="todo.jsp">할일 관리 메인</a>
	</h3>


</body>
</html>

