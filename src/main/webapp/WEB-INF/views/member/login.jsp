<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/bootStrap.jsp"></c:import>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<h1>로그인</h1>
	<form action="./login.do" method="post">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">ID</label>	
			<input type="text" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
		<div>
			<label for="exampleInputEmail1" class="form-label">PW</label>	
			<input type="password" name="pw" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		</div>
			<input type="submit" value="로그인">
	</form>
</body>
</html>