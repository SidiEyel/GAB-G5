package com.project.gab.repo;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.gab.entity.Customer;

public interface CustomerRepo  extends JpaRepository<Customer, Integer>{
    
    Optional<Customer> findByEmail(String email);
}
