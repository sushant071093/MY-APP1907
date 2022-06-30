<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
    <style type="text/css">
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
    </head>
    <body>
    <h1 style="align-content: center;"> Home Page </h1>
        <h3>Welcome, Enter Details</h3>
        <form:form method="POST"
          action="/validated" modelAttribute="credential" cssClass="style">
          <h3>Login</h3>
         <h5>${message}</h5>
          
             <table>
             
        
             
        
                <tr>
                    <td><form:label path="Email" cssClass="font">Email</form:label></td></tr>
                  <tr>  <td style="width:150px;"><form:input path="Email"/></td>
                </tr>
                
               
                <tr>
                    <td><form:label path="Password" cssClass="font">
                       Password</form:label></td></tr>
                 <tr>   <td><form:password path="Password"/></td>
              </tr>
         <tr>
                    <td><input type="submit" value="Continue"/></td>
                </tr>
                <tr>
                <td><h6>By continuing, you agree to MyPage <a href="#">Conditions of Use.</a></h6></td>
                </tr>
             <tr></tr>
             <tr>
             <td><a href="#">Forget Password</a></td>
            </tr>
             <tr>
              <td><a href="#">Forget Email</a></td>
             </tr>
            </table>
            
        </form:form>
        
        <h4>_________New To MyPage?__________</h4>
        <input type="button"  onclick="location.href='/Registered'" value="Register" >
    </body>
</html>