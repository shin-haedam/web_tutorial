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
					<div class="form-group">
						<input class="form-control" name='title' value='<c:out value="${boardVO.title}"/>'>
					</div>
			</div><!-- /.panel-heading -->
			
			<div class="panel-body">
			<table>
				<tr>
				<td class="panel-col">
					<img class="image" src="https://images-na.ssl-images-amazon.com/images/I/51UI%2BjSc4eL.jpg" width="150" height="200">
				</td>
				
				<td width="10" height="200">
					<span></span>
				</td>
										
				<td class="panel-col">
					
					<p>
					<strong>책 제목</strong>
					<br>
					<strong>평점</strong>
					</p>
					
					<p>
					<strong>작성자</strong>
					<br>
					<strong>작성일</strong>
					<br>
					<strong>조회수</strong>
					</p>
					
				</td>
				
				<td width="5" height="200">
					<span></span>
				</td>
				
				<td class="panel-col">
					<p>
					<span class="bname"><c:out value="${boardVO.book_title}"/></span>
					<br>
					<span class="rating">
						<c:forEach var='i' begin="1" end="${boardVO.rating}" step="1">★</c:forEach>
						<c:forEach var='i' begin="${boardVO.rating}" end="5" step="1">☆</c:forEach>
					</span>
					</p>
					
					<p>
					<span class="writer"><c:out value="${boardVO.writer}"/></span>
					<br>
					<span class="regdate"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></span>
					<br>
					<span class="viewcnt">${boardVO.viewcnt}</span>
					</p>
					
				</td>
				
				</tr>
			</table>
			</div>
			
			<div class="panel-body">
				
				<form role="form" method="post" action="/board/modify">
					<div class="form-group">
						<textarea class="form-control" rows="3" name='content'
							><c:out value="${boardVO.content}" /></textarea>
					</div>
					
					<button id="ModiBtn" class="btn btn-default">Modify</button>
					<button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">List</button>
				</form>
				
			</div><!-- end panel-body -->
				
		</div><!-- end panel -->
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<script>
$(document).ready(function(){
	$("#ListBtn").on("click", function(){
		var formobj=$("form[role='form']");
		formobj.attr("action", "/board/list");
		formobj.attr("method", "get");
		formobj.submit();
	});
	
	$("#ModiBtn").on("click", function(){
		if($("input[name=title]").val()==""){
			alert("제목을 입력하세요!");
			$("input[name='title']").focus();
			return false;
		}
		if($("textarea[name=content]").val()==""){
			alert("내용을 입력하세요!");
			$("input[name='content']").focus();
			return false;
		}
		return true;
	});
});
</script>

<%@include file="../include/footer.jsp"%>