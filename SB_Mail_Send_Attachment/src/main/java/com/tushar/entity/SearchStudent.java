package com.tushar.entity;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SearchStudent implements Serializable {

	private Integer ENROLLID;
	
	private Integer ROLLID;
	
	private String fname;
	
	private String mname;
	
	private String lname;
	
	private String address1;
	
	private String address2;
	
	private String currentStandard;
	
	private String mobile;

	private String dob;
	
	private String email;

	@Override
	public String toString() {
		return "SearchStudent [ENROLLID=" + ENROLLID + ", ROLLID=" + ROLLID + ", fname=" + fname + ", mname=" + mname
				+ ", lname=" + lname + ", address1=" + address1 + ", address2=" + address2 + ", currentStandard="
				+ currentStandard + ", mobile=" + mobile + ", dob=" + dob + ", email=" + email + "]";
	}
	
}

