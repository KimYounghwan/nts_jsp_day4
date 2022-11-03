<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	// 오라클 접속  396페이지 상단
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String password = "hr";
	Connection conn = DriverManager.getConnection(url, user, password);
	// statement 생성
	Statement stmt = conn.createStatement();
	String sql = "Select * from todo order by no desc";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){//커서 한칸내림
		int no = rs.getInt("no");
		String content = rs.getString("content");
		Date created_at = rs.getDate("created_at");
		out.println( no );
	}
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일 목록</title>
</head>
<body>
	<h1>할일 목록</h1>
	

</body>
</html>