<%@ page language="java" import="java.sql.*, java.util.*" contentType="text/html;
charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
boolean found = false;
String role = null;
String p1 = request.getParameter("uname");
int uid = Integer.parseInt(p1);
String pwd = request.getParameter("pwd");
try{ 
	Class.forName("org.mariadb.jdbc.Driver");
	
	
	//change the DB to whatever db u have , the username here root and passworrd here Adleena
	
Connection cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/DB", "root",
"Adleena");
	
	
	
	//change the table name accordingly n column name
	
	
PreparedStatement ps = cn.prepareStatement("select * from usersCopy where uid=? and password=?");
ps.setInt(1, uid);
ps.setString(2, pwd);
ResultSet rs = ps.executeQuery();
while(rs.next()){
role = rs.getString("role");
found = true;
}
if (found)
out.println("Found: "+ uid+ " "+ role);
else
out.println("Couldnt find your data.");
}
catch(Exception e){ e.printStackTrace(); }
%>
</body>
</html>