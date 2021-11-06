<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jc"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
 <link href="css js/mydcstyle.css" rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
</head>
<body>
<table class = "PageHeaderTable">
	<tr style="background-color:black;color:white;">
							<fmt:setLocale value="${response.locale}"/>
							<jsp:useBean id="dt" class="java.util.Date"/>
								<th>
									<div class="">
										<font class="MytdColor">Date:</font>
										<div class="input_field"><fmt:formatDate value="${dt}" var="fdt" type="date" dateStyle="FULL"/>${fdt } </div>
									</div>
								</th>
								<th>
									<div class="">
										<font class="MytdColor">Time:</font>
										<div class="input_field"><fmt:formatDate value="${dt}" var="ftm" type="time" timeStyle="FULL"/>${ftm } </div>
									</div>
								</th>
								<th>
									<div class="">
										<font class="MytdColor">Number:</font>
										<div class="input_field"><fmt:formatNumber value="78945612300" var="fnumber" type="number"/> ${fnumber }</div>
									</div>
								</th>
								<th>
									<div class="">
										<font class="MytdColor">Currency:</font>
										<div class="input_field"><fmt:formatNumber value="78945612300" var="fcurrency" type="currency"/> ${fcurrency }</div>
									</div>
								</th>
							</tr>
								<tr ><th class = "PageFooterCell" colspan="4">Copyright © 2020 Education Solutions | Powered by Tushar Solutions</th>
	</tr>
 </table> 
</body>
</html>