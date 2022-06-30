<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">


.search{
margin-left:15px;
}
.font{
    font-weight:bold;
    font-size:25px;}
    .text {
  padding: 12px 20px;
  margin: 8px 0;
  margin-left:45px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  height:2px;
  width:550px;
}
input[type=submit]{
width:120px;
}
h2{
color : #006666;
margin-left:370px;}
figure{
 box-sizing: content-box;  
  width: 100px;
    border:1px solid black;
    padding-left:10px;
    padding-top:10px;
    padding-right: 10px;
    margin-left: 50px;
    margin-right:50px;
    background-color: #FFFFFF;}
   figcaption{
   
    cursor: pointer;
    text-align:center;
    }
      img{
    height:100px;}
    .column {
  float: left;
  width: 10%;
  padding: 5px;
}

.row::after {
  content: "";
  clear: both;
  display: table;
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

<form:form method="POST"
          action="/search" modelAttribute="UPSC" cssClass="style">
           <tr class="search">
                    <td style="width:250px;"><form:input path="content" placeholder="Search" cssClass="text"/></td>
                    <td><input type="submit" value="Continue"/></td>
                </tr>
          </form:form>
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
    <h2>UPSC SUBJECTS</h2>
    <div class="row">
<div class="column"></div>
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/git10.jpg" style="width:100px">
<figcaption><a href="/upsc/IndianPolity">IndianPolity</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/java.png" style="width:100px">
<figcaption><a href="/upsc/History">History</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/c.jpg" style="width:100px">
<figcaption><a href="/upsc/Geography">Geography</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/spring.jpg" style="width:100px">
<figcaption><a href="/upsc/Economics">Economics</a></figcaption>
</figure>
</div>
</div>


<jsp:include page="likeDislike.jsp" >
<jsp:param name="myVar" value="1"/>
    </jsp:include>  
          </body>
          </html>
         