<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f4f8;
            margin: 0;
            padding: 40px 0;
        }

        .quiz-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            max-width: 850px;
            margin: auto;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .question-block {
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid #e0e0e0;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        p {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        label {
            display: block;
            margin: 8px 0;
            font-size: 16px;
            color: #555;
        }

        input[type="radio"] {
            margin-right: 8px;
        }

        input[type="submit"] {
            display: block;
            margin: 30px auto 0;
            padding: 12px 30px;
            background-color: #3498db;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
    <script>
    let countdown = 600; 

    function startTimer() {
        const timerInterval = setInterval(() => {
            countdown--;

            if (countdown <= 0) {
                clearInterval(timerInterval);
                alert("Your time has expired! You will be redirected.");
                window.history.back(); 
            }
        }, 1000);
    }

    window.onload = startTimer;
</script>
    
</head>
<body>

<div class="quiz-container">
    <h2>Online Programming Quiz</h2>

    <form action="/submitQuiz" method="post">
        <c:forEach var="quiz" items="${quizList}" varStatus="status">
            <div class="question-block">
                <p>Q${status.index + 1}: ${quiz.question}</p>

                <label><input type="radio" name="userAnswer_${quiz.quizId}" value="${quiz.optionA}" required /> ${quiz.optionA}</label>
                <label><input type="radio" name="userAnswer_${quiz.quizId}" value="${quiz.optionB}" /> ${quiz.optionB}</label>
                <label><input type="radio" name="userAnswer_${quiz.quizId}" value="${quiz.optionC}" /> ${quiz.optionC}</label>
                <label><input type="radio" name="userAnswer_${quiz.quizId}" value="${quiz.optionD}" /> ${quiz.optionD}</label>

                <input type="hidden" name="correctAnswer_${quiz.quizId}" value="${quiz.answer}" />
            </div>
        </c:forEach>

        <input type="submit" value="Submit Quiz" />
    </form>
</div>

</body>
</html>
