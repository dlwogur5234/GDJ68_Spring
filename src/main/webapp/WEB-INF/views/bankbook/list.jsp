
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
		
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		
		    <li class="page-item ${pager.pre?'':'disabled'}">
		      <a class="page-link" href="./list?page=${pager.page-1}" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		  
		    <c:forEach begin="${pager.startNum }" end="${pager.lastNum}" var="i">
		    <li class="page-item"><a class="page-link" href="./list?page=${i}">${i}</a></li>
		    </c:forEach>
		    
		    <li class="page-item ${pager.next?'':'disabled'}">
		      <a class="page-link" href="./list?page=${pager.page+1}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		
		  </ul>
		</nav>
		
			<div class="input-group mb-3">
		 <form action="./list" method="get">
			  <select name="kind" class="form-select" aria-label="Default select example">
				  <option value="name">Name</option>
				  <option value="contents">Contents</option>
			  </select>
			  <input type="text" name="search" class="form-control" aria-label="Amount (to the nearest dollar)">
			   <div class="col-auto">
			    <button type="submit" class="btn btn-primary">검색</button>
			  </div>
		  </form>
		</div>
		
		<%-- <c:forEach begin="1" end="${pager.totalPage}" var="i">
			<a href="./list?page=${i}" class="ms-3 text-info bg-dark">${i}</a>
		</c:forEach> --%>
		
		<br><a href="/bankbook/add" class="btn btn-danger">상품등록</a>
	</section>		
	
<%-- 
	<c:forEach begin="1" end="10" var="num" step="4">
		<h1>${num}</h1>
	</c:forEach>
--%>	

</body>
</html>