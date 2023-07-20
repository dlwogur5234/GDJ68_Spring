
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

	<section class="container mt-5 ">
		<h1 class="mb-5 text-center">BankBook List</h1>
	
		<table class="table table-dark table-hover">
			<thead>
				<th>상품명</th>
				<th>이자율</th>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="d" varStatus="i">
					<tr>
						<td>
							<a href="./detail?bookNum=${d.bookNum}" class="text-white text-decoration-none">${d.bookName}</a>
						</td>
						<td>
							${d.bookRate} ${i.index}
						</td>	
				</c:forEach>
			</tbody>
		</table>
		
		<a href="/bankbook/add" class="btn btn-danger">상품등록</a>
	</section>		
	
<%-- 
	<c:forEach begin="1" end="10" var="num" step="4">
		<h1>${num}</h1>
	</c:forEach>
--%>	

</body>
</html>