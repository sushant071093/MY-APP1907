package com.example.demo;

public class Tester {
	private String message;

	public Tester(String message){
		this.message=message;
	}

	@Override
	public String toString() {
		
		return "tester [message=" + message + "]";
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
