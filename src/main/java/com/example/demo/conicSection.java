package com.example.demo;

public class conicSection {
	private String content;
	@Override
	public String toString() {
		return "conicSection [content=" + content + ", path=" + path + ", id=" + id + "]";
	}
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
	private String path;
	private int id;

}
	