<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



	
	<section class="container mt-5">
	<h1 class="mb-5 text-center" >상품 가입 목록</h1>
	<!-- 표현식 -->

	<table class="table table-dark table-hover">
		<thead>
			<th>계좌번호</th>
			<th>잔액</th>
			<th>가입일</th>	
		</thead>
		<tbody>
		
			<c:forEach items="${list}" var="n">
				<tr>
					<td>${n.account}</td>
					<td>${n.balance} </td>
					<td>${n.accountDate}</td>
				</tr>
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
		    <li class="page-item"><a class="page-link" href="#" data-num="${i}">${i}</a></li>
		    </c:forEach>
		
		    <li class="page-item ${pager.next?'':'disabled'}">
		      <a class="page-link" href="./list?page=${pager.page+1}" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		
		  </ul>
		</nav>
	
	</section>

	
	