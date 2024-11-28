<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<%
    // Retrieve the email and password from the request
    String email = request.getParameter("email");
    String password = request.getParameter("pwd");

    // Check if the email and password are provided (null check)
    if (email != null && password != null) {

        // Validate the credentials (for demo purposes, using hardcoded values)
        if (email.equals("admin@gmail.com") && password.equals("123")) {

            // Get the session (create a new session if it doesn't exist)
            HttpSession Session = request.getSession(true); // 'true' ensures a new session is created if it doesn't exist
            session.setAttribute("userEmail", email); // Store the email in session
            
            // Redirect to the welcome page
            response.sendRedirect("welcome.jsp");

        } else {
            // Invalid credentials, redirect to error page
            response.sendRedirect("error.jsp");
        }

    } else {
        // Email or password is missing, redirect to error page
        response.sendRedirect("error.jsp");
    }
%>

</body>
</html>
