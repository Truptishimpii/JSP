<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        body {
            background-color: #f0f8ff;
        }

        .registration-form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-heading {
            color: #4e73df;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #4e73df;
            border-color: #4e73df;
        }

        .btn-primary:hover {
            background-color: #2e59d9;
            border-color: #2e59d9;
        }

        .input-group-text {
            background-color: #e2e3e5;
            border-color: #ccc;
        }

        .form-control:focus {
            border-color: #4e73df;
            box-shadow: 0 0 0 0.2rem rgba(78, 115, 223, 0.25);
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: #4e73df;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="registration-form">
                    <h3 class="form-heading text-center mb-4">Create Account</h3>
                    <form method="post" action="#">
                        <div class="mb-3">
                            <label for="name" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="pwd" placeholder="Enter your password" required>
                        </div>
                        <div class="mb-3">
                            <label for="confirm-password" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="confirm-password" name="confirm-password" placeholder="Confirm your password" required>
                        </div>
                       <a href="welcome.jsp"><button type="submit" class="btn btn-primary btn-block w-100">Register</button></a>
                    </form>

                    <div class="form-footer">
                        <p class="mt-3">Already have an account? <a href="login.jsp">Login here</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
<%
    String name = request.getParameter("name");
    if (name != null && name.length() > 0) {
        String value = request.getParameter("email");
        Cookie retrieveCookies = new Cookie(name, value);  // Corrected variable usage
        response.addCookie(retrieveCookies);
        response.sendRedirect("welcome.jsp");
    }
%>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-EVSTQN3/azprG1mQ1R7OB3XkY62v/s5jphv10+v5yyg5a+7TffO7h0gM2t5pZ7Bh" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-cuHk6DRVtE18lzPtIRVKvjZ02G9pPyN2El5ludxP6U8XU4ynhdE9hYX1Vz11pqlD" crossorigin="anonymous"></script>
</body>

</html>
