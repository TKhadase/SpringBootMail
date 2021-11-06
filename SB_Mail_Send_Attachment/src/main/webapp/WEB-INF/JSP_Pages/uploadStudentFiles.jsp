<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="sftags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="img/header.png" type="image/x-icon">
<link rel="stylesheet" href="css js/forms.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>MySchool</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript" src="css js/StudentForm.js">
	
</script>
<script>
	$(function() {
		$("#header").load("header");
		$("#footer").load("footer");
	});
</script>
</head>
<body>
	<div id="header"></div>
	<div class="form_wrapper">
		<a  href="updateStudent?eid=${eid}"><font style="size:15px;"	class="MytdColor"><u>Back</u></font></a>
		<div class="form_container">
			<div class="title_container">
				<h2 class="headColor">
					<b>Upload Student File</b>
				</h2>
			</div>
			<div class="col_half"></div>
			<div class="row clearfix">
				<div class="">
					<sform:form modelAttribute="studentFiles" method="POST"
						action="UploadStudentData" id="StudForm"   enctype="multipart/form-data">
						<p style="color: red;">
							<sform:errors path="*" />
						</p>
						<font class="MytdColor">Student Enroll ID:</font><b>${eid}</b>
						<hr>
						<table>
							<tr>
								<td>
									<sform:input type="hidden" path="eid" value="${eid}"/></td>
							</tr>
							<tr>
								<td><span style="color: red;" id="spanPhoto"></span><font
									class="MytdColor">Photo :</font>
									<div class="">
										<div class="col_half input_field">
											<sform:input path="photo" type="file" name="photo"
												placeholder="select photo"  required="true" />
										</div>
									</div></td>
							</tr>
							<tr>
								<td><font
									class="MytdColor">Resume :</font>
									<div class="">
										<div class="col_half input_field">
											<sform:input path="resume" type="file" name="resume"
												placeholder="select resume" required="true" />
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="col_half">
										<input class="button" type="submit" value="Upload" />
									</div>
								</td>
								<td>
									<div class="col_half"></div>
								</td>
							</tr>
						</table>
					</sform:form>
				</div>
			</div>
		</div>
	</div>

	<div id="footer"></div>
</body>
</html>