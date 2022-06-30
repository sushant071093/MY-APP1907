package com.example.demo;

public class ExcelModel {
	private String name;
	private String gender;
	private String nationality;
	private int age;
	public ExcelModel(String name, String gender, String nationality, int age) {
		super();
		this.name = name;
		this.gender = gender;
		this.nationality = nationality;
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

}
