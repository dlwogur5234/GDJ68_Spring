<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<c:import url="./temp/bootStrap.jsp"></c:import>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
</head>
<body>
	<!-- header -->
	<c:import url="./temp/header.jsp"></c:import>
	<!-- Latest compiled JavaScript -->
	<c:if test="${sessionScope.member ne null }"> <!-- !=null , not empty --> <!-- Scope 생략가능 -->
		<h1 class="text-center">로그인 상태</h1>
		
	</c:if>
	<c:if test="${empty member}">
	<h1 class="text-center">비로그인 상태</h1>
	</c:if>
	
	<img src="../../resources/images/img2.jpeg">
	

</body>
</html>