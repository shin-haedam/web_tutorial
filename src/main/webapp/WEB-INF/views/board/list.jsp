<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">AfterReading</h1>
	</div>
</div><!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		
			<div class="panel-heading">
				Review List
				<button id='regBtn' type="button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">
				Register New Review</button>
			</div><!-- /.panel-heading -->
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>도서명</th>
							<th>평점</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					
					<c:forEach var="boardVO" items="${list}">
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
							<td>${boardVO.book_title}</td>
							<td><c:choose>
								<c:when test="${boardVO.rating == 1}">★☆☆☆☆</c:when>
								<c:when test="${boardVO.rating == 2}">★★☆☆☆</c:when>
								<c:when test="${boardVO.rating == 3}">★★★☆☆</c:when>
								<c:when test="${boardVO.rating == 4}">★★★★☆</c:when>
								<c:when test="${boardVO.rating == 5}">★★★★★</c:when>
								<c:otherwise>☆☆☆☆☆</c:otherwise>
							</c:choose></td>
							<td>${boardVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></td>
							<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
						</tr>
					</c:forEach>
					
				</table>
			</div><!-- end panel-body -->
			
		</div><!-- end panel -->
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>

<%@include file="../include/footer.jsp"%>