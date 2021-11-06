package com.tushar.common;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tushar.entity.Student;

@Component
public class StudentFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		System.out.println("StudentFormValidator.supports()");
		return clazz.isAssignableFrom(Student.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		System.out.println("StudentFormValidator.validate()");
		Student student =(Student) target;
		
		if(null==student.getROLLID()) {
			errors.rejectValue("ROLLID", "stud.ROLLID.required");
		}else 	if( ((Float)student.getROLLID().floatValue()).isNaN()) {
			errors.rejectValue("ROLLID", "stud.ROLLID.numeric");
		}
		
		if(null==student.getFname() || student.getFname().isBlank()) {
			errors.rejectValue("fname", "stud.fname.required");
		}
		
		if(null==student.getMname()|| student.getMname().isBlank()) {
			errors.rejectValue("mname", "stud.mname.required");
		}
		else if(student.getMname().length()<1) {
			errors.rejectValue("mname", "stud.mname.length");
		}
	
		if(null==student.getLname() || student.getLname().isBlank()) {
			errors.rejectValue("lname", "stud.lname.required");
		}
		if(null==student.getEmail()  || student.getEmail().isBlank()) {
			errors.rejectValue("email", "stud.email.required");
		}
		
		if(null==student.getMobile() || student.getMobile().isBlank()) {
			errors.rejectValue("mobile", "stud.mobile.required");
		}else 	if( student.getMobile().length()<10) {
			errors.rejectValue("mobile", "stud.mobile.length");
		}
		
		if(null==student.getPasswrd() || student.getPasswrd().isBlank()) {
			errors.rejectValue("passwrd", "stud.passwrd.required");
		}else if(student.getPasswrd().length()<5) {
			errors.rejectValue("passwrd", "stud.passwrd.length");
		}
		
		if(null==student.getAddress1() || student.getAddress1().isBlank()) {
			errors.rejectValue("address1", "stud.address1.required");
		}
		else 	if(student.getAddress1().length()<5) {
			errors.rejectValue("address1", "stud.address1.length");
		}
		
		if(null==student.getAddress2() || student.getAddress2().isBlank()) {
			errors.rejectValue("address2", "stud.address2.required");
		}
		else if(student.getAddress2().length()<5) {
			errors.rejectValue("address2", "stud.address2.length");
		}
		
		if(null==student.getGender() || student.getGender().isBlank()) {
			errors.rejectValue("gender", "stud.gender.required");
		}
		if(null==student.getDob() || student.getDob().toString().isBlank()) {
			errors.rejectValue("dob", "stud.dob.required");
		}
		if(null==student.getCurrentStandard() || student.getCurrentStandard().isBlank()) {
			errors.rejectValue("currentStandard", "stud.currentStandard.required");
		}
		

	}

}
