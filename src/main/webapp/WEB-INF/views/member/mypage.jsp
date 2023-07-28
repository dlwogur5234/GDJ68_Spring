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
		
		<div >
			<p><img alt="" src="../resources/upload/member/${member.memberFileDTO.fileName}" class="d-block w-70">마이페이지</p>
		</div>
	
		<div>
			<label for="exampleInputEmail1" class="form-label">name</label>	
			<input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${member.name }" disabled="disabled">
		</div>
		<div>
			<label for="exampleInputEmail1" class="form-label">email</label>	
			<input type="text" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${member.email }" disabled="disabled">
		</div>
		<div>
			<label for="exampleInputEmail1" class="form-label">birth</label>	
			<input type="date" name="birth" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${member.birth }" disabled="disabled">
		</div>
			<a  class="btn btn-primary" href="./memberUpdate">회원수정</a>
	
</body>
</html>