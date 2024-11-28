<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="data" value="www.codeswithpankaj.com" />
	
	<h1>${data}</h1>
	<h1>size of data : ${fn:length(data)}</h1>
	
	<hr>
	Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
	
	
	
	<hr>
	
	
	<%
	// just create some sample data ... normally provided by MVC
	String[] cities = {"Mumbai", "Singapore", "Philadelphia"};

	pageContext.setAttribute("myCities", cities);
    %>
    <ul>
    <c:forEach var="tempCity" items="${myCities}">
		
		<li>${tempCity}</li>
		
	</c:forEach>
    </ul>
    
	

</body>
</html>
