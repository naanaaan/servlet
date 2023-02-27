<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<ul>
	<c:forEach var='fruit' items='${paramValues.fruit}' varStatus='status'>
		<li>${status.count}: ${fruit}, ${status.index}</li> <!-- status임의로 넣은거임 -->
	</c:forEach>
</ul>
