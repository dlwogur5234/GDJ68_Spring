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
	<section class="text-center">
		<h1 class="mb-5 mt-3">회원가입</h1>
		<form action="./memberUpdate" method="post">
				
				  <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Password</label>
				    <input type="password" value="${member.pw}" class="form-control" id="exampleInputPassword1" name="pw">
				  </div>
				   <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">Name</label>
				    <input type="text" class="form-control" value="${member.name}" id="exampleInputPassword1" name="name">
				  </div>
				   <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">email</label>
				    <input type="email" value="${member.email }" class="form-control" id="exampleInputPassword1" name="email">
				  </div>
				   <div class="mb-3">
				    <label for="exampleInputPassword1" class="form-label">birthday</label>
				    <input type="date" value="${member.birth}" class="form-control" id="exampleInputPassword1" name="birth">
				  </div>
				  
				 
				  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</section>
</body>
</html>