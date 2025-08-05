<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shortlisted Candidates - Recruiter Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #222;
            padding: 10px 20px;
            color: white;
        }

        .navbar .logo {
            font-size: 20px;
            font-weight: bold;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 600;
        }

        .navbar .nav-links a:hover {
            text-decoration: underline;
        }

        .container {
            max-width: 1000px;
            margin: 40px auto;
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        thead {
            background-color: #4CAF50;
            color: white;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        button {
            padding: 6px 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .footer {
            text-align: center;
            padding: 20px;
            background-color: #222;
            color: #aaa;
            margin-top: 50px;
        }
    </style>
</head>
<body>


<div class="navbar">
    <div class="logo">Recruiter Dashboard</div>
    <div class="nav-links">
        <a href="/home">Home</a>
        <a href="/logout">Logout</a>
    </div>
</div>


<div class="container">
    <h1>Shortlisted Candidates</h1>
    <table>
        <thead>
            <tr>
                <th>Candidate Name</th>
                <th>Score</th>
                <th>Time Taken (sec)</th>
                <th>Mail Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="test" items="${testResults}">
                <tr>
                    <td>${test.candidateName}</td>
                    <td>${test.score}</td>
                    <td>${test.timeTaken}</td>
                    <td>
                        <form action="/sendResultEmail" method="post">
                            <input type="hidden" name="empEmail" value="${test.empEmail}" />
                            <button type="submit">Send Mail</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>


<div class="footer">
    &copy; 2025 Employee Recruitment System. All rights reserved.
</div>

</body>
</html>
