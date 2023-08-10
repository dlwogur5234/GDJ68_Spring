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
	<a class="btn btn-primary" href="../bookAccount/add?bookNum=${dto.bookNum}">상품가입</a>
	<button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#accountModal">상품가입</button>

	<!-- 댓글 -->
	<div>
		<div class="mb-3">		
			<textarea type="password" name="accountPw" class="form-control" id="comment" placeholder=></textarea>
			<button id="commentAdd">댓글목록</button>
		</div>
		<div>
			<table id="commentList">
				
			</table>

		</div>
	</div>

	<div class="modal fade" id="accountModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		  <div class="modal-content">
			<div class="modal-header">
			  <h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호를 입력하세요</h1>
			  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="mb-3">
					
					<input type="password" name="accountPw" class="form-control" id="pw" placeholder="출금 비밀번호를 입력하세요">
				</div>
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="close">Close</button>
			  <button type="button" class="btn btn-primary" id="add" data-add-num="${dto.bookNum}">상품가입</button>
			</div>
		  </div>
		</div>
	  </div>
	<button id="update">수정</button>
	<button id="del"data-delete-name="bookNum" data-delete-num="${dto.bookNum}">삭제</button>
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

	<script type="text/javascript">
		getCommentList($('#add').attr('data-add-num'),1);

		function getCommentList(bookNum,page){
			$.ajax({
				type:'get',
				url:"./commentList",
				data:{
					bookNum:bookNum,
					page:page
				},
				success:function(result){
					$('#commentList').append(result);
				},
				error:function(){
					alert("관리자에게 문의하세요")
				}
			})
		}
		// const add = document.getElementById('add');

		// add.addEventListener('click', function(){
		// 	// let bookNum='${dto.bookNum}';
		// 	let bookNum = add.getAttribute("data-add-num");
		// 	let pw = document.getElementById('pw').value;
		// 	ajax2(bookNum,pw)

			$('#add').click(function(){
				let bookNum = $('#add').attr('data-add-num');
				let pw = $('#pw').val();
				ajax2(bookNum,pw);
			})


		// 	function ajax2(bookNum,pw){
		// 		fetch("../bookAccount/add",{
		// 			method:"post",
		// 			body:"bookNum="+bookNum+"&accountPw="+pw,
		// 			headers:{
		// 				"Content-type":"application/x-www-form-urlencoded"
		// 			}
		// 		})
		// 		.then((responce)=>{
		// 			return responce.text();
		// 		})
		// 		.then((r)=>{
		// 			if(r>0){
		// 				alert("가입 완료되었습니다")

		// 			}
		// 			else{
		// 				alert("가입 실패하였습니다")
		// 			}
		// 			location.href="../";
		// 		})
		// 		;
		// 	}
			function ajax2(bookNum,pw){
				$.ajax({
					type:'post',
					url:'../bookAccount/add',
					data:{
						bookNum:bookNum,
						accountPw:pw
					},
					success:function(r){
						if(r>0){
						alert("가입 완료되었습니다")

					}
					else{
						alert("가입 실패하였습니다")
					}
					location.href="../";
					}
				
				})
			}
			
		// 	function ajax1(bookNum,pw){
		// 		// ajax 활용하기
		// 	//1.xhttp만들기
		// 	let xhttp = new XMLHttpRequest;
		// 	//2. 요청정보
		// 	xhttp.open("POST","../bookAccount/add");
		// 	//요청 header 정보
        //     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		// 	//요청 발생(post일 경우 파라미터 작성 key=값&key2=값2) 
		// 	xhttp.send("bookNum="+bookNum+"&accountPw="+pw);

		// 	//응답처리
		// 	xhttp.onreadystatechange=function(){
		// 		if(this.readyState==4&&this.status==200){
		// 			let r = this.responseText.trim();
		// 			console.log(r);
		// 			if(r>0){
		// 				alert('가입이 성공되었습니다');
		// 			}
		// 			else{
		// 				alert('가입이 실패했습니다');
		// 			}

		// 			document.getElementById('close').click();
		// 			location.href='../';
		// 			console.log(this.responseText);
		// 		}
		// 	}
		// }
		// })
		
		
			
	</script>
	<script src="../resources/js/delete.js"></script>
	<!-- <script>
		setBookNum(${dto.bookNum});
	</script> -->
	
</body>
</html>