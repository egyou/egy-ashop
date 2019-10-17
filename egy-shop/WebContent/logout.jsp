<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	response.sendRedirect("index.jsp"); 
	// 페이지 이동, request 객체 전달 없이, 다른 서버도 가능
%>
