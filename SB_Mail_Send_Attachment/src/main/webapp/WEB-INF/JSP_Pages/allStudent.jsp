<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="java.text.SimpleDateFormat"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="img/header.png" type="image/x-icon">
<link rel="stylesheet" href="css js/tables.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>MySchool</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
	$(function() {
		$("#header").load("header");
		$("#footer").load("footer");
	});
</script>
</head>
<body>
	<div id="header"></div>
	<div class="divbody">
		<table width="100%">
			<tr width="100%">
				<td width="15%"></td>
				<td width="75%">
					<h3 style="text-align: center; color:blue;">Student Details</h3>
					<p style="text-align: right;" ><b>Download: <u><a style="text-align: right; color:#99004d;" href="report?type=E&eid=Students">Excel Report</a></u> | <a  style="text-align: right; color:#99004d;" href="report?type=P&eid=Students"><u>Pdf Report</u></a>&nbsp;&nbsp;&nbsp;</b></p>
					 <p style="align: right; color:red;"><b>${resultMsg}</b></p> 
					<table class="tableList">
						<tr>
							<th>Enroll ID</th>
							<th>First name</th>
							<th>Middle name</th>
							<th>Last Name</th>
							<th>Class/Year</th>
							<th>City</th>
							<th>DOB</th>
							<th></th>
						</tr>
						<c:choose>
						<c:when test="${!empty listStudents}">
						<c:if test="${isFromSearchOrAll == 'All'}">
						<c:forEach var="stud" items="${ listStudents.getContent() }">
						<tr class="trlist">
							<td><b><a  style="color:red;" href="updateStudent?eid=${stud.ENROLLID}"><u>&nbsp;${stud.ENROLLID}&nbsp;</u></a></b></td>
							<td>${stud.fname}</td>
							<td>${stud.mname}</td>
							<td>${stud.lname}</td>
							<td>${stud.currentStandard}--${stud.currentSection}</td>
							<td>${stud.address2}</td>
							<td>${SimpleDateFormat("MM-dd-yyyy").format(stud.dob)}</td>
							<td><a href="removeStudent?eid=${stud.ENROLLID}" onclick="confirm('Are u sure want to delete ?')">
									<i class="fa fa-trash" style="font-size: 25x; color: red"></i>
								</a></td>
						</tr>
						</c:forEach>
						
						<c:if test="${listStudents.getContent().isEmpty()}">
							<tr class="trlist"><td colspan="8"  style="color:red;text-align:center;"><b>No records</b></td></tr>
						</c:if> 
						
						</c:if>
						
						<c:if test="${isFromSearchOrAll == 'Search'}">
						<c:forEach var="stud" items="${ listStudents}">
						<tr class="trlist">
							<td><b><a  style="color:red;" href="updateStudent?eid=${stud.ENROLLID}"><u>&nbsp;${stud.ENROLLID}&nbsp;</u></a></b></td>
							<td>${stud.fname}</td>
							<td>${stud.mname}</td>
							<td>${stud.lname}</td>
							<td>${stud.currentStandard}</td>
							<td>${stud.address2}</td>
							<td>${stud.dob}</td>
							<td><a href="removeStudent?eid=${stud.ENROLLID}" onclick="confirm('Are u sure want to delete ?')">
									<i class="fa fa-trash" style="font-size: 25x; color: red"></i>
								</a></td>
						</tr>
						</c:forEach>
						</c:if>
					 
						</c:when>
						<c:otherwise>
							<tr class="trlist"><td colspan="8"  style="color:red;text-align:center;"><b>No records</b></td></tr>
						</c:otherwise>
						</c:choose>
					</table>


				</td>
			</tr>
			<td width="10%"></td>
		</table>
		<p>
		<c:if test="${isFromSearchOrAll == 'All'}">
		<ul class="w3-pagination w3-border pagingbar" style="margin-left:25%;">
			<c:if test="${!listStudents.isFirst() }">
			<li><a href="allStudent?page=0">First</a></li>
			<li><a href="allStudent?page=${listStudents.getNumber()-1}">« Previous</a></li>
			</c:if>
			<c:forEach var="i" begin="1" end="${listStudents.getTotalPages()}" step="1">
				<c:choose>
					<c:when test="${(i-1) ==  listStudents.getNumber()}">
					 <li><a class="w3-green" href="allStudent?page=${i-1}"><u>${i}</u></a></li>
				</c:when>	 
				<c:otherwise > 
					<li><a href="allStudent?page=${i-1}"><u>${i}</u></a></li>
			  </c:otherwise>
			  </c:choose>
			</c:forEach>
			<c:if test="${!listStudents.isLast() }">
			<li><a href="allStudent?page=${listStudents.getNumber()+1}">Next » </a></li>
			<li><a href="allStudent?page=${listStudents.getTotalPages()-1}">Last</a></li>
			</c:if>
		</ul>
		</c:if>
		</p>
	</div>

	<div id="footer"></div>
</body>
</html>