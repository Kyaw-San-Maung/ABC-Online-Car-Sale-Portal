package com.example.Onlinecarsaleportal.daos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Onlinecarsaleportal.entities.User;



@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByUserName(String name);
}
