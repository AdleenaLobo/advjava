<%@ page language="java" import="java.util.*"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Enumeration e= request.getParameterNames();
while(e.hasMoreElements()){
String output = null;
String p = (String) e.nextElement();
// out.println(p+ " ");
if (p.equals("hobby")){
	
// block this cuz hobby has multiple values while others have a single value
String [] h = request.getParameterValues(p);
out.print(p + " ");
for (String s: h){
out.print(" "+ s);
}
}
else{
output =request.getParameter(p);
out.println(p+" "+output+"<br>");
}
}
%>
</body>
</html>