package com.tushar.repo;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.tushar.entity.UserDetails;

public interface UserDetailsRepo extends CrudRepository<UserDetails, Integer> {
	
	//public Optional< UserDetails> findByFname(String name);
	
}
