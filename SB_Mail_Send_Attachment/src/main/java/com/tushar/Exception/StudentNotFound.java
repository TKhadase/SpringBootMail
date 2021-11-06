package com.tushar.Exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code=HttpStatus.BAD_GATEWAY)
public class StudentNotFound extends RuntimeException {

	public StudentNotFound() {
		super();
	}
	
	public StudentNotFound(String msg) {
		super(msg);
	}
	
}
