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
	<h1>update</h1>
	<form class="mb-5 text-center form-control" action="./update" method="post">
		<table class="table table-dark table-hover">
		<thead>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>내용</th>
		</thead>
		<tbody>
				<tr>
					<td><input type="hidden" name="num" value="${dto.num }">${dto.num}</td>
					<td><input type="text" name="subject" value="${dto.subject}"></td>
					<td>${dto.name}</td>
					<td><input type="date" name="createDate" value="${dto.createDate}"></td>
					<td><textarea rows="" cols="" name="contents">${dto.contents}</textarea></td>
				</tr>
		</tbody>
		</table>
		<div>
			<button type="button" class="my btn btn-danger" id="fileBtn">File추가</button>
		</div>
		<div id="fileList" class="my-5">
		</div>
		<div>
			<c:forEach items="${dto.fileDTOs}" var="f">
				<div>
					<div class="alert alert-info" role="alert">
						${f.originalName} 
					</div>
					<div class="delets" data-delete-num="${f.fileNum}">X</div>
				</div>
			</c:forEach>
		</div>
		
		<button type="submit">수정</button>
		<script src="/resources/js/file.js"></script>
	</form>
</body>
</html>
