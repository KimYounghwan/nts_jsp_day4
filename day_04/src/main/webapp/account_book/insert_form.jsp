<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 등록 폼</title>
</head>
<body>
	<h1>가계부 등록 폼</h1>
	<form action="insert_action.jsp" method="post">
		수입/지출 : <input type="radio" name="jongryu" value="수입">수입
					<input type="radio" name="jongryu" value="지출" checked>지출
		<br>
		가계부 내용: 
		<input type="text" name="content">
		<br>
		금액 : 
		<input type="number" name="money" placeholder="원화단위 금액 입력">
		<br>
		날짜 : 
		<input type="date" name="date_at">
		<br>		
		<input type="submit" value="저장">
	</form>
	<h3>
		<a href="todo.jsp">할일 관리 메인</a>
	</h3>
	
</body>
</html>