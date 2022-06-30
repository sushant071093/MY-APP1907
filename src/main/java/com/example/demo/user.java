package com.example.demo;

import io.swagger.annotations.ApiModelProperty;

public class user {
	@ApiModelProperty(value="name of the user",name="name",required=true,dataType="String")
	private String user;

	public user(String user) {
		super();
		this.user = user;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "user [user=" + user + "]";
	}
	
	

}
