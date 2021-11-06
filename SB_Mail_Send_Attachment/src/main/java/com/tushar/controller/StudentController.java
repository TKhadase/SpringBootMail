package com.tushar.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.core.env.Environment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tushar.CustomPropertyeditors.dateTime_To_LocalDateTime_Editor;
import com.tushar.CustomPropertyeditors.date_To_LocalDate_Editor;
import com.tushar.CustomPropertyeditors.time_To_LocalTime_Editor;
import com.tushar.common.StudentFormValidator;
import com.tushar.entity.SearchStudent;
import com.tushar.entity.Student;
import com.tushar.entity.StudentFiles;
import com.tushar.entity.UserDetails;
import com.tushar.service.iStudenService;

@Controller
public class StudentController {

	@Autowired
	private ServletContext sc;

	@Autowired
	private iStudenService service;

	@Autowired
	private Environment env;

	@Autowired
	private StudentFormValidator studentFormValidatorObj;

	@GetMapping("/home")
	public String showUserHomeSession() {
		return "home";
	}

	@GetMapping("/register")
	public String showSignUp(@ModelAttribute UserDetails userDetails, RedirectAttributes attrs, 
			BindingResult errors) {
		return "signup";
	}
	
	@PostMapping("/register")
	public String processSignUp(@ModelAttribute UserDetails userDetails, RedirectAttributes attrs, 
			BindingResult errors) {
		System.out.println("StudentController.processSignUp()"+userDetails);
		String  resultMsg= service.registerUser(userDetails);
		attrs.addFlashAttribute("resultMsg", resultMsg);
		return "redirect:Index";
	}


	@RequestMapping({ "/", "/Index" })
	public String showLoginHome() {
		return "Index";
	}

	@GetMapping("/header")
	public String showheader() {
		return "header";
	}

	@GetMapping("/footer")
	public String showfooter() {
		return "footer";
	}

	@GetMapping("/addStudent")
	public String NewStudentForm(Map<String, Object> map, @ModelAttribute Student student) {
		return "student_register";
	}

	@PostMapping("/addStudent")
	public String NewStudentFormSubmission(RedirectAttributes attrs, @ModelAttribute Student student,
			BindingResult errors) throws IOException {
		System.out.println("MyController.NewStudentFormSubmission():" + student);

		if ("N".equalsIgnoreCase(student.getVflag())) {
			if (studentFormValidatorObj.supports(student.getClass())) {
				studentFormValidatorObj.validate(student, errors);
				if (errors.hasErrors()) {
					return "student_register";
				}
			}
		}

		String resultMsg = service.registerStudent(student);
		attrs.addFlashAttribute("resultMsg", resultMsg);
		return "redirect:allStudent";
	}

	@GetMapping("/allStudent")
	public String getAllStudentList(Map<String, Object> map,
			@PageableDefault(page = 0, size = 5, sort = "ENROLLID", direction = Direction.ASC) Pageable pageable) {
		Page<Student> listStudents = service.getAllStudentsByPage(pageable);
		map.put("listStudents", listStudents);
		map.put("isFromSearchOrAll", "All");
		return "allStudent";
	}

	@GetMapping("/updateStudent")
	public String updateStudentDetailsForm(Map<String, Object> map, @RequestParam(name = "eid") Integer enrollId,
			@ModelAttribute Student student) {
		Student studentDetails = service.getStudentDetails(enrollId);
		System.out.println("MyController.updateStudentDetailsForm():" + studentDetails);
		BeanUtils.copyProperties(studentDetails, student);
		map.put("student", student);
		String propSections = env.getProperty(student.getCurrentStandard());
		List<String> sectionsDetails = Arrays.asList(propSections.split(","));
		map.put("sectionsDetails", sectionsDetails);
		return "student_register";
	}

	@PostMapping("/updateStudent")
	public String updateStudentDetails(RedirectAttributes attrs, @ModelAttribute Student student,
			BindingResult errors) {

		if ("N".equalsIgnoreCase(student.getVflag())) {
			if (studentFormValidatorObj.supports(student.getClass())) {
				studentFormValidatorObj.validate(student, errors);

				if (errors.hasErrors()) {
					return "student_register";
				}
			}
		}

		String msg = service.updateStudentDetails(student);
		attrs.addFlashAttribute("resultMsg", msg);
		return "redirect:allStudent";
	}

	@GetMapping("/removeStudent")
	public String removeStudent(RedirectAttributes attrs, @RequestParam(name = "eid") Integer enrollId,
			@ModelAttribute Student student) {
		String msg = service.removeStudentDetails(enrollId);
		attrs.addFlashAttribute("resultMsg", msg);
		return "redirect:allStudent";
	}

	@GetMapping("/searchStudent")
	public String searchStudentForm(Map<String, Object> map, @ModelAttribute("student") SearchStudent student) {
		return "searchStudent";
	}

	@PostMapping("/searchStudent")
	public String searchStudentDetails(Map<String, Object> map, @ModelAttribute("student") SearchStudent student,
			@PageableDefault(page = 0, size = 100, sort = "ENROLLID", direction = Direction.ASC) Pageable pageable) {
		System.out.println("MyController.searchStudentDetails::" + student);
		Iterable<Student> listStudents = service.searchStudentsByDetails(student);
		map.put("listStudents", listStudents);
		map.put("isFromSearchOrAll", "Search");
		return "allStudent";
	}

	@ModelAttribute("classStandardInfo")
	public List<String> getStandardDropDownValues() {
		String propClasses = env.getProperty("classes");
		List<String> classes = Arrays.asList(propClasses.split(","));
		return classes;
	}
	
