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
		
			<div class="panel-heading">Review Modify</div><!-- /.panel-heading -->
			
			<div class="panel-body">
				<form role="form" method="post" action="/board/modify?bno=${boardVO.bno }">
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' value="${boardVO.title}">
					</div>
					<div class="form-group">
						<label>도서명</label> <input class="form-control" name='book_title' value="${boardVO.book_title}">
					</div>
					<div class="form-group">
						<label>평점</label>
						<select class="form-control" name='rating'>
							<option value="">평점을 선택하세요</option>
							<option value="1">★☆☆☆☆</option>
							<option value="2">★★☆☆☆</option>
							<option value="3">★★★☆☆</option>
							<option value="4">★★★★☆</option>
							<option value="5">★★★★★</option>
						</select>						
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name='content'><c:out value="${boardVO.content}" /></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer' value="${boardVO.writer}"  readonly="readonly">
					</div>
					<div class="form-group">
						<label>비밀번호</label> <input class="form-control" name='password' placeholder="비밀번호를 입력하세요">
					</div>
					
					<button id="ModiBtn" class="btn btn-default">수정</button>
					<button id="ListBtn" class="btn btn-default">취소</button>
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
		if($("input[name=book_title]").val()==""){
			alert("도서명을 입력하세요!");
			$("input[name='book_title']").focus();
			return false;
		}
		if($("select[name=rating]").val()==""){
			alert("평점을 선택하세요!");
			$("select[name='rating']").focus();
			return false;
		}
		if($("textarea[name=content]").val()==""){
			alert("내용을 입력하세요!");
			$("textarea[name='content']").focus();
			return false;다
		}
		if($("input[name=password]" != "${boardVO.password}")) {
			alert("비밀번호가 다릅니다!");
			$("input[name='password']").focus();
			return false;
		}
		return true;
	});
});
</script>

<%@include file="../include/footer.jsp"%>