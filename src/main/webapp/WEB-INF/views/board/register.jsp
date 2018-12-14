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
		
			<div class="panel-heading">Review Register</div><!-- /.panel-heading -->
			
			<div class="panel-body">
				<form role="form" action="/board/register" method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" name='title' placeholder="제목을 입력하세요">
					</div>
					<div class="form-group">
						<label>도서명</label> <input class="form-control" name='book_title' placeholder="도서명을 입력하세요">
					</div>
					<div class="form-group">
						<label>평점</label>
						<select class="form-control" name='rating'>
							<option value="">평점을 선택하세요</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>						
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name='content' placeholder="내용을 입력하세요"></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer' placeholder="작성자를 입력하세요">
					</div>
					<button id="SubmitBtn" type="submit" class="btn btn-default">등록</button>

					<button type="reset" class="btn btn-default">초기화</button>

					<button id="ListBtn" class="btn btn-default">취소</button>
				</form>
			</div><!-- end panel-body -->
			
		</div><!-- end panel -->
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->

<script>
$(document).ready(function(){
	var Formobj = $("form[role='form']");
	
	$("ListBtn").on("click", function(){
		Formobj.attr("action", "/board/list");
		Formobj.attr("method", "get");
		Formobj.submit();
	});
	
	$("#SubmitBtn").on("click", function(){
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
			$("input[name='content']").focus();
			return false;
		}
		if($("input[name='writer']").val()==""){
			alert("이름을 입력하세요!");
			$("input[name='writer']").focus();
			return false;
		}
	});
});
</script>

<%@include file="../include/footer.jsp"%>