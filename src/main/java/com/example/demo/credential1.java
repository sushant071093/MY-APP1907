package com.example.demo;

public class credential1 {
	
	private String FirstName;
	private String LastName;
	private String Email;
	private String Password;
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

	
	
	

	@Override
	public String toString() {
		return "credential1 [FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email + ", Password="
				+ Password + "]";
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}
	
	

}
