<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../temp/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	
	<c:import url="../temp/header.jsp"></c:import>
	
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">ID</label>	
			<input type="text" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${ member.id}" disabled="disabled">
		</div>
		<div>
			<label for="exampleInputEmail1" class="form-label">name</label>	
			<input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${member.name }" disabled="disabled">
		</div>
			<input type="submit" value="수정">
	
</body>
</html>