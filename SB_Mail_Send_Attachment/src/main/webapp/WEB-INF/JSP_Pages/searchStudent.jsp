<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sform"%>
	
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
         <div class="form_container">
            <div class="title_container">
               <h2 class="headColor">Search Student Details</h2>
            </div>
            <div class="row clearfix">
               <div class="">
                  <sform:form modelAttribute="student">
                     <table >
                        <tr>
                        <td>
                              <div class="col_half">
                                 <div class="input_field"> <span><i aria-hidden="true" class="fa fa-id-card"></i></span>
                                    <sform:input path="ENROLLID" type="text" name="ENROLLID" placeholder="ENROLL no."  />
                                 </div>
                              </div>
                           </td>
                           <td>
                              <div class="col_half">
                                 <div class="input_field"> <span><i aria-hidden="true" class="fa fa-id-card"></i></span>
                                    <sform:input path="ROLLID" type="text" name="ROLLID" placeholder="Roll no."  />
                                 </div>
                              </div>
                           </td>
                        </tr>
                        <tr>
                           <div class="row clearfix">
                              <td>
                                 <div class="">
                                    <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                        <sform:input path="fname" type="text" name="fname" placeholder="First Name" />
                                    </div>
                                 </div>
                              </td>
                              <td>
                                 <div class="">
                                    <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                       <sform:input path="mname" type="text" name="mname" placeholder="Middle Name"  />
                                    </div>
                                 </div>
                              </td>
                              <td>
                                 <div class="">
                                    <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                         <sform:input path="lname" type="text" name="lname" placeholder="Last Name"  />
                                    </div>
                                 </div>
                              </td>
                           </div>
                        </tr>
                        <tr>
                           <td>
                              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
                                 <sform:input path="email" type="email" name="email" placeholder="Email"  />
                              </div>
                           </td>
						   <td>
                              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-phone"></i></span>
                                  <sform:input path="mobile" type="text" name="mobile" placeholder="Contact Number"  />
                              </div>
                           </td>
                        </tr>
						 <tr>
                           <td>
                              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-location-arrow"></i></span>
                                   <sform:input path="address1" type="text" name="address1" placeholder="Address Line1"  />
                              </div>
                           </td>
                           <td>
                              <div class="input_field"> <span><i aria-hidden="true" class="fa fa-location-arrow"></i></span>
                                  <sform:input path="address2" type="text" name="address2" placeholder="Address Line2"  />
                              </div>
                           </td>
                        </tr>
						
                        <tr>
						   <td>
                              <div class="col_half">Date Of Birth:
								 <div class="input_field"> <span><i aria-hidden="true" class="fa fa-calendar"></i></span>
                                     <sform:input path="dob" type="date" name="dob" id="dob"  />
                                 </div>
                              </div>
                           </td>
                           <td>
                              <div class="col_half select_option">
                                 <sform:select path="currentStandard" name="currentStandard">
                                    <option>Select standard</option>
                                    <option> 1</option>
                                    <option> 2</option>
									<option> 3</option>
                                    <option> 4</option>
                                 </sform:select>
                                 <div class="select_arrow"></div>
                              </div>
                           </td>
                        </tr>
                        <tr>
                           <td></td>
                           <td>
                              <input class="button" type="submit" value="Search Students" />
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