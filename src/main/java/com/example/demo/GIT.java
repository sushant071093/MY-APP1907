package com.example.demo;

public class GIT {
private String content;
private int id;
private String path;

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
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
@Override
public String toString() {
	return "GIT [content=" + content + ", id=" + id + ", path=" + path + "]";
}



}
