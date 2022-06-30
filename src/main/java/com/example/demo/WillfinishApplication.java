package com.example.demo;

import org.slf4j.Logger;

//import org.apache.logging.log4j.Logger;

//import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class WillfinishApplication implements CommandLineRunner {
	@Autowired
	private Springjdbc dao;
	
 private Logger logger = LoggerFactory.getLogger(this.getClass());
	/*
	 * @Override protected SpringApplicationBuilder
	 * configure(SpringApplicationBuilder application) { return
	 * application.sources(SpringBootApplication.class); }
	 */
	public static void main(String[] args) {
		SpringApplication.run(WillfinishApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		logger.info("all details -> {}",dao.fetch());
		logger.info("all details -> {}",dao.validate());
		logger.info("all details -> {}",dao.upsc("Indian"));
		logger.info("all details -> {}",dao.search("Religion"));
		
		
		//dao.fetch();
		// TODO Auto-generated method stub
		
	}

}



