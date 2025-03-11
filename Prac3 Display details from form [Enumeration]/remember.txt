<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
function check(){
alert("recieved!!")
$.ajax({
type:"post",
url: "ajaxprocess.jsp",
data: "input=" + $('#ip').val() + "&output="+$('#op').val(),
success: function(msg){
$('#output').append(msg);
},
error: function(){
alert("error!")
}
});
}
</script>
</head>
<body>
input: <input id="ip" type="text" name="ip" value="" /> <br><br>
output: <input id="op" type="text" name="op" value="" /> <br><br>
<input type="button" onclick="check()" value="call jsp" name="call jsp" id="call" /> <br><br>
<div id="output"></div>
</body>
</html>
