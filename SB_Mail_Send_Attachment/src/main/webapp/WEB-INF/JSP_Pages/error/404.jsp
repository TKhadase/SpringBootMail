<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<table align="center" bgcolor="yellow" border="1">
<tr> <td></td><td>:</td><td>Something went wrong. Please try later !</td></tr>
<tr><td>CODE</td><td>:</td> <td>${status}</td></tr>
<tr><td>TIME</td><td>:</td> <td> ${timestamp}</td></tr>
<tr> <td>MESSAGE</td><td>:</td><td> ${message}</td></tr>
<tr><td>TYPE</td><td>:</td> <td> ${type}</td></tr>
<tr> <td>PATH</td><td>:</td><td> ${path}</td></tr>
<tr><td>TRACE</td><td>:</td> <td> ${trace}</td></tr>
</table>
<p style="text-align:center"><img src="img/404.jpg"  width="700px" height="700px"/></p>
<br><div id="footer"></div>
  </body>
</html>