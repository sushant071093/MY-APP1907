package com.example.demo;

public class UPSC {
	private String content;
	private String path;
	private String subject;
	@Override
	public String toString() {
		return "UPSC [content=" + content + ", path=" + path + ", subject=" + subject + "]";
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

}
