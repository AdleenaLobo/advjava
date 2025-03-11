<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Find Maximum Number</title>
</head>
<body>
    <form method="post">
        <label for="num1">Enter first number:</label>
        <input type="text" name="num1" required><br><br>

        <label for="num2">Enter second number:</label>
        <input type="text" name="num2" required><br><br>

        <label for="num3">Enter third number:</label>
        <input type="text" name="num3" required><br><br>

        <input type="submit" value="Find Maximum">
    </form>

    <%
    // Get parameters and validate input
    String num1Param = request.getParameter("num1");
    String num2Param = request.getParameter("num2");
    String num3Param = request.getParameter("num3");

    if (num1Param != null && num2Param != null && num3Param != null 
        && !num1Param.isEmpty() && !num2Param.isEmpty() && !num3Param.isEmpty()) {
        try {
            int n1 = Integer.parseInt(num1Param);
            int n2 = Integer.parseInt(num2Param);
            int n3 = Integer.parseInt(num3Param);

            // Find the maximum number
            int max = Math.max(n1, Math.max(n2, n3));
    %>
        <h3>Maximum number is: <%= max %></h3>
    <%
        } catch (NumberFormatException e) {
    %>
        <p style="color: red;">Please enter valid numeric values.</p>
    <%
        }
    }
    %>
</body>
</html>
