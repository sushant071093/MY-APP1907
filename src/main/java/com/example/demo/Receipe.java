package com.example.demo;
import java.util.ArrayList;
import java.util.List;

public class Receipe {
	private int id;
	private String name;
	private String desc;
	private String imgpath;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	Ingredient[] ingre =new Ingredient[50];
	


	
	  public Ingredient[] getIngre() {
		  return ingre; } 
	  public void setIngre(Ingredient[] ingre) {
		  this.ingre = ingre; }
	 
	public Receipe() {
		
	}

	public Receipe(int id, String name, String desc, String imgpath ,Ingredient[] ingre) {
		super();
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.imgpath = imgpath;
		this.ingre = ingre;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	
	

}
