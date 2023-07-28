<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<c:import url="../temp/bootStrap.jsp"></c:import>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:import url="../temp/header.jsp"></c:import>

	<h1 class="text-center">Add Page</h1>
	<section class="text-center">
		<form action="./add" method="post" enctype="multipart/form-data">
			<div class="input-group mb-3 flex-nowrap">	
				<span class="input-group-text" id="basic-addon1">상품명</span>
				<input type="text" name="bookName" class="form-control">
			</div>
			<div class="form-floating">
				<span class="input-group-text" id="basic-addon1">상세설명</span>
				<textarea rows="" cols="" name="bookContents" class="form-control"></textarea><br>
			</div>
			<div class="input-group mb-3 flex-nowrap">
				<span class="input-group-text" id="basic-addon1">이자율</span>
				<input type="text" name="bookRate" class="form-control">
			</div>
			<p>
				판매가능 <input type="radio" checked name="bookSale" value="1"><br>
				판매중지 <input type="radio" name="bookSale" value="0"><br>
			</p>
			<div class="mb-3">
				  <label for="pic" class="form-label">사진첨부</label>
				  <input type="file" name="photos" class="form-control" id="pic" >
			</div>
			<div class="mb-3">
				  <label for="pic" class="form-label">사진첨부</label>
				  <input type="file" name="photos" class="form-control" id="pic" >
			</div>
			<div class="mb-3">
				  <label for="pic" class="form-label">사진첨부</label>
				  <input type="file" name="photos" class="form-control" id="pic" >
			</div>
		<!-- 	<p>
			<select name="bookSale">
				<option selected value="1">판매중</option>
				<option value="0">판매중지</option>
				
			</select>
			</p>
		 -->	
			<button class="btn btn-success">등록</button>
			<input type="reset" value="초기화" class="btn btn-danger">
		</form>
	</section>
</body>
</html>