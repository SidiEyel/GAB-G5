package com.project.gab.service;

import java.util.List;

import com.project.gab.entity.Customer;
import com.project.gab.entity.Role;

public interface CustomerService {
    
    Customer saveCustomer(Customer customer);
    Role saveRole(Role role);
    void addRoleToCustomer(String username, String roleName);
    Customer getCustomer(String username);
    List<Customer>getCustomers();
}
