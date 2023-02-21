<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= request.getRequestURL()%>
	<li><%= request.getProtocol() %>
	<li><%= request.getContextPath() %>
	<li><%= request.getRequestURI() %> <!-- context path 이후 -->
	<li><%= request.getQueryString() %>
	<li><%= request.getMethod() %>
</ul>
