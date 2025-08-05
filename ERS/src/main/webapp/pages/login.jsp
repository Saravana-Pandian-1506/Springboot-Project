<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.15);
            width: 400px;
            text-align: center;
        }

        h1 {
            margin-bottom: 25px;
            color: #343a40;
        }

        label {
            display: inline-block;
            width: 100px;
            text-align: right;
            margin-right: 10px;
            font-weight: bold;
        }

        input[type="email"], input[type="password"] {
            width: 220px;
            padding: 8px;
            margin: 8px 0 20px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type=submit], input[type=button] {
            padding: 10px 18px;
            margin: 10px 8px 0 8px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            font-size: 14px;
        }

        input[type=submit] {
            background-color: #007bff;
            color: white;
        }

        input[type=button] {
            background-color: #6c757d;
            color: white;
        }

        .error {
            color: red;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Candidate Login</h1>

        <c:if test="${invalidCredentials}">
            <p class="error">Invalid email or password. Please try again.</p>
        </c:if>

        <form action="/validateLogin" method="post">
            <div>
                <label>Email:</label>
                <input type="email" name="email" required />
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="password" required />
            </div>
            <div>
                <input type="submit" value="Login" />
                <input type="button" value="Cancel" onclick="window.location.href='/register'" />
            </div>
        </form>
    </div>
</body>
</html>
