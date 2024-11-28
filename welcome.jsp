<html>
<head>
    <title>Welcome Page</title>
    <!-- Bootstrap CSS (linked via CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Additional custom styles */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .header {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .btn-lg {
            margin-top: 20px;
            padding: 10px 20px;
        }

        .logout-link {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
        }

        .logout-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">

    <!-- Logout Button placed at the top -->
    <div class="container text-center">
        <div class="text-right mb-3">
            <a href="logout.jsp">
                <button type="button" class="btn btn-danger btn-sm">Logout</button>
            </a>
        </div>

        <h2 class="header">Welcome !!</h2>

        <% 
            // Retrieve session (get existing session or create a new one)
            HttpSession Session = request.getSession(false); // 'false' does not create a new session if it doesn't exist
            
            if (session != null) {
                String userEmail = (String) session.getAttribute("userEmail"); // Retrieve the email from session
                
                if (userEmail != null) {
                    out.println("<p>Hello, " + userEmail + "!</p>");
                } else {
                    out.println("<p>You are not logged in. Please <a href='login.jsp'>login</a>.</p>");
                }
            } else {
                out.println("<p>You are not logged in. Please <a href='login.jsp'>login</a>.</p>");
            }
        %>

        <!-- Register Button (linked to signup.jsp) -->
        <a href="signup.jsp"><button type="button" class="btn btn-primary btn-lg">Register</button></a>

    </div>

    <!-- Bootstrap JS and jQuery (linked via CDN) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>
