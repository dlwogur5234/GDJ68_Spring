<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<c:import url="../temp/bootStrap.jsp"></c:import>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<style>
		.f{
			color: red;
		}
		.s{
			color: green;
		}

	</style>
	
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="mb-5 mt-3">회원가입</h1>
		<form action="./join" method="post" id='frm' enctype="multipart/form-data">
				<div class="mb-3">
				    <label  class="form-label">Id</label>
				    <input type="text" class="form-control" id="id"  name="id">
					<!-- <button type="button" class="btn btn-primary" id="check">ID확인하기</button> -->
				    <div id="idHelp" class="form-text"></div>
				  </div>
				  <div class="mb-3">
				    <label  class="form-label">Password</label>
				    <input type="password" class="form-control" id="pw" name="pw">
					<div id="pwHelp" class="form-text"></div>
				  </div>
				  <div class="mb-3">
				    <label  class="form-label">Password</label>
				    <input type="password" class="form-control" id="pw2" name="pw2">
					<div id="pwHelp2" class="form-text"></div>
				  </div>
				   <div class="mb-3">
				    <label  class="form-label">Name</label>
				    <input type="text" class="form-control" id="name" name="name">
					<div id="NameHelp" class="form-text"></div>
				  </div>
				   <div class="mb-3">
				    <label  class="form-label">email</label>
				    <input type="email" class="form-control" id="email" name="email">
					<div id="emailHelp" class="form-text"></div>
				  </div>
				   <div class="mb-3">
				    <label  class="form-label">birthday</label>
				    <input type="date" class="form-control" id="birth" name="birth">
					<div id="birthHelp" class="form-text"></div>
				  </div>
				  <div class="mb-3">
				  <label  class="form-label">사진첨부</label>
				  <input type="file" name="pic" class="form-control" id="pic" >
				  </div> 
				  
				 
				  <button id="btn"type="button" class="btn btn-primary">등록</button>
		</form>
	</section>

	<script src="/resources/js/member.js"></script>
</body>
</html>