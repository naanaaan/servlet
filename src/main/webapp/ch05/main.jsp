<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl, ch05.dao.EmployeeDao, ch05.dao.EmployeeDaoImpl' %>
<%
	EmployeeService employeeService = new EmployeeServiceImpl();
%> 

<%= employeeService.getEmployee(100)%>