	@ModelAttribute("rolesInfo")
	public List<String> getRolesInfoValues() {
		String strRoles = "ADMIN,HEAD,INCHARGE";
		List<String> roles = Arrays.asList(strRoles.split(","));
		return roles;
	}

	@ModelAttribute("chBox1")
	public List<String> getchBox1Values() {
		return List.of("I agree with terms and conditions");
	}

	@ModelAttribute("chBox2")
	public List<String> getchBox2Values() {
		return List.of("I want to receive the newsletter");
	}

	@PostMapping("/sections")
	public String getStudentSectionValues(@RequestParam("currentStandard") String currentStandard,
			@ModelAttribute Student student, Map<String, Object> map, BindingResult errors) {
		String propSections = env.getProperty(currentStandard);
		List<String> sectionsDetails = Arrays.asList(propSections.split(","));
		map.put("sectionsDetails", sectionsDetails);
		return "student_register";
	}

	@PostMapping("/uploadStudentFiles")
	public String uploadFileForm(Map<String, Object> map, @RequestParam(name = "eid") Integer enrollId,
			@ModelAttribute StudentFiles studentFiles) {
		map.put("eid", enrollId);
		return "uploadStudentFiles";
	}

	@GetMapping("/download")
	public String fileDownload(@RequestParam("eid") Integer enrollId, @RequestParam("f") String fileType, HttpServletResponse res) throws Exception {
		
		String filePath=null;
		File file= null;
		Student studentDetails = service.getStudentDetails(enrollId);
		Student student = studentDetails;
		
		if("R".equalsIgnoreCase(fileType)) {
			filePath=student.getResumePath();
		}
		else {
			filePath=student.getPhotoPath();
		}
		 file = new File(filePath);
		res.setContentLengthLong(file.length());
		String mimeType = sc.getMimeType(filePath);
		mimeType = mimeType != null ? mimeType : "application/octet-stream";
		res.setContentType(mimeType);
		InputStream is = new FileInputStream(filePath);
		OutputStream os = res.getOutputStream();
		res.setHeader("Content-Disposition", "attachment;fileName=" + file.getName());
		IOUtils.copy(is, os);
		is.close();
		os.close();
		return null; // This indicates response should go to browser directly
	}

	@PostMapping("/UploadStudentData")
	public String uploadFileDetails(RedirectAttributes attrs, Map<String, Object> map,
			@ModelAttribute StudentFiles studentFiles) throws IOException {

		String uploadPath = env.getProperty("file.upload.path");
		File fileUploadPath = new File(uploadPath);
		if (!fileUploadPath.exists()) {
			fileUploadPath.mkdir();
		}

		MultipartFile photoFile = studentFiles.getPhoto();
		MultipartFile resumeFile = studentFiles.getResume();
		String photoFileName = "P_" + studentFiles.getEid() + ""
				+ (photoFile.getOriginalFilename().substring(photoFile.getOriginalFilename().lastIndexOf('.')));
		String resumeFileName = "R_" + studentFiles.getEid() + ""
				+ (resumeFile.getOriginalFilename().substring(resumeFile.getOriginalFilename().lastIndexOf('.')));
		if (photoFile != null && resumeFile != null) {
			InputStream iPhoto = photoFile.getInputStream();
			InputStream iResume = resumeFile.getInputStream();
			OutputStream os_Photo = new FileOutputStream(uploadPath + photoFileName);
			OutputStream os_Resume = new FileOutputStream(uploadPath + resumeFileName);
			IOUtils.copy(iPhoto, os_Photo);
			IOUtils.copy(iResume, os_Resume);
			iPhoto.close();
			iResume.close();
			os_Photo.close();
			os_Resume.close();

			Student studentDetails = service.getStudentDetails(Integer.parseInt(studentFiles.getEid()));
			Student student = studentDetails;
			student.setPhotoPath(uploadPath + photoFileName);
			student.setResumePath(uploadPath + resumeFileName);
			String msg = service.updateStudentDetails(student);
			attrs.addFlashAttribute("resultMsg", msg);
		}
		return "redirect:allStudent";
	}
	
	
	@GetMapping("/report")
	public String generateReportData( Map<String, Object> map,  
																		@RequestParam("type") String type,
																		@RequestParam("eid") String eid) 
	{
		map.put("eid", eid);
		
		if("Students".equalsIgnoreCase(eid))
		{
			Iterable<Student> studentsList =service.getAllStudents();
			map.put("studentsList", studentsList);
		}else {
			Student studentDetails = service.getStudentDetails(Integer.parseInt(eid));
			map.put("studentDetails", studentDetails);
		}
		
		if("E".equalsIgnoreCase(type)) {
			return "excelStudentReport";
		}else {
		return "pdfStudentReport";
		}
	}
	
	@GetMapping("/accessDenied")
	public String accessDeniedPage(Map<String, Object> map) {
		map.put("NoAccess", "Sorry ! U Dont have acces this menu.");
		return "home";
	}

	
	@InitBinder
	public void convertStudentDOB_initBinder(WebDataBinder binder) {
		System.out.println("MyController.convertStudentDOB_initBinder()");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor cde = new CustomDateEditor(sdf, false);

		binder.registerCustomEditor(java.util.Date.class, cde);
		binder.registerCustomEditor(LocalTime.class, new time_To_LocalTime_Editor());
		binder.registerCustomEditor(LocalDate.class, new date_To_LocalDate_Editor());
		binder.registerCustomEditor(LocalDateTime.class, new dateTime_To_LocalDateTime_Editor());
	}

}
