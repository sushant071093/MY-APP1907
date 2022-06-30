package com.example.demo;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@CrossOrigin(origins="http://localhost:4200")

//@CrossOrigin(origins = "*")
@RestController
public class Testing {
	@GetMapping(path = "/hello")
	public String checking(){
	return "hello hey";
	}
	//@CrossOrigin(origins = "*")
	@GetMapping(path = "/hello-hey")
	public Tester checkingtester(){
	return new Tester ("hello hey11");
	}
	
	

}