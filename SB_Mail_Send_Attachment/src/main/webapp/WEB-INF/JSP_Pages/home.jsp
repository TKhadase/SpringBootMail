<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="img/header.png" type="image/x-icon">
<title>MySchool</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script> 
$(function(){
  $("#header").load("header"); 
  $("#footer").load("footer"); 
});
</script>
</head>
<body>
<div id="header"></div>
<h1 style="color:red; text-align:left">Student Portal</h1> <BR>
<h3 style="color:red; text-align:center">${NoAccess}</h3>
 <table>
 <tr>
<td width="30%"></td> <td width="70%"><img src="img/student_habit.JPG"  height="40%" width="100%"> </td>
</tr></table>

  <br><div id="footer"></div>
</body>
</html>