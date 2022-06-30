package com.example.demo;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.PathProvider;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.VendorExtension;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
	
	//private static final ApiInfo Default_Api_Info = null;
	 public static final Contact DEFAULT_CONTACT = new Contact("Sushant Kumar", "localhost:9888/swagger-ui.html#/", "sushantkumar19apr@gmail.com");
	  public static final ApiInfo DEFAULT_API_INFO = new ApiInfo("Api Documentation", "Api Swag", "1.0", "urn:tos",
	          DEFAULT_CONTACT, "Apache 2.0", "http://www.apache.org/licenses/LICENSE-2.0", new ArrayList<VendorExtension>());

	@Bean
	public Docket api() {
		PathProvider pathProvider=null;
		return new Docket(DocumentationType.SWAGGER_2)
				.apiInfo(DEFAULT_API_INFO)
				.groupName("Version1")
				.pathMapping("/version1")
				.pathProvider(pathProvider)
				;
	}
	@Bean
	public Docket api1() {
		return new Docket(DocumentationType.SWAGGER_2)
				.apiInfo(DEFAULT_API_INFO)
				.groupName("Version2")
				//.pathMapping("/version2")
				;
	}

}
