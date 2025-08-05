<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Recruiter Login</title>
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
            background-color: #fff;
            width: 480px;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }

        h1 {
            text-align: center;
            color: #343a40;
            margin-bottom: 35px;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .form-group label {
            width: 150px;
            font-weight: 600;
            color: #495057;
            text-align: right;
            margin-right: 15px;
        }

        .form-group select,
        .form-group input[type="text"] {
            flex: 1;
            padding: 8px 10px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 6px;
        }

        .button-group {
            text-align: center;
            margin-top: 30px;
        }

        input[type=submit], input[type=button] {
            padding: 10px 20px;
            font-size: 14px;
            margin: 0 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type=submit] {
            background-color: #007bff;
            color: white;
        }

        input[type=button] {
            background-color: #6c757d;
            color: white;
        }

        .error-msg {
            color: red;
            font-size: 14px;
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Recruiter Login</h1>

    <c:if test="${invalidCredentials}">
        <div class="error-msg">Invalid password. Please try again.</div>
    </c:if>

    <form action="/recruiterLogin" method="post">
        <div class="form-group">
            <label for="cmpName">Organization Name</label>
            <select name="cmpName" id="cmpName" required>
                <option value="">-- Select --</option>
                <c:forEach var="company" items="${allCompanies}">
                    <option value="${company.cmpName}">${company.cmpName}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="text" name="password" id="password" required />
        </div>

        <div class="button-group">
            <input type="submit" value="Login" />
            <input type="button" value="Cancel" onclick="window.location.href='/register'" />
        </div>
    </form>
</div>
</body>
</html>
