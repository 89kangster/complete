<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	
    	session.removeAttribute("id");
    	
    	response.sendRedirect("http://14.63.225.213/testing/bbs/list.inc");
    	
    	System.out.println(session.getAttribute("id"));
    %>
   
    
