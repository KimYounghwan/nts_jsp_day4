ㅁ<%@page import="java.sql.ResultSet"%>
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
	String sql = "Select * from account_book WHERE no = " + no;
	ResultSet rs = stmt.executeQuery(sql);
	
	String jongryu = null; //
	String content = null; //
	int money = -1; //
	String date_at = null; //
	if( rs.next() ){
		jongryu = rs.getString("jongryu");
		content = rs.getString("content");
		money  = rs.getInt("money");
		date_at = rs.getString("date_at");
	}
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 상세 보기</title>
</head>
<body>
	<h1>가계부 상세 보기</h1>
	<%
	if(content == null){ //해당가계부이 삭제
	%>
	<h3>없거나 삭제된 정보입니다</h3>
	<%
	}else{
	%>
	<form action="update_action.jsp" method="post">
		가계부 번호: <%= no %> <br>
		<input type="hidden" name="no" value="<%=no%>">
		종 류: 
		<input type="text" name="jongryu" value="<%=jongryu%>">
		<br>
		가계부 내용: 
		<input type="text" name="content" value="<%=content%>">
		<br>
		금 액: 
		<input type="text" name="money" value="<%=money%>">
		<br>
		날 짜: 
		<input type="date" name="date_at" value="<%=date_at%>">
		<input type="submit" value="가계부 저장">
	</form>
	<%
	}
	%>
	<h3>
		<a href="todo.jsp">할일 관리 메인</a>
	</h3>


</body>
</html>

