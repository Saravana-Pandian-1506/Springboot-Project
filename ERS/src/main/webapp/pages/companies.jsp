<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Companies - Recruitment System</title>
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

        .user-info {
            text-align: right;
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        thead {
            background-color: #007bff;
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

        a {
            color: #007bff;
            font-weight: 500;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
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

<!-- Navbar -->
<div class="navbar">
    <div class="logo">Recruitment System</div>
    <div class="nav-links">
        <a href="/home">Home</a>
        <a href="/logout">Logout</a>
    </div>
</div>

<!-- Company List -->
<div class="container">
    <h1>Available Companies</h1>
   
    <table>
        <thead>
            <tr>
                <th>Company Name</th>
                <th>Job Designation</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="company" items="${allCompanies}">
                <tr>
                    <td>
                        <a href="companies/${company.cmpId}">
                            ${company.cmpName}
                        </a>
                    </td>
                    <td>${company.designation}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Footer -->
<div class="footer">
    &copy; 2025 Employee Recruitment System. All rights reserved.
</div>

</body>
</html>
