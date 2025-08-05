<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recruitment System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #222;
            padding: 10px 20px;
            color: white;
        }

        .navbar .logo img {
            height: 40px;
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

        /* Hero Section */
        .hero {
            background-color: #ffffff;
            padding: 60px 20px;
            text-align: center;
        }

        .hero h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            color: #555;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: center;
            gap: 30px;
            padding: 40px 20px;
            flex-wrap: wrap;
        }

        .feature-box {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            width: 300px;
            text-align: center;
        }

        .feature-box h3 {
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .feature-box p {
            color: #666;
        }

        /* Action Buttons */
        .actions {
            text-align: center;
            margin: 40px 0;
        }

        .actions a {
            display: inline-block;
            padding: 12px 24px;
            margin: 10px;
            color: white;
            background-color: #4CAF50;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .actions a:hover {
            background-color: #45a049;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #222;
            color: #aaa;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
        </div>
        <div class="nav-links">
            <a href="/home">Home</a>
            <a href="about.jsp">About</a>
            <a href="/contact">Contact</a>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Connecting Recruiters with Top Talent</h1>
        <p>Our platform simplifies the hiring process by offering smart tools for recruiters to find, assess, and onboard the best candidates faster and easier than ever.</p>
    </div>

    <!-- Features Section -->
    <div class="features">
        <div class="feature-box">
            <h3>Candidate Matching</h3>
            <p>Advanced AI matching helps you find the best candidates for your job openings instantly.</p>
        </div>
        <div class="feature-box">
            <h3>Customizable Quizzes</h3>
            <p>Create and assign programming quizzes to filter candidates before interviews.</p>
        </div>
        <div class="feature-box">
            <h3>Recruiter Dashboard</h3>
            <p>Track applications, manage job postings, and streamline communication in one place.</p>
        </div>
    </div>

    <!-- Action Buttons -->
    <div class="actions">
        <a href="/register">Sign Up</a>
        <a href="/login">Log In</a>
        <a href="/recruiterLogin">Recruiter Page</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2025 Employee Recruitment System. All rights reserved.
    </div>

</body>
</html>
