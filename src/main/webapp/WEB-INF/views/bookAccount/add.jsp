<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<section class="container mt-5">	
	<h1 class="my-4">상품가입 Page</h1>
	
	<form action="./add" method="post" id="frm">
		<!-- 1. 받아온 bookNum을 집어넣기 -->
		<input type="hidden" name="bookNum" value="${dto.bookNum}">
		
		<!-- 2. 비밀번호는 입력하여 controller로 보내주기 --> 
		<div class="mb-3">
			<label for="pw" class="form-label">PASSWORD</label>
			<input type="password" name="accountPw" class="form-control" id="pw" placeholder="출금 비밀번호를 입력하세요">
		</div>
		
		<div class="mb-3">
			<button type="button" id="btn" class="btn btn-primary">상품가입</button>
		</div>
	
	</form>
	
	
</section>
	
	

	<script type="text/javascript">
		const btn = document.getElementById('btn');
		const pw = document.getElementById('pw');
		const frm = document.getElementById('frm')
		btn.addEventListener('click', function(){
			if(pw.value.length==4 && Number.isInteger(pw.value*1)){
				alert('사용가능한 비밀번호입니다.');
				frm.submit();
			}
			else{
				alert('4글자')
			}
		})
	</script>

</body>
</html>