<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.error{
    color: red;
    padding-left:25px;
    }
p,a,img{
padding-left:325px;}
h2{
color : #006666;
padding-left:325px;}
    .error,h5{
    color: red;
    padding-left:25px;
    }
    a{
    text-decoration: none;
    font-size:15px;}
    
    .font{
    font-weight:bold;}
    
    input[type=button],h4{
     padding-left:20px;
    padding-right: 20px;
    margin-left: 450px;
    margin-right:450px;
    }
    .style{
    box-sizing: content-box;  
  width: 250px;
    border:1px solid black;
    padding-left:20px;
    padding-right: 20px;
    margin-left: 450px;
    margin-right:450px;
    background-color: #f2f2f2;
    }
    
    input[type=text],input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
    input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=button]{
background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width:100px;
   box-sizing: content-box;  
  width: 250px;
  height: 38px;
}

input[type=submit]:hover {
  background-color: #45a049;
}


    </style>
    <meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default" style="background-color:#e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
    
     <a class="navbar-brand" href="#">DROPPER</a>
    </div>
    <ul class="nav navbar-nav" >
      <li class="active"><a href="validated">Home</a></li>
     <li><a href="#">Core JAVA</a></li>
     <li><a href="#">Bootstrap</a></li>
      <li><a href="#">SPRING</a></li>
      <li><a href="#">C</a></li>
      <li><a href="#">C++</a></li>
      <li><a href="#">JSP</a></li>
      <li><a href="#">JDBC</a></li>
      <li><a href="#">SQL</a></li>
      <li><a href="#">HTML</a></li>
      <li><a href="#">JAVASCRIPT</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">Leave question</a></li>
      <li><a href="#">Forum</a></li>
      </ul>
    </div>
    </nav>
 <h2> Welcome to our Contact Us center </h2><br><br>
 <%Object name=null;
  if(request.getAttribute("name")!=null){
   	  name = request.getAttribute("name");}
   	  if(name == null){%>
   	  
 <form:form method="POST"
          action="/submission" modelAttribute="contactUs" cssClass="style">
         
          <h3>Contact Us Form</h3>
           <form:errors path="${submit}" cssClass="error"/><br>
          <tr>
                    <td><form:label path="Name" cssClass="font">Name</form:label></td></tr>
                  <tr>  <td style="width:150px;"><form:input path="Name"/></td>
                </tr>
                
                <tr>
                    <td><form:label path="Email" cssClass="font">Email</form:label></td></tr>
                  <tr>  <td style="width:150px;"><form:input path="Email"/></td>
                </tr>
                
                <tr>
                    <td><form:label path="Query" cssClass="font">Query/Question/Suggestion</form:label></td></tr>
                  <tr>  <td style="width:150px;"><form:textarea path="Query" rows="8" cols="30"/></td>
                </tr>
                <tr>
                
                     <td><input type="submit" value="Continue"/></td> 
                 <!--    <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button></td>
                </tr>
                Modal content
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Request is successfully received</h5>
        <button type="button" onclick="location.href='/contactUs'" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>We will come with the resolution asap!!</p>
        <p>click X to raise new concern else EXIT to go back to the front page
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='/validated'" class="btn btn-danger" data-dismiss="modal">EXIT</button>
        <button type="button" onclick="location.href='/validated'"class="btn btn-primary">REMAIN</button>
      </div>
    </div>
  </div>
</div> -->
                <h5>we will contact you shortly!!!</h5>
                <h5>Feel free to reach us until your query resolves.</h5>
          </form:form>
          <%} %>
          <% Object name1=null;
  if(request.getAttribute("name")!=null){
   	  name1 = request.getAttribute("name");}
  if(name1 != null){
   	  if(name1.toString() != null){%>
   	  <h2>Thank you contacting us ${name} </h2>
   	  <img src="/img/emoji.jpg">
   	  <p> Your request is received successfully we will contact you shortly</p>
   	  <p> If any more query is there raise new concern by clicking the link Given below</p>
   	  <a href="contactUs">Contact Us</a>
   	  <%} }%>

</body>
</html>
