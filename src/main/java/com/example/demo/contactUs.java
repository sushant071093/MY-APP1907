package com.example.demo;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class contactUs {
@NotNull
@NotEmpty(message = "Name must not be empty")
private String Name;
 
@NotNull
@NotEmpty(message = "Email must not be empty")
@validEmail
private String Email;

@NotNull
@NotEmpty(message = "Query must not be empty")
private String Query;

public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getEmail() {
	return Email;
}
@Override
public String toString() {
	return "contactUs [Name=" + Name + ", Email=" + Email + ", Query=" + Query + "]";
}
public void setEmail(String email) {
	Email = email;
}
public String getQuery() {
	return Query;
}
public void setQuery(String query) {
	Query = query;
}

// done 
}
