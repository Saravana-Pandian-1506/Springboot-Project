<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.25);
            text-align: left;
            width: 500px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        label {
            flex: 0 0 150px;
            font-weight: bold;
        }

        input[type="text"], input[type="number"], select {
            flex: 1;
            padding: 8px;
            font-size: 14px;
        }

        .button-group {
            text-align: center;
            margin-top: 20px;
        }

        input[type=submit], input[type=button] {
            margin: 0 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 14px;
            cursor: pointer;
        }

        input[type=button] {
            background-color: #dc3545;
        }

        select {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Student Registration</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="candidateName">Candidate Name:</label>
            <input type="text" name="candidateName" id="candidateName" />
        </div>
        <div class="form-group">
            <label for="candidateEmail">Email:</label>
            <input type="text" name="candidateEmail" id="candidateEmail"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="text" name="password" id="password"/>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" name="phoneNumber" id="phone" />
        </div>
        <div class="form-group">
            <label for="qualification">Qualification:</label>
            <input type="text" name="qualification" id="qualification" />
        </div>
        <div class="form-group">
            <label for="experience">Experience Level:</label>
            <select name="experience" id="experience">
                <option value="">-- Select --</option>
                <option value="fresher">Fresher (0 years of experience)</option>
                <option value="experienced">Experienced (1+ years of experience)</option>
            </select>
        </div>
        <div class="button-group">
            <input type="submit" value="Signup" />
            <input type="button" value="Cancel" onclick="window.location.href='/register'" />
        </div>
    </form>
</div>

</body>
</html>
