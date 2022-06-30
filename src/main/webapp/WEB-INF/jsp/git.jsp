<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
  <a href=/git/<%=request.getAttribute(String.valueOf(j)).toString() %>><%=request.getAttribute(String.valueOf(i)).toString() %></a></li>
  </ul>
  
 <%} %>

</div>
<div class="main">
<% Object path=null;
if(request.getAttribute("path")!=null){
 	  path = request.getAttribute("path");
 	 }
if(path !=null){
if(path.toString().equalsIgnoreCase("about-course")){%>
<h2>About Course</h2>
<p>In this course we are going to learn about GIT i.e from git initialization to add project to your git repository and all.
I will give you an overview how you can add file to a staging area so that git can track your files and what kind of changes you made on this file.
It is so powerfull concept that helps to work in a group at different places and cosolidate all works at a single place.So our strategy to first start with the basics
and go in deep so lets begin with basics. </p>
	
<% }}%>
<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("basic-Terminal-Commands")){%>
<h2>Basic Terminal Commands</h2><br><br>
<h4>pwd(Preset Working Directory)</h4>
<p>By this command we can check currently we are in which directory</p>
<img src="/img/1.png">
<h4>mkdir(Make Directory) and touch</h4>
<p>mkdir command is used to create a directory or folder </p>
<p> touch command is used to create a file inside selected folder</p>
<img src="/img/3.png">
<h4>cd(Change Directory)</h4>
<p>cd command is used to change directory or helps to go inside any directory or inside any folder</p>
<p>cd .. comand is used to move one level up.</p>
<p>cd ~ command is used to navigate to home directory</p>
<img src="/img/4.png">
<h4>ls(Listing Directory)</h4>
<p> ls command is used to list all the content of a particular directory or folder</p>
<p>ls -a command is used to list all hidden files along with the all the files present in the following directory i.e that shows with command ls.</p>
<p>ls -l command is used to provide additional details such as read,write,execute permissions on file and time of creation along with all the files</p>
<img src="/img/5.png">



	
<% }}%>

<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("git-installation")){%>
<h2>Download Git For Windows</h2>
<p>Follow the Steps in order to install git bash into your system.</p>
<p>Browse to the official site of git: <a href="https://git-scm.com/downloads">Click here to Download GIT</a></p>
<p>Click the download link for Windows and allow the download to complete.</p>
<p>Browse to the download location and double click the on the downloaded file and follows the rest.</p>
<% }}%>

<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("Initializing-GIT")){%>
<h2>GIT INIT</h2>
<p>It is very first command that run on git.It is used to create a blank git repository.</p>
<p>We are running git init command in order to create a  a new Git repository as shown in the given following images</p>
<img src="/img/6.png"><br><br>
<p> since we are not added any file to our staging area git are not able to track the changes that we made</p>
<p> on running git status command it will show on which branch we are presently working on and the files details along with untracked files</p>
<p>We can see this in the following images</p>
<img src="/img/7.png"><br><br>
<p>Upto now we are created a blank git repository but we can also create a blank git repository along with new directory</p>
<p>So what we have to do is to use git init newRepository command that creates a directory named newRepository inside this directory new git repository is created</p>
<p>Look at thenimage below to makeit clear</p>
<img src="/img/8.png"> 

<%}} %>

<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("git-add")){%>
<h2>GIT ADD</h2>
<p>Git add is used to add files in your git repository so that what kind of changes made by you is now tracked by your git.</p>
<p>Basically two command are there to add files i.e either add files one by one or add your all files simaltaneously.</p>
<p>1. git add fileName is the git command to add a file named fileName to your git repository</p>
<p>Below picture demonstrate the process</p>
<img src="/img/9.png"><br><br>
<p>2. Now git add . is the git command to add all the files into your git repository simaltaneoulsy.</p>
<p>i.e if you want to add more than one files into your git repository then you go with git add .</p>
<img src ="/img/10.png">



<%}} %>

<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("git-status")){%>
<h2>GIT STATUS</h2>
<p>The git status command is used to displays the state of the working directory.</p>
<p>It allows us to see tracked,untracked files and changes made on which file.</p>
<p>It gives you an idea about the changes that are made by you on which file that needs to be commit if the changes made on the files that are added into your git repository</p>
<p>i.e the files are there in the staging area of your git repository or are tracked by your git</p>
<p>Below images demonstrates the concept</p>
<img src="/img/11.png"><br><br>
<img src="/img/12.png"><br><br>
<p>It will not show any commit records or information.</p>
<p>It is used to displays the state between Git Add and Git commit.</p>
<p>Basically this command is used to check the tracked and untracked files and what files that needs to be commited because of the changes made on that files and are added into the staging area of git repository.</p>
<p>It also tells us currently we are working on which branch.</p>
<%}} %>
<% 
if(path !=null){
if(path.toString().equalsIgnoreCase("git-log")){%>
<h2>GIT LOG</h2>

<%}} %>
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
