<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--<span>ResultA ${msg}</span>-->
	
	<table>
		<tr>
 		 <th>Value</th>
	 	 <th>Square</th>
		</tr>
		<c:forEach var="x" begin="0" end="10" step="2">
			<tr>
  				<td><c:out value="${x}"/></td>
  				<td><c:out value="${x * x}"/></td>
				</tr>
		</c:forEach>
	</table>
	
	<fmt:setLocale value="ko_KR"/>
	<jsp:useBean id="now" class="java.util.Date"/>

	<c:out value="${now}"/>
	<br>
	Seoul KST: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
	<br>
	
	<fmt:timeZone value="GMT">
		London GMT: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
	</fmt:timeZone>
	
	
</body>
</html>