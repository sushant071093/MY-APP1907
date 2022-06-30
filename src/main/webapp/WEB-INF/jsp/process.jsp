<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.Springjdbc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="cred" class="com.example.demo.userDetails"></jsp:useBean>

<jsp:setProperty property="*" name="cred" />
<jsp:getProperty property="username" name="cred"/><br> 
<jsp:getProperty property="password" name="cred"/><br> 
<jsp:getProperty property="id" name="cred" /><br>
<%Springjdbc jsdc=new Springjdbc();
try{
	int s=jsdc.set();
}
catch(Exception e){
	System.out.println(e);
	
}
	
	%>

<jsp:getProperty property="username" name="cred"/>
<%= request.getParameter("user")%>

</body>
</html>