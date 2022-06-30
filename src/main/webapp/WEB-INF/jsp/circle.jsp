<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.panel-footer{

}
.panel{
margin-top:800px;
height:220px;
color:#32CD32;
}
.panel-body {
background:#6c6d70;
}
.panel-footer.panel-custom {
    background: #99ccff;
    color:#32CD32;
}
.panel-footer.panel-custom a{
color:#FFFFFF;
}

.panel-body a{
color:#FFFFFF;}
.sidenav ul{
padding-top:0px;
line-height:100%;}
body {
  font-family: "Lato", sans-serif;
}
.main h2{
color : #006666;
<!--#663300;-->
}
.navbar-default{
 background-color: #F8F8F8;
    border-color: #E7E7E7;}
    
.sidenav {
  height: 100%;
  width: 263px;
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #FFFFFF;
  overflow-x: hidden;
  padding-top: 20px;
  margin-top:75px;
}

.sidenav a {
  padding: 1px 8px 6px 16px;
  text-decoration: none;
  font-size: 15px;
  color: #000000;
  display: block;
}

.sidenav a:hover {
  color: #000000;
}


.main {
  margin-left: 275px; /* Same as the width of the sidenav */
  font-size: 15px; /* Increased text to enable scrolling */
  padding: 0px 20px;
  
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
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
      <li class="active"><a href="/validated">Home</a></li>
     <li><a href="#">Core JAVA</a></li>
     <li><a href="/conicSection">Conic Section</a></li>
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
<div class="sidenav">

  <% 
    Object total=null;
  String tot=null;
  int j=1000;
    if(request.getAttribute("total")!=null){
   	  total = request.getAttribute("total");
   	tot =  total.toString();
    }
    int k=Integer.parseInt(tot);
    
    for(int i=1;i<k;i++){
    	j=1000+i;
     //out.println(request.getAttribute(String.valueOf(i)).toString()); %>
     <ul style="list-style-type:square">
     <li>
  <a href=/conicSection/<%=request.getAttribute(String.valueOf(j)).toString() %>><%=request.getAttribute(String.valueOf(i)).toString() %></a></li>
  </ul>
  
 <%} %>

</div>
</div>
<div class="main">
</div>
<div class="panel panel-info">
    <div class="panel-body">
    <h4>Our Services</h4>
    <ul>
    <li><h6>Website Development</h6></li>
    <li><h6>Provide Engineering Courses</h6></li>
    <li><h6>Giving Ideas about Stock Market</h6></li>
    <li><h6>IITJEE Courses</h6></li>
    <li><h6>Cooking Tips</h6></li>
    <li><h6>Motivational Tips</h6></li>
    </ul>
    </div>
    
    

    <div class="panel-footer panel-custom" style="color:"#99ccff;">
    <div class="row">
    <div class="col-xs-4">
    <h4>Important Tutorials</h4>
    <ul>
    <li><a href="#">Learn Spring</a></li>
    <li><a href="#">Learn JAVA</a></li>
    <li><a href="#">Learn Data Structure</a></li>
    <li><a href="#">Learn C programming</a></li>
    <li><a href="#">Learn JDBC</a></li>
    <li><a href="#">Learn Bootstrap</a></li>
    <li><a href="#">Learn Networking</a></li>
    </ul>
    </div>
    <div class="col-xs-4">
    <h4>Contact</h4>
    <p>Address:Chandmari Road</p>
    <p> Kankarbagh Patna Bihar</p>
    <p>Contact No: 8709211987</p>
    <a href="contactUs">Contact Us</a><br>
    <a href="#">About Me</a>
    </div>
    <div class="col-xs-4">
    <h4>Follow us</h4>
<a class="social" href="https://www.facebook.com/avenger.sushant">Follow Me on Facebook<img src="/img/fb.png" style="width:50px;height:25px"></a><br>
<a class="social" href="https://twitter.com/imsushant04?s=08">Follow Me on Twitter<span><img src="/img/twitter.png" style="width:40px;height:15px"></span></a><br>
<a class="social" href="https://www.youtube.com/channel/UCAiaOvWDnIuso3XbibLOwgg">Follow Me on Youtube<img src="/img/youtube.png" style="width:50px;height:25px"></a><br>
<a class="social" href=" https://www.instagram.com/sushant071096">Follow Me on Instagram<img src="/img/instagram.jpg" style="width:30px;height:20px"></a><br>
<a class="social" href="https://www.linkedin.com/in/v0ldemort">Follow Me on LinkedIn<img src="/img/linkedIn.png" style="width:50px;height:25px"></a><br>
 </div>
    </div>
    </div>
  </div>
</body>
</html>