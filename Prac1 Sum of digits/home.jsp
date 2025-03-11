<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sum of Digits</title>
</head>
<body>
    <form method="post">
        Enter a num: <input type="text" name="num">
        <br>
        <input type="submit" value="Calculate Sum">
    </form>

    <%
    // Get the number from the request
    String numParam = request.getParameter("num");
    
    if (numParam != null && !numParam.isEmpty()) { 
        try {
            int n = Integer.parseInt(numParam);
            int sum = 0;
            
            // Calculate sum of digits
            while (n > 0) {
                sum += n % 10;
                n /= 10;
            }
    %>
        <h3>Sum of digits: <%= sum %></h3>
    <%
        } catch (NumberFormatException e) {
    %>
        <p style="color: red;">Please enter a valid number.</p>
    <%
        }
    }
    %>
</body>
</html>
