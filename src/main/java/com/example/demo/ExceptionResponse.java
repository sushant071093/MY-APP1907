package com.example.demo;

import java.util.Date;

public class ExceptionResponse {
	String message;
	Date date;
	public ExceptionResponse(String message, Date date, String description) {
		super();
		this.message = message;
		this.date = date;
		this.description = description;
	}
	String description;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
