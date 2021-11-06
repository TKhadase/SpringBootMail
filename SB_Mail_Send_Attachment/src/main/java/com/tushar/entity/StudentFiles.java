package com.tushar.entity;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class StudentFiles implements Serializable {
	private String eid;
	private MultipartFile photo;
	private MultipartFile resume;
	
}
