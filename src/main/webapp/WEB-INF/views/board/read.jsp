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
				<input class="form-control" name='title' value='<c:out value="[${boardVO.bno}] ${boardVO.title}"/>' readonly="readonly">
			</div><!-- /.panel-heading -->
			
			<div class="panel-body">
			<table>
				<tr>
				<td class="panel-col">
					<img class="image" src="https://images-na.ssl-images-amazon.com/images/I/51UI%2BjSc4eL.jpg" width="150" height="200">
				</td>
				
				<td>
				
				</td>
										
				<td class="panel-col">
					<strong>책 제목</strong> <span class="bname"><c:out value="~책 제목~"/></span>
					<br>
					<strong>평점</strong>	 <span class="rating"><c:out value="★★★"/></span>
					<br>
					<strong>작성자</strong> <span class="writer"><c:out value="${boardVO.writer}"/></span>
					<br>
					<strong>작성일</strong>
					<span class="regdate"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></span>
					<br>
					<span class="viewcnt">조회수 ${boardVO.viewcnt}</span>
					
				</td>
				
				
				</tr>
			</table>
			</div>
			
			<div class="panel-body">
				
				<div class="form-group">
					<textarea class="form-control" rows="3" name='content'
						readonly="readonly"><c:out value="${boardVO.content}" /></textarea>
				</div>
				
				<button id="ModiBtn" class="btn btn-default">Modify</button>
				<button id="ListBtn" class="btn btn-default" onclick="location.href='/board/list'">List</button>
				<button id="DelBtn" class="btn btn-default">Delete</button>
				
				<form id="Form" method="post">
					<input type="hidden" name="bno" value="${boardVO.bno}">
				</form>
				
			</div><!-- end panel-body -->
				
		</div><!-- end panel -->
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<script>
$(document).ready(function(){
	var Formobj = $("#Form");
	
	$("#ModiBtn").on("click", function(){
		Formobj.attr("action", "/board/modify");
		Formobj.attr("method", "get");
		Formobj.submit();
	});
	
	$("#ListBtn").on("click", function(){
		self.location="/board/list";
	});
	
	$("#DelBtn").on("click", function(){
		Formobj.attr("action", "/board/remove");
		Formobj.submit();
	});
});
</script>

<%@include file="../include/footer.jsp"%>