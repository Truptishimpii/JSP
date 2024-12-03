<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*,cwpc.Student" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%

// just create some sample data ... normally provided by MVC
List<Student> data = new ArrayList<>();
		data.add(new Student("John", "Doe", false));
        data.add(new Student("Maxwell", "Johnson", false));
        data.add(new Student("Mary", "Public", true));

        pageContext.setAttribute("myStudents", data);

	%>

	<table border="1" cellpadding="10" cellspacing="10">

	<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Gold Customer</th>
	</tr>

	<c:forEach var="tempStudent" items="${myStudents}">

		<tr>
<td>${tempStudent.firstname}</td>
<td>${tempStudent.lastname}</td>
<td>${tempStudent.goldcustomers}</td>
		</tr>

	</c:forEach>

	</table>

</body>
</html>
