<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.panel{
height:220px;
color:#32CD32;
}
.panel-body {
background:#6c6d70;}
.panel-body a{
color:#FFFFFF;}
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
   h2, figcaption{
   
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
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">DROPPER</a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar"> 
    <ul class="nav navbar-nav" id="myTable">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">GIT</a></li>
     <li><a href="#">JAVA</a></li>
      <li><a href="#">SPRING</a></li>
      <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">MORE <span class="caret"></span></a>
      <ul class="dropdown-menu">
    
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
      <li><a href="#">Bootstrap</a></li>
      <li><a href="#">JSP</a></li>
      <li><a href="#">SQL</a></li>
      <li><a href="#">JDBC</a></li>
     
      
    </ul>
    </li>
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
</ul>

    <form class="navbar-form navbar-left" action="/search">
  <div class="input-group">
    <input type="text" id="myInput" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
   
    <% 
    Object name=null;
    if(request.getAttribute("name")!=null){
   	  name = request.getAttribute("name"); 
    }
    if(name!=null){%>
    
    	<ul class="nav navbar-nav navbar-right">
    	<li><a href="Profile"><span class="glyphicon glyphicon-user"></span> ${name}</a></li>
      <li><a href="#" data-toggle="modal" data-target="#exampleModal"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      
    </ul>
  <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button> -->
  <!-- Modal content-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Really Want To Exit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Choose Option X at the top to remain in the current session of choose EXIT to exit your current session</p>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='/login'" class="btn btn-danger" data-dismiss="modal">EXIT</button>
       <!--  <button type="button" onclick="location.href='/validated'"class="btn btn-primary">REMAIN</button> -->
      </div>
    </div>
  </div>
</div>
   <% }%>
    <% 
    Object name1=null;
     if(request.getAttribute("name")!=null){
    	  name1 = request.getAttribute("name"); 
     }
    if(name1 == null) {%>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Registered"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    <%} %>
    </div>
  </div>
</nav>
<div class="row">
<h2>About IT Technology</h2>
</div>
<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/git10.jpg" style="width:100px">
<figcaption><a href="git">GIT</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/java.png" style="width:100px">
<figcaption><a href="#">JAVA</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/c.jpg" style="width:100px">
<figcaption><a href="#">C</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/spring.jpg" style="width:100px">
<figcaption><a href="#">SPRING</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/jdbc.jpg" style="width:100px">
<figcaption><a href="#">JDBC</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/dbms.jpg" style="width:100px" >
<figcaption><a href="#">DBMS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/bootstrap.jpg" style="width:100px" >
<figcaption><a href="#">BOOTSTRAP</a></figcaption>
</figure>
</div>


</div>



<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/ds.jpg" style="width:100px" >
<figcaption><a href="#">DS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/html.jpg" style="width:100px" >
<figcaption><a href="#">HTML</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/css.jpg" style="width:100px" >
<figcaption><a href="#">CSS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/js.jpg" style="width:100px" >
<figcaption><a href="#">JS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/json.jpg" style="width:100px" >
<figcaption><a href="#">JSON</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/jsp.jpg" style="width:100px" >
<figcaption><a href="#">JSP</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/C++.jpg" style="width:100px" >
<figcaption><a href="#">C++</a></figcaption>
</figure>
</div>
</div>
<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/sql.jpg" style="width:100px" >
<figcaption><a href="#">SQL</a></figcaption>
</figure>
</div>
</div>

<div class="row">
<h2>About Engineering Courses</h2>
</div>
<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/automta.jpg" style="width:100px" >
<figcaption><a href="#">FINITE AUTOMATA</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/compiler design.jpg" style="width:100px" >
<figcaption><a href="#">COMPILER DESIGN</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/digital electronics.jpg" style="width:100px" >
<figcaption><a href="#">DIGITAL ELECTRONICS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/networking.jpg" style="width:100px" >
<figcaption><a href="#">COMPUTER NETWORKING</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/os.jpg" style="width:100px" >
<figcaption><a href="#">OPERATING SYSTEM</a></figcaption>
</figure>
</div>
</div>

<div class="row">
<h2>About IIT JEE COURSES</h2>
</div>
<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/straightLine.jpg" style="width:100px" >
<figcaption><a href="#">STRAIGHT LINE</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/Diffrentiation.jpg" style="width:100px" >
<figcaption><a href="#">DIFFRENTIAL CALCULUS</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/ConicSection.jpg" style="width:100px" >
<figcaption><a href="/conicSection">CONIC SECTION</a></figcaption>
</figure>
</div>
<div class="column">
<figure>
<img src="/img/Integraton.jpg" style="width:100px" >
<figcaption><a href="#">INTEGRAL CALCULUS</a></figcaption>
</figure>
</div>
</div>
<div class="row">
<h2>About UPSC COURSES</h2>
</div>
<div class="row">
<div class="column"></div>
<div class="column">
<figure>
<img src="/img/ConicSection.jpg" style="width:100px" >
<figcaption><a href="/upscSubject">UPSC</a></figcaption>
</figure>
</div>
</div>

<div class="media">
    <div class="media-left">
      <img src="/img/sushant1.jpeg" class="media-object" style="width:100px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">About Author</h4>
      <p>Sushant Kumar working in an IT company comes with an idea of creating a content based web pages that gives you an idea of how actually people works in an IT company and what kind of problem theey faced and how they solve their problems.</p>
    </div>
  </div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="/img/git5.jpg" alt="git4">
      <div class="carousel-caption">
        <h3>git</h3>
        <p>we will do so much fun!</p>
      </div>
    </div>

    <div class="item">
      <img src="/img/git6.png" alt="git3">
      <div class="carousel-caption">
        <h3>GIT</h3>
        <p>Thank you, Git!</p>
      </div>
    </div>

    <div class="item">
      <img src="/img/git7.jpg" alt="git2">
      <div class="carousel-caption">
        <h3>GIT</h3>
        <p>We love the GIT functionality!</p>
      </div>
    </div>
    <div class="item">
      <img src="/img/git8.png" alt="git1">
      <div class="carousel-caption">
        <h3>Git</h3>
        <p>We love its concept!</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
<h2>welcome</h2>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-primary">
    <div class="panel-body">
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
    <a href="#">Contact Us</a><br>
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

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable *").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<script>
$(document).ready(function(){
    $('[ href="#home"]').popover();   
});
</script>
</body>
</html>