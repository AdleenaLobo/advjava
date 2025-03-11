<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="processreg.jsp" method="post">
UID: <input type="text" name="uid"> <br><br>
NAME: <input type="text" name="name"> <br><br>
COURSE:
<select name="course">
<option>ARTS</option>
<option>BCOM</option>
<option>SCIENCE</option>
</select><br><br>
AGE: <input type="text" name="age"><br> <br>
GENDER: <input type="radio" name="gender" value="male"> Male
<input type="radio" name="gender" value="female"> Female <br><br>
HOBBY:
<input type="checkbox" id="hobby" name="hobby" value="reading">
<label for="hobby">Reading</label>
<input type="checkbox" id="hobby" name="hobby" value="writing">
<label for="hobby">Writing</label>
<input type="checkbox" id="hobby" name="hobby" value="cricket">
<label for="hobby">Cricket</label>
<input type="checkbox" id="hobby" name="hobby" value="traveling">
<label for="hobby">Traveling</label> <br> <br>
<input type="submit">
</form>
</body>
</html>