<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../temp/bootStrap.jsp"></c:import>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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

			<div id="productList">


			</div>
	
			<script>
				// const productList = document.getElementById('productList');
				let page = 1;
				

				// productList.addEventListener('click',function(event){
				// 	if(event.target.classList.contains("page-link")){
				// 		let page=event.target.getAttribute("data-num");
				// 		getList(page);
				// 	}
				// })

				$('#productList').on("click",".page-link",function(event){
					let page = $(this).attr('data-num');
					getList(page);
				})

				// function getList(page){
				// 	fetch("../bookAccount/list?page="+page,{
				// 	method:"get"
				// })
				// .then((Response)=>{return Response.text()})
				// .then((r) => {
				// 	productList.innerHTML=r;
				// 	console.log(r);
				// })
				// }
				getList(1);
				function getList(page){
					$.ajax({
						type:'GET',
						url:"../bookAccount/list",
						data:{
							page:page
						},
						success:function(response){
							$('#productList').html(response.trim());
						},
						error:function(){
							alert('관리자에게 문의하세요')
						}
					})
				}		

				

			</script>
</body>
</html>