<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">2017202088</h1>
	</div>
</div><!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		
			<div class="panel-heading">Board Modify Page</div><!-- /.panel-heading -->
			
			<div class="panel-body">
				
				<form role="form" method="post" action="/board/modify">
					<div class="form-group">
						<label>Bno</label> <input class="form-control" name='bno'
							value="${boardVO.bno}" readonly="readonly">
					</div>
				
					<div class="form-group">
						<label>Title</label> <input class="form-control" name='title'
							value="${boardVO.title}" >
					</div>
				
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" rows="3" name='content'
							><c:out value="${boardVO.content}" /></textarea>
					</div>
					
					<div class="form-group">
						<label>Writer</label> <input class="form-control" name='writer'
							value="${boardVO.writer}" readonly="readonly">
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