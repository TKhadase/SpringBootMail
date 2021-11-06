package com.tushar.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.security.core.userdetails.UserDetails;

import com.tushar.entity.Student;

public interface StudentRepo extends PagingAndSortingRepository<Student, Integer> {
	
	@Query(" FROM Student  WHERE ENROLLID=:eid OR ROLLID=:rid OR fname=:fname OR  mname=:mname OR   lname=:lname OR  address1=:add1 OR  address2=:add2 OR   mobile=:mob OR   dob=:dob OR    email=:mail")
	public List<Student> searchByDetails(Integer eid,  Integer rid, String fname, String mname, String lname , String add1, String add2, String mob, String dob, String mail);
	
}
