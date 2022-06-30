package com.example.demo;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport {
	 public int doStartTag() throws JspException{
		 JspWriter out=pageContext.getOut();
		 try {
		 out.print("helllllllooooo");
		 }
		 catch (Exception e) {
			 System.out.println(e);
			// TODO: handle exception
		}
		 return SKIP_BODY;
	 }
	

}
