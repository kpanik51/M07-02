<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>
</head>
<body>

    <h2>Quiz Result</h2>

    <%
        int userAnswer = Integer.parseInt(request.getParameter("userAnswer"));
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));

        int correctAnswer = num1 + num2;
        boolean isCorrect = (userAnswer == correctAnswer);
    %>

    <p>Your answer: <%= userAnswer %></p>
    <p>Correct answer: <%= correctAnswer %></p>

    <%
        // Display result message
        if (isCorrect) {
    %>
            <p style="color: green;">Correct! Well done!</p>
    <%
        } else {
    %>
            <p style="color: red;">Incorrect. Please try again.</p>
    <%
        }
    %>

</body>
</html>
