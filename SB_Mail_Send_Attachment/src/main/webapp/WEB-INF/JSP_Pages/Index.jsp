<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<link rel="shortcut icon" href="img/header.png" type="image/x-icon">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Login</title>
<link
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'
	rel='stylesheet'>
<style>
body {
	color: #000;
	overflow-x: hidden;
	height: 100%;
	background-color: #B0BEC5;
	background-repeat: no-repeat
}

.card0 {
	box-shadow: 0px 4px 8px 0px #757575;
	border-radius: 0px
}

.card2 {
	margin: 0px 40px
}

.logo {
	width: 200px;
	height: 100px;
	margin-top: 20px;
	margin-left: 35px
}

.image {
	width: 360px;
	height: 280px
}

.border-line {
	border-right: 1px solid #EEEEEE
}

.facebook {
	background-color: #3b5998;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}

.twitter {
	background-color: #1DA1F2;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}

.linkedin {
	background-color: #2867B2;
	color: #fff;
	font-size: 18px;
	padding-top: 5px;
	border-radius: 50%;
	width: 35px;
	height: 35px;
	cursor: pointer
}

.line {
	height: 1px;
	width: 45%;
	background-color: #E0E0E0;
	margin-top: 10px
}

.or {
	width: 10%;
	font-weight: bold
}

.text-sm {
	font-size: 14px !important
}

::placeholder {
	color: #BDBDBD;
	opacity: 1;
	font-weight: 300
}

:-ms-input-placeholder {
	color: #BDBDBD;
	font-weight: 300
}

::-ms-input-placeholder {
	color: #BDBDBD;
	font-weight: 300
}

input, textarea {
	padding: 10px 12px 10px 12px;
	border: 1px solid lightgrey;
	border-radius: 2px;
	margin-bottom: 5px;
	margin-top: 2px;
	width: 100%;
	box-sizing: border-box;
	color: #2C3E50;
	font-size: 14px;
	letter-spacing: 1px
}

input:focus, textarea:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	border: 1px solid #304FFE;
	outline-width: 0
}

button:focus {
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
	outline-width: 0
}

a {
	color: inherit;
	cursor: pointer
}

.btn-blue {
	background-color: #1A237E;
	width: 150px;
	color: #fff;
	border-radius: 2px
}

.btn-blue:hover {
	background-color: green;
	color: #fff;
	cursor: pointer
}

.bg-blue {
	color: #fff;
	background-color: #1A237E
}

@media screen and (max-width: 991px) {
	.logo {
		margin-left: 0px
	}
	.image {
		width: 500px;
		height: 520px
	}
	.border-line {
		border-right: none
	}
	.card2 {
		border-top: 1px solid #EEEEEE !important;
		margin: 0px 15px
	}
}
</style>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script type='text/javascript'
	src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script type='text/javascript'
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script type='text/javascript'></script>
<script type="text/javascript">
	function validateMe(frm) {
	var uname= frm.username.value;
	var upass= frm.password.value;
	var isValidated=true;
	
	if(upass=="" || upass==null){
		document.getElementById("h5Err").innerHTML="Password is required";
		isValidated =false;
	}
	
	if(uname=="" || uname==null){
		document.getElementById("h5Err").innerHTML="UserName is required";
		isValidated =false;
	}
	
	return isValidated;	
	}
</script>
</head>
<body oncontextmenu='return false' class='snippet-body' style="background-color:#ADD8E6">
	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		<div class="card card0 border-0">
			<div class="row d-flex">
				<div class="col-lg-6">
					<div class="card1 pb-5">
						<div class="row">
							<img src="img/header.png" class="logo">
						</div>
						<div class="row px-3 justify-content-center mt-4 mb-5 border-line">
							<img src="img/welcome Home.png" class="image">
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card2 card border-0 px-4 py-5">
						<div class="row mb-4 px-3">
							<h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
							<div class="facebook text-center mr-3">
								<div class="fa fa-facebook"></div>
							</div>
							<div class="twitter text-center mr-3">
								<div class="fa fa-twitter"></div>
							</div>
							<div class="linkedin text-center mr-3">
								<div class="fa fa-linkedin"></div>
							</div>
						</div>
						<div class="row px-3 mb-4">
							<div class="line"></div>
							<small class="or text-center">Or</small>
							<div class="line"></div>
						</div>
						 
						<h5 class="text-danger" ><span id="h5Err" >${param.error} 
						<c:if test="${param.logout!=null}">
						<p >You have successfully logged out.!</p>
						</c:if>
						<c:if test="${param.error!=null}">
						<p >Invalid Credentials.!</p>
						</c:if>
						 ${resultMsg}</span>
						<%
						String err =request.getParameter("err");
						if(err !=null && "EOD".equalsIgnoreCase(err) ){
						%>
						EOD is in progress. Please try Later !
						<% }%></h5>
						<form action="login" method="POST" onsubmit="return validateMe(this)">
							<div class="row px-3">
								<label class="mb-1">
									<h6 class="mb-0 text-sm">Username</h6>
								</label> <input class="mb-4" type="text" name="username"
									placeholder="Enter a valid registration number">
							</div>
							<div class="row px-3">
								<label class="mb-1">
									<h6 class="mb-0 text-sm">Password</h6>
								</label> <input type="password" name="password"
									placeholder="Enter password">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
							</div>
							<div class="row px-3 mb-4">
								<div
									class="custom-control custom-checkbox custom-control-inline">
									<input id="chk1" type="checkbox" name="chk"
										class="custom-control-input"> <label for="chk1"
										class="custom-control-label text-sm">Remember me</label>
								</div>
								<a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
							</div>
							<div class="row mb-3 px-3">
								<button type="submit" class="btn btn-blue text-center"
									>Login</button>
						</form>
					</div>
					<div class="row mb-4 px-3">
						<small class="font-weight-bold">Don't have an account? <a
							class="text-danger " href="register">Register</a></small>
					</div>
				</div>
			</div>
		</div>
		<div class="bg-blue py-4">
			<div class="row px-3">
				<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All
					rights reserved.</small>
				<div class="social-contact ml-4 ml-sm-auto">
					<span class="fa fa-facebook mr-4 text-sm"></span> <span
						class="fa fa-google-plus mr-4 text-sm"></span> <span
						class="fa fa-linkedin mr-4 text-sm"></span> <span
						class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>