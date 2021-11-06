<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="sftags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
.register {
	background: -webkit-linear-gradient(left, #3931af, #00c6ff);
	margin-top: 3%;
	padding: 3%;
}

.register-left {
	text-align: center;
	color: #fff;
	margin-top: 4%;
}

.register-left input {
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	width: 60%;
	background: #f8f9fa;
	font-weight: bold;
	color: #383d41;
	margin-top: 30%;
	margin-bottom: 3%;
	cursor: pointer;
}

.register-right {
	background: #f8f9fa;
	border-top-left-radius: 10% 50%;
	border-bottom-left-radius: 10% 50%;
}

.register-left img {
	margin-top: 15%;
	margin-bottom: 5%;
	width: 25%;
	-webkit-animation: mover 2s infinite alternate;
	animation: mover 1s infinite alternate;
}

@
-webkit-keyframes mover { 0% {
	transform: translateY(0);
}

100
%
{
transform
:
translateY(
-20px
);
}
}
@
keyframes mover { 0% {
	transform: translateY(0);
}

100
%
{
transform
:
translateY(
-20px
);
}
}
.register-left p {
	font-weight: lighter;
	padding: 12%;
	margin-top: -9%;
}

.register .register-form {
	padding: 10%;
	margin-top: 10%;
}

.btnRegister {
	float: right;
	margin-top: 10%;
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	background: #0062cc;
	color: #fff;
	font-weight: 600;
	width: 50%;
	cursor: pointer;
}

.register .nav-tabs {
	margin-top: 3%;
	border: none;
	background: #0062cc;
	border-radius: 1.5rem;
	width: 28%;
	float: right;
}

.register .nav-tabs .nav-link {
	padding: 2%;
	height: 34px;
	font-weight: 600;
	color: #fff;
	border-top-right-radius: 1.5rem;
	border-bottom-right-radius: 1.5rem;
}

.register .nav-tabs .nav-link:hover {
	border: none;
}

.register .nav-tabs .nav-link.active {
	width: 100px;
	color: #0062cc;
	border: 2px solid #0062cc;
	border-top-left-radius: 1.5rem;
	border-bottom-left-radius: 1.5rem;
}

.register-heading {
	text-align: center;
	margin-top: 8%;
	margin-bottom: -15%;
	color: #495057;
}
</style>
</head>
<body style="background-color:#ADD8E6">
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="img/logo_white.png" alt="">
				<h3>Welcome</h3>
				<p>SignUp and contact class incharge/Dept.Head to activate account details</p>
				<form action="Index" method="get">
					<input type="submit" name="" value="Login">
				</form>
				<br>
			</div>
			<div class="col-md-9 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Student</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Staff</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Apply as a Student</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
								<sform:form action="register" method="POST" modelAttribute="userDetails" >
									 <sform:input path="fname"  type="text" class="form-control"
										placeholder="First Name *" value=""/>
								</div>
								<div class="form-group">
								 <sform:input path="lname"  type="text" class="form-control"
										placeholder="Last Name *" value=""/>
								</div>
								<div class="form-group">
									 <sform:input path="email" type="email" name="email"    class="form-control"
										placeholder="Your Email *" value=""/>
								</div>
								<div class="form-group">
									 <sform:input path="mobile"  type="text" class="form-control"
										placeholder="mobile *" value=""/>
								</div>
								<div class="form-group">
										<sform:input path="passwrd" type="password" class="form-control"
										placeholder="Password *" value=""/>
								</div>
								<div class="form-group">
									
								</div>
							</div>
							<div class="col-md-6">
							<div class="form-group">
									 <sform:input path="address"  type="text" class="form-control"
										placeholder="address *"   name="address"  value=""/>
								</div>
								<div class="form-group">
								    Date Of Birth :<sform:input path="dob" type="date" name="dob" id="dob" class="form-control"
										placeholder="Date Of Birth *" value=""/>
								</div>
								<div class="form-group ">
								 <sform:input path="pmobile"  type="text" class="form-control"
										placeholder="Parent mobile *" value=""/>
								</div>
								<div class="form-group">
									<div class="maxl">
										Gender :  <label class="radio inline"> <sform:radiobutton path="gender" name="gender"
										  value="male" checked=""/> <span>
												Male </span>
										</label> <label class="radio inline"><sform:radiobutton path="gender" name="gender"
										 value="female"/> <span>Female </span>
										</label>
									</div>
								</div>
									<br>
									<sform:input type="hidden" path="roles" value="STUD"/>
								<input type="submit" class="btnRegister" value="Register">
							</sform:form>
							</div>
						</div>
					</div>
				
					<div class="tab-pane fade show" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Apply as a Staff</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
								<sform:form action="register" method="POST" modelAttribute="userDetails" >
									 <sform:input path="fname"  type="text" class="form-control"
										placeholder="First Name *" value=""/>
								</div>
								<div class="form-group">
								 <sform:input path="lname"  type="text" class="form-control"
										placeholder="Last Name *" value=""/>
								</div>
								<div class="form-group">
									 <sform:input path="email" type="email" name="email"    class="form-control"
										placeholder="Your Email *" value=""/>
								</div>
								<div class="form-group">
									 <sform:input path="mobile"  type="text" class="form-control"
										placeholder="mobile *" value=""/>
								</div>
								<div class="form-group">
										<sform:input path="passwrd" type="password" class="form-control"
										placeholder="Password *" value=""/>
								</div>
								<div class="form-group">
									<div class="maxl">
										Gender :  <label class="radio inline"> <sform:radiobutton path="gender" name="gender"
										  value="male" checked=""/> <span>
												Male </span>
										</label> <label class="radio inline"><sform:radiobutton path="gender" name="gender"
										 value="female"/> <span>Female </span>
										</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
							<div class="form-group">
									 <sform:input path="address"  type="text" class="form-control"
										placeholder="address *"   name="address"  value=""/>
								</div>
								<div class="form-group">
								    Date Of Birth :<sform:input path="dob" type="date" name="dob" id="dob" class="form-control"
										placeholder="Date Of Birth *" value=""/>
								</div>
								<br>
								<div class="form-group ">
								Please select your Designation:
								<div class="maxl">
										<label class="radio inline"><sform:radiobutton path="roles" name="roles" checked="true"
										 value="ICH"/> <span>Incharge </span>
										</label>
										<label class="radio inline"><sform:radiobutton path="roles" name="roles"
										 value="ADMIN"/> <span>Admin </span>
										</label>
											<label class="radio inline"> <sform:radiobutton path="roles" name="roles"
										  value="ERH" /> <span>
												Exam & Result Head </span>
										</label> 
									</div>
								</div>
									<br>
								<input type="submit" class="btnRegister" value="Register">
							</sform:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"></script>
</body>
</html>