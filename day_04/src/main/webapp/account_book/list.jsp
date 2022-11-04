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
	String sql = "Select * from account_book order by no desc";
	ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 목록</title>
</head>
<body>
	<h1>가계부 목록</h1>
	<h3>
		<a href="insert_form.jsp">가계부 등록</a>
	</h3>
	
	<table>
	  <tr>
	    <th>번 호</th>
	    <th>종 류</th>
	    <th>내 용</th>
	    <th>금 액</th>
	    <th>날 짜</th>
	  </tr>
	  <%
	  while(rs.next()){
			int no = rs.getInt("no");
			String jongryu = rs.getString("jongryu");
			String content = rs.getString("content");
			int money  = rs.getInt("money");
			String date_at = rs.getString("date_at");
	  %>
	  <tr>
	    <td><%= no %></td>
	    <td><%= jongryu %></td>
	    <td><a href="detail.jsp?no=<%= no %>"><%= content %></a></td>
	    <td><%= money %></td>
	    <td><%= date_at %></td>
	  </tr>
	  <% 
	  }
	  stmt.close();
	  conn.close();
	  %>
	</table>


</body>
</html>