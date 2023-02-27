<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<p> ${param.userId == 'java' ? param.userId : "손님"}</p> <!-- 그냥 userId쓰면 attribute라 접두사써줌 -->
<p> ${param.num1} + ${param.num2} = ${param.num1 + param.num2} </p>
<p> ${param.submitDay}</p>
<p>
	<!-- 스콥지정안해서 기본 page스콥이고 파라를 다 attribute로 만듬 그리고 출력 -->
	<c:forEach var='season' items='${paramValues.season}'>
		${season}
	</c:forEach>
</p>
