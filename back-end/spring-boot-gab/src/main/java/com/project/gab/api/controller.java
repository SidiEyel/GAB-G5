package com.project.gab.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/api/customer")
public class controller {



    @GetMapping
    public ResponseEntity<String> he(){
        return ResponseEntity.ok(" hello");
    }
}

 