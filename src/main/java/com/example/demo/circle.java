package com.example.demo;

public class circle {
	private String content;
	private String path;
	private int id;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "circle [content=" + content + ", path=" + path + ", id=" + id + "]";
	}
	

}
