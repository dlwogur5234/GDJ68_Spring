<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>${board} Reply Page</h1>
	<form class="mb-5 text-center form-control" action="./reply" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${num}">
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2">제목</span><input  type="text" name="subject"></div><br>
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2">내용</span><textarea class="input-group" rows="" cols="" name="contents"></textarea></div><br>
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2">작성자</span><input  type="text" name="name"></div><br>
		
		
		
		
		<p>
	<!-- 	<select name="bookSale">
			<option value="1">판매가능</option>
			<option value="0" selected>판매중지</option>
		</select> -->
		</p>
		
		<button type="submit">등록</button>
		<input type="submit" value="add">
		<input type="reset" value="add">
		<input type="button" value="add">
	</form>
</body>
</html>