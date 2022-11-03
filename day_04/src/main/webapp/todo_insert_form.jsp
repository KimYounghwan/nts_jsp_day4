<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일 등록 폼</title>
</head>
<body>
	<h1>할일 등록 폼</h1>
	<form action="todo_insert_action.jsp" method="post">
		할일 내용: 
		<input type="text" name="content">
		<input type="submit" value="할일저장">
	</form>
	

</body>
</html>