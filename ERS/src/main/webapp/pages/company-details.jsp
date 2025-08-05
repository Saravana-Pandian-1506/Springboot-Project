<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Company Details - Recruitment System</title>
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
            padding: 30px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
        }

        h2 {
            color: #555;
            margin-bottom: 20px;
        }

        .info-section p {
            margin: 8px 0;
            color: #444;
        }

        .info-section strong {
            color: #222;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .quiz-box {
            margin-top: 40px;
            background-color: #f0f4f8;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 8px rgba(0,0,0,0.05);
        }

        .quiz-box h3 {
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .quiz-info p {
            font-size: 16px;
            color: #555;
        }

        .start-button {
            margin-top: 20px;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        .start-button:hover {
            background-color: #2980b9;
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
    <div class="logo">Recruitment System</div>
    <div class="nav-links">
        <a href="/home">Home</a>
        <a href="/logout">Logout</a>
    </div>
</div>


<div class="container">
    <h1>${company.cmpName}</h1>
    <h2>${company.designation} (${company.jobOpenings} Openings)</h2>

    <div class="info-section">
        <p><strong>About:</strong> ${company.about}</p>
        <p><strong>Location:</strong> ${company.location}</p>
        <p><strong>Industry:</strong> ${company.industry}</p>
        <p><strong>Website:</strong> <a href="${company.website}" target="_blank">${company.website}</a></p>
        <p><strong>Email:</strong> ${company.email}</p>
        <p><strong>Contact Number:</strong> ${company.contactNumber}</p>
    </div>


    <div class="quiz-box">
        <h3>Quiz Section</h3>
        <div class="quiz-info">
            <p><strong>Number of MCQs:</strong> 10</p>
            <p><strong>Time Allotted:</strong> 10 minutes</p>
        </div>
        <form action="/quiz/${company.cmpId}" method="get">
            <button type="submit" class="start-button">Start Quiz</button>
        </form>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    &copy; 2025 Employee Recruitment System. All rights reserved.
</div>

</body>
</html>
