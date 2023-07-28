<%-- <%@page import="com.iu.main.bankBook.BankBookDTO"%> --%>
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
	<h1 class="text-center">Detail Page</h1>
	
	 <%-- <%BankBookDTO bankBookDTO = (BankBookDTO)request.getAttribute("dto"); %> --%>
	
	<section class="text-center">
	<%-- <h3><%= bankBookDTO.getBookName() %></h3> --%>
	<!-- Getter의 이름 : 메서드에서 get을 제외하고 첫번째 글자를 소문자로 바꾼것 -->
	<h1>${requestScope.dto.bookName}</h1>
	<%-- <div>
		${dto.bookContents}
	</div> --%>
	<h1>${dto.bookRate}</h1>
	
	<c:choose>
		<c:when test="${dto.bookSale eq 1}">
			<h1>판매중</h1>
		</c:when>
		<c:otherwise>
			<h1>판매종료</h1>
		</c:otherwise>
	</c:choose>
	
	<c:forEach items="${dto.fileDTOs}" var="f">
		<img alt="" src="../resources/upload/bankBook/${f.fileName}">
		<p>gd</p>
	</c:forEach>
	
	<a href="./update?bookNum=${dto.bookNum}">수정</a>
	<a href="./delete?bookNum=${dto.bookNum}">삭제</a>
	<a href="./list">뒤로가기</a>
	</section>
	
	
<%-- 
	<c:if test="${dto.bookSale eq 1}">
		<h1>판매중</h1>
	</c:if>
	<c:if test="${dto.bookSale eq 0 }">
		<h1>판매종료</h1>
	</c:if>
--%>
</body>
</html>