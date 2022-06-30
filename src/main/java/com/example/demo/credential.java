package com.example.demo;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
@passwordMatcher(first="Password",second="ConfirmPassword",message="Password does not match")
public class credential {
	
	
	@NotNull
	@NotEmpty(message = "FirstName must  not be empty")
	private String FirstName;
	
	
	private String content;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@NotNull
	@NotEmpty(message="LastName must not be empty")
	private String LastName;
	
	
	
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getConfirmPassword() {
		return ConfirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}
	@NotNull
	@NotEmpty(message = "Email must not be empty")
	@validEmail
	private String Email;
	
	
	@NotNull
	@NotEmpty(message = "Password must not be blank")
	@Valid
	@validPassword
	private String Password;
	private String ConfirmPassword;

}
