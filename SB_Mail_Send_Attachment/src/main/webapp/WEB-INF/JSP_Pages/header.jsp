<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.time.LocalDateTime,java.time.format.DateTimeFormatter"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="img/header.png"  type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css js/my.css">
 <link href="css js/mydcstyle.css" rel="stylesheet" type="text/css" />
 <script src="css menu/jquery.min.js" type="text/javascript"></script>
 <script src="css menu/toggle_button_script.js" type="text/javascript"></script>
<title>Home_-_MySchool</title>
<style>
ul {
    border: 1px solid #555;
}
a{
color: white;
}
body {
  overflow-x: hidden;
}
</style>
</head>
<body>
<marquee style="background-color:black;"direction="left"><font style="font-weight:bold;color:white;" >Welcome to Education Management</font></marquee>
<table>
<tr bgcolor="#00BFFF">
<td width="20%">
<img src="img/header.png" height="80px" ></td>
<td width="65%" style="text-align:center;"><font style="font-weight:bold;color:white;font-size:20px;" >Tushar School Management services</font></td>
<td width="10%">
<img style="float:right;" src="img/headRight.png" height="80px" ></td>
</tr>
</table>

<div class="row" style="background-color: black; margin-top: 5px;">
                    <div class="container-fluid">
                        <div class="col-md-12">
                            <div id='cssmenu'>
                                <ul>
                                   
                                    <li class='active'>
                                        <a class="w3-red" id="MenuContent_Home" href="home">Home</a>
                                    </li>
                                    <li><a id="MenuContent_Students" href="#">Students</a>
                                        <ul>
                                            <li>
                                                <a id="MenuContent_StudentsNew" href="addStudent">New Student</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_StudentsSearch" href="searchStudent">Search Student</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_StudentsGetAll" href="allStudent">Get All Students list</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_400error" href="400error">get 404 error</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1chemicaltech" href="departments/chemicaltechnology/Default.aspx">Chemical Technology</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1chemistry" href="departments/Chemistry/Default.aspx">Chemistry</a>
                                            </li>
                                </ul>
                                </li>
                                <li><a id="MenuContent_h1Departments" href="#">Registration</a>
                                        <ul>
                                            <li>
                                                <a id="MenuContent_h1appliedelec" href="departments/AppliedElec/Default.aspx">Applied Electronics</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1biotech" href="departments/biotechnology/Default.aspx">Biotechnology</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1botany" href="departments/botany/Default.aspx">Botany</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1buzinessadmin" href="departments/BusinessAdmin/Default.aspx">Bussiness Admin & Mngt</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1chemicaltech" href="departments/chemicaltechnology/Default.aspx">Chemical Technology</a>
                                            </li>
                                            <li>
                                                <a id="MenuContent_h1chemistry" href="departments/Chemistry/Default.aspx">Chemistry</a>
                                            </li>
                                </ul>
                                </li>
                                <li><a id="MenuContent_h1administration" href="#">Services</a>
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1hierarchy" href="pages/orgChart.aspx">Organizational Hierarchy</a></li>
                                </li>
                                <li>
                                    <a id="MenuContent_h1authority" href="pages/Authorities.aspx">Authorities</a></li>
                                <li>
                                    <a id="MenuContent_h1vcoffice" href="pages/vcoffice.aspx">VC Office</a>
                                </li>
                                <li>
                                    <a id="MenuContent_h1provc" href="pages/provcoffice.aspx">PROVC Office</a>
                                </li>
                                <li>
                                    <a id="MenuContent_h1registrar" href="pages/registraroffice.aspx">Registrar Office</a>
                                </li>
                                <li>
                                    <a id="MenuContent_h1adminoffice" href="pages/adminofficres.aspx">Administrative Officers</a>
                                </li>
                                   <li>
                                    <a id="MenuContent_H1CASU12" href="pages/CentralAdmServiceUnit.aspx">Central Administrative Services Unit (CASU)</a>
                                </li>
                                </ul>                                 
                                <li><a id="MenuContent_h1examination" href="#">Examination</a>
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1examoffice" href="Examination/Aboutus.aspx">Examination Office</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1timetable" href="Examination/Timetable.aspx">Time Table</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1pressnote" href="Examination/pressnote.aspx">Press Note</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1examnews" href="Examination/ExamNoticeUpload.aspx">News & Announcements</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1examresult" href="Examination/ExamResult.aspx">Exam Results</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1subjectabb" href="Examination/abbrivations.aspx">Subject Abbreviations</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1admissioncard" href="Examination/admissioncard.aspx">Admission Card</a></li>
                                        <li>
                                            <a id="MenuContent_h1formfees" href="Examination/formandschedules.aspx">Forms & Fee Schedule</a></li>
                                        <li>
                                            <a id="MenuContent_h1gictimetable" href="Examination/GICTimetable.aspx">GIC Timetable</a></li>
                                        <li>
                                            <a id="MenuContent_h1examcontact" href="Examination/contact.aspx">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li><a id="MenuContent_h1iqac" href="#">Results</a>
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1aboutiqac" href="IQAC/AboutUs.aspx">About IQAC</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacfunction" href="IQAC/FunctionsIQAC.aspx">Functions of IQAC</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacdirector" href="IQAC/Director.aspx">Director, IQAC</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqaccommittee" href="IQAC/Comittee.aspx">IQAC Committee</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacl" href="IQAC/Iqac.aspx">IQAC</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacgallery" href="IQAC/Gallery.aspx">IQAC Gallery</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacnews" href="IQAC/IQACNotification.aspx">IQAC Notifications</a></li>
                                        
                                        <li>
                                            <a id="MenuContent_h1iqacmeeeting" href="IQAC/MinutesofMeeting.aspx">Minutes of Meeting</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqaclink" href="IQAC/UsefulLinks.aspx">Some Useful Links</a></li>
                                        <li>
                                            <a id="MenuContent_h1iqacworkshop" href="IQAC/WorkShopOrganized.aspx">Workshops Organized</a></li>
                                    </ul>
                                </li>
                                <li><a id="MenuContent_h1centralised" href="#">Reports</a>
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1computercenter" href="pages/ComputerCenter.aspx">Computer Center</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1teachingresearch">Teaching & Research Facilities</a>                                                                                
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1fablab" href="pages/fablab.aspx">Fabrication Laboratory (FAB LAB)</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1cic" href="pdf/CIC-Web-Site.pdf" target="_blank">Central Instrumentation Cell (CIC)</a>
                                        </li>
                                        <li><a id="MenuContent_h1studfacility" href="#">Student Facilities</a>                                        
                                            <ul>
                                                <li><a href="#">Remedial Coaching Center</a></li>
                                                <li><a href="#">Pre Exam Training Center</a></li>
                                                <li><a href="#">Center for Guidance to SET NET</a></li>
                                                <li><a href="#">Competetive Exam Guidance Center</a></li>
                                                <li><a href="#">Equal Opportunity Cell</a></li>
                                                <li><a href="#">Adventure Sports</a></li>
                                                <li>
                                                    <a id="MenuContent_HyperLink39" href="http://hostel.sgbauwiums.in" target="_blank">University Hostel</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1otherfacility" href="pages/otherStudentfacilities.aspx">Other Facilities</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a id="MenuContent_h1studentsupport" href="#">Student info</a>                                
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1bookbank" href="#">Book Bank</a>                                        
                                       </li>
                                        <li><a id="MenuContent_h1financialsupport" href="#">Financial Support Scheme</a> 
                                            <ul>
                                                <li>
                                                    <a id="MenuContent_h1earnlearn" href="#">Earn & Learn Scheme</a> 
                                                </li>
                                                <li> <a id="MenuContent_h1scholarhipnew" href="#">Scholarship</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1studentinsurance" href="#">Student Insurance Facility</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1studentcouncil" href="pdf/STUDENT_COUNCIL_DATA.docx" target="_blank">Student Council</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a id="MenuContent_h1contact" href="#">Events</a>                                
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1contactus" href="pages/contact.aspx">Contact Us</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1deptcontact" href="pages/departmentcontact.aspx">Department Contacts</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1examenquiry" href="pages/otherenquiry.aspx">Exam & Other Enquiry</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1epbxno" href="pdf/telephone-list-2018.pdf">EPBX No.& Extensions</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1feedback">Feedback</a>
                                        </li>
                                    </ul>
                                </li>
                                
                             
                                <li><a id="MenuContent_h1other" href="#">Other</a>                                
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1ugcexam" href="pages/UGCNETExaminationCentre.aspx">UGC-NET Exam Centre</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1casu" href="pages/CentralAdmServiceUnit.aspx">Central Administrative Services Unit</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1ugchumanresource" href="http://www.ascsgbau.ac.in/" target="_blank">UGC Human Resource Development</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1womanstudy" href="http://www.wsc.sgbaulib.com/" target="_blank">Women Studies Centre</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1grievance" href="pages/GrievanceRedressakCSH.aspx">Grievance Redressal Cell for Sexual Harassment</a> 
                                        </li>
                                    </ul>
                                </li>
                                
                                  <li><a id="MenuContent_h1other" href="#">Setings</a>                                
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1ugcexam" href="pages/UGCNETExaminationCentre.aspx">UGC-NET Exam Centre</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1casu" href="pages/CentralAdmServiceUnit.aspx">Central Administrative Services Unit</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1ugchumanresource" href="http://www.ascsgbau.ac.in/" target="_blank">UGC Human Resource Development</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1womanstudy" href="http://www.wsc.sgbaulib.com/" target="_blank">Women Studies Centre</a>
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1grievance" href="pages/GrievanceRedressakCSH.aspx">Grievance Redressal Cell for Sexual Harassment</a> 
                                        </li>
                                    </ul>
                                </li>
                                  
                                  
                                   <li ><a  id="MenuContent_Language" href="#">Language</a>   
                                    <ul>
                                        <li>
                                            <a id="MenuContent_LanguageHindi" href="?lang=hi_IN">Hindi</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_LanguageEnglish" href="?lang=en_US">English</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_LanguageFrench" href="?lang=fr_FR">French</a> 
                                        </li>
                                          <li>
                                            <a id="MenuContent_LanguageGerman" href="?lang=de_DE">German</a> 
                                        </li>
                                          <li>
                                            <a id="MenuContent_LanguageChinese" href="?lang=zh_CN">Chinese</a> 
                                        </li>
                                    </ul>
                                </li>
                                  
                                <li style="float:right;"><a class="w3-blue" id="MenuContent_h1other" href="#">My Acount</a>   
                                    <ul>
                                        <li>
                                            <a id="MenuContent_h1ugcexam" href="pages/UGCNETExaminationCentre.aspx">My Profile</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_h1casu" href="pages/CentralAdmServiceUnit.aspx">Settings</a> 
                                        </li>
                                        <li>
                                            <a id="MenuContent_LogOut" href="signOut">LogOut</a> 
                                        </li>
                                    </ul>
                                </li>
                                <li style="float:right; background-color: green;"><a id="MenuContent_Dt" href="#"><%=LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss"))%></a>
                                   </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
</body>
</html>