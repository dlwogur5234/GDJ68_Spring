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
<c:if test="${empty member}">
	<script type="text/javascript">
		alert("로그인 필요");
		location.href="../member/login";
	</script>
</c:if>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<h1 class="mb-5 text-center">${board} 추가</h1>
	
	<form id="frm" class="mb-5 text-center form-control" action="./add" method="post" enctype="multipart/form-data">
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2">제목</span><input  type="text" name="subject" id="subject"></div><br>
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2">내용</span><textarea class="input-group" rows="" cols="" name="contents" id="contents"></textarea></div><br>
		<div class="input-group text-center"><span class="input-group-text" id="basic-addon2" value="${member.id}">작성자</span><input  type="text" name="name"></div><br>
		
			<div>
				<button type="button" class="my btn btn-danger" id="fileBtn">File추가</button>
			</div>
			<div id="fileList" class="my-5"></div>
		
		
		
		<p>
	<!-- 	<select name="bookSale">
			<option value="1">판매가능</option>
			<option value="0" selected>판매중지</option>
		</select> -->
		</p>
		
		<button type="button" class="my btn btn-danger" id="btn">등록</button>

	</form>
	
	<script src="/resources/js/file.js"></script>

	<script type="text/javascript">
		const btn = document.getElementById('btn');
		const subject = document.getElementById('subject');
		const frm = document.getElementById('frm');
		
		$("#contents").summernote({
			height:400,
			callbacks:{
				onImageUpload:function(files){
				alert('이미지 업로드')
				//이미지를 server로 전송하고
				//응답으로 이미지경로와 파일명을 받아서
				//img 태그를 만들어서 src속성에 이미지경로는 넣는것
				let formData = new FormData();//<form></form>
				formData.append('files',files[0]);//<input type='file' name='files'>
				$.ajax({
					type:'post',
					url:'setContentsImage',
					data:formData,
					cashe:false,
					enctype:'multipart/form-data',
					contentType: false,
					processData:false,
					success:function(result){
						$('#contents').summernote('insertImage',result.trim());
					},
					error:function(){
						console.log('error');
					}
				});
				},
				onMediaDelete:function(files){
					let path = $(files[0]).attr('src') // /resources/upload/notice/파일명

				$.ajax({
					type:'post',
					url:'./setContentsImgDelete',
					data:{
						path:path
					},
					success:function(result){
						console.log(result);
					},
					error:function(){
						console.log('error');
					}


				})
			}
			}
		});

		btn.addEventListener('click',function(){
			console.log(subject.value=='');
			console.log(subject.value.length == 0);
			if(subject.value==""){
				alert('제목은 필수입니다.');
				subject.focus();
			}else{
				frm.submit();
			}
		})
	</script>

</body>
</html>