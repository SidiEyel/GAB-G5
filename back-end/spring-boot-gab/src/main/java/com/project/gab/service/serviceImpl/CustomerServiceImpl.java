// package com.project.gab.service.serviceImpl;

// import java.util.List;

// import org.springframework.stereotype.Service;
// import org.springframework.transaction.annotation.Transactional;

// import com.project.gab.entity.Customer;
// import com.project.gab.entity.Role;
// import com.project.gab.repo.CustomerRepo;
// import com.project.gab.repo.RoleRepo;
// import com.project.gab.service.CustomerService;

// import lombok.RequiredArgsConstructor;
// import lombok.extern.slf4j.Slf4j;


// @Service
// @RequiredArgsConstructor
// @Transactional
// @Slf4j
// public class CustomerServiceImpl implements CustomerService{


//     // 
//     // private final CustomerRepo customerRepo;
//     // private final RoleRepo roleRepo;

//     // @Override
//     // public Customer saveCustomer(Customer customer) {
//     //     log.info("Enregistre nouveau customer avec success {}", customer.getUsername());
//     //     return customerRepo.save(customer);
//     // }

//     // @Override
//     // public Role saveRole(Role role) {
//     //     //throw new UnsupportedOperationException("Unimplemented method 'saveRole'");
        
//     //     log.info("nouveau role ajouter avec success {}", role.getName());
//     //     return roleRepo.save(role);
//     // }

//     // @Override
//     // public void addRoleToCustomer(String username, String roleName) {
//     //     log.info("Ahouter nouveau role {} to customer {} avec success {}",roleName, username);

//     //     Customer customer = customerRepo.findByUsername(username);
//     //     Role role = roleRepo.findByname(roleName);
//     //     customer.getRoles().add(role);
//     // }

//     // @Override
//     // public Customer getCustomer(String username) {
        
//     //     log.info("Fetching customer {}", username);
//     //     return customerRepo.findByUsername(username);
//     // }

//     // @Override
//     // public List<Customer> getCustomers() {
        
//     //     log.info("Fetching customer");
//     //     return customerRepo.findAll();
//     // }
    
// }
