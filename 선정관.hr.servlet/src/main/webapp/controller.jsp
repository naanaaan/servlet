<%@ page language='java' contentType='text/html; charset-utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='com.my.hr.dao.LaborerDao, com.my.hr.dao.LaborerDaoImpl' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='java.time.LocalDate, java.time.format.DateTimeFormatter' %>
<%@ page import='java.io.FileWriter'%>
<% 
	String laborerName = request.getParameter("laborerName");
	String date = request.getParameter("hireDate");
	LocalDate hiredate = LocalDate.parse(date, DateTimeFormatter.ISO_DATE);
	String addLaborerBtnVal = request.getParameter("addLaborerBtn");
	String fixLaborerBtnVal = request.getParameter("fixLaborerBtn");
	
	LaborerDao laborerDao = new LaborerDaoImpl();
	LaborerService laborerService = new LaborerServiceImpl(laborerDao);
	
	if(laborerName != null && date != null) 
		if(addLaborerBtnVal != null)
			laborerService.addLaborer(laborerName, hiredate);

		if(fixLaborerBtnVal != null)
			laborerService.fixLaborer(new Laborer(1, laborerName, hiredate));
%>
<c:redirect url='main.jsp'/>