<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>스크립틀릿(scriptlet) : <% out.println(request.getParameter("name")); %></h1>
<h1>표현식(expression) : <%= request.getParameter("password") %></h1>
<h1>속성값 접근 : <%= (String) request.getAttribute("get") %></h1>

<c:forEach begin="1" end="10">
	<h1>EL : ${ get }</h1>
</c:forEach>
</body>
</html>