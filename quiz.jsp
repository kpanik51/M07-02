<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Addition Quiz</title>
</head>
<body>

    <h2>Addition Quiz</h2>

    <form action="quizResult.jsp" method="post">
        <% 
            int num1 = (int) (Math.random() * 10);
            int num2 = (int) (Math.random() * 10);
        %>

        <p><%= num1 %> + <%= num2 %> = <input type="text" name="userAnswer" required></p>
        <input type="hidden" name="num1" value="<%= num1 %>">
        <input type="hidden" name="num2" value="<%= num2 %>">

        <%-- Add more questions as needed --%>

        <input type="submit" value="Submit">
    </form>

</body>
</html>
