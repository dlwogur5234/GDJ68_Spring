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
	<h1>Update Page</h1>
	
	<form action="./update" method="POST">
		<input type="hidden" name="bookNum" value="${dto.bookNum }" >
		상품명<input type="text" name="bookName" value="${dto.bookName}">
		상세내용 <textarea rows="" cols="" name="bookContents">${dto.bookContents}</textarea>
		이자율<input type="text" name="bookRate" value="${dto.bookRate}"><br>
		
		<p>
			판매가능 <input type="radio" checked name="bookSale" value="1"><br>
			판매중지 <input type="radio" name="bookSale" value="0"><br>
		</p>
	<!-- 	<p>
		<select name="bookSale">
			<option selected value="1">판매중</option>
			<option value="0">판매중지</option>
			
		</select>
		</p>
	 -->	
		<button>등록</button>
		<input type="submit" value="수정">
		<a href="./list.do">뒤로가기</a>
	
	
</body>
</html>