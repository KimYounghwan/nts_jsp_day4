<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력 파라미터 한글 변환
	request.setCharacterEncoding("UTF-8");
	//content 파라미터 추출
	String jongryu = request.getParameter("jongryu");
	String content = request.getParameter("content");
	String money = request.getParameter("money");
	String date_at = request.getParameter("date_at");
	// JDBC 코딩
	// 1. jdbc driver로딩 395페이지 중간
	Class.forName("oracle.jdbc.driver.OracleDriver");
	// 오라클 접속  396페이지 상단
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String password = "hr";
	Connection conn = DriverManager.getConnection(url, user, password);
	// statement 생성
	//Statement stmt = conn.createStatement();
	// sql 작성, 전송 397페이지 하단
	// Ins,Upda,Del, Create, Alter, Drop -> executeUpdate()
	// Select -> executeQuery()
	// 401페이지 상단
	//String sql = "insert into account_book(no,jongryu,content,money,date_at)";
	//sql += " values(ACCOUNT_BOOK_SEQ.NEXTVAL,'"+jongryu+"', '"+content+"',"+money+",'"+date_at+"' ) ";
	//stmt.executeUpdate(sql);
	//stmt.close();
	//conn.close();
	
	String sql = "insert into account_book(no,jongryu,content,money,date_at)";
	sql += " values(ACCOUNT_BOOK_SEQ.NEXTVAL,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, jongryu);
	pstmt.setString(2, content);
	pstmt.setInt(3, Integer.parseInt(money));
	pstmt.setString(4, date_at);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 등록 작업</title>
</head>
<body>
	<h1>가계부 등록 작업 완료</h1>
	<h3>
		<a href="main.jsp">가계부 관리 메인</a>
	</h3>
	
</body>
</html>

